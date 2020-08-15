import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http_parser/http_parser.dart';
import 'package:premedic/components/Register/registercard.dart';
import 'package:premedic/models/diseases.dart';
import 'package:premedic/models/medicines.dart';
import 'package:premedic/models/user.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class User with ChangeNotifier {
  static final url = "http://192.168.1.109:8000";
  UserModel user;
  String phone, password, errorMessage = "", userToken;
  bool isLogin = false;
  Gender updatedGender;
  List<DiseasesModel> _diseases = [];
  List<MedicinesModel> _medicines = [];
  void changeUserData(userData) {
    user = userData;
    notifyListeners();
  }

  List<DiseasesModel> get diseases {
    return _diseases;
  }

  List<MedicinesModel> get medicines {
    return _medicines;
  }

  Future<bool> register(UserModel user) async {
    errorMessage = "";
    final imageUploadRequest =
        http.MultipartRequest('POST', Uri.parse("$url/api/user-register"));
    imageUploadRequest.files.add(
      await http.MultipartFile.fromPath(
        'avatar',
        user.image.path,
        contentType: MediaType('application', 'x-tar'),
      ),
    );
    imageUploadRequest.headers['Accept'] = "application/json";
    imageUploadRequest.fields['full_name'] = user.name;
    imageUploadRequest.fields['email'] = user.email;
    imageUploadRequest.fields['password'] = user.password;
    imageUploadRequest.fields['password_confirmation'] = user.password;
    imageUploadRequest.fields['phone_number'] = user.phoneNumber;
    imageUploadRequest.fields['birthdate'] = user.birthDate.toString();
    imageUploadRequest.fields['gender'] = user.gender;
    try {
      final streamedResponse = await imageUploadRequest.send();

      final response = await http.Response.fromStream(streamedResponse);

      final responseData = json.decode(response.body) as Map<String, dynamic>;
      print(responseData);
      if (response.statusCode == 200 || response.statusCode == 201) {
        getData();
        errorMessage += "";
        return true;
      } else if (response.statusCode == 401 || response.statusCode == 400) {
        if (responseData.containsKey("email")) {
          errorMessage += "";
        }
        if (responseData.containsKey("phone")) {
          errorMessage += "";
        }
        return false;
      }
    } catch (error) {
      print(error);
      errorMessage += "";
      return false;
    }
    return true;
  }

  void checkLoginState() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    userToken = prefs.getString('token');

    if (userToken != null) {
      isLogin = true;
      notifyListeners();
      await getData();
    } else {
      return;
    }
  }

  Future<bool> login() async {
    errorMessage = "";
    Map<String, dynamic> loginData = {
      "phone_number": phone,
      "password": password,
    };
    try {
      final response = await http.post(
        "$url/api/user-login",
        body: json.encode(loginData),
        headers: {'Content-Type': 'application/json'},
      ).timeout(
        const Duration(seconds: 30),
      );
      print(response.body);

      final Map<String, dynamic> responseData = json.decode(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        if (responseData.containsKey('access_token')) {
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          prefs.setString('token', responseData['access_token']);
          userToken = responseData['access_token'];
          await getData();
          return true;
        }
      } else if (response.statusCode == 401 || response.statusCode == 400) {
        // errorMessage = '${AppLocalizations.of(context).emailPassWrong}\n';
        return false;
      } else {
        //  errorMessage += "${AppLocalizations.of(context).somethingWrong}\n";
        return false;
      }
    } catch (e) {
      print(e);
      return false;
    }
    return false;
  }

  Future<void> getData() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    userToken = prefs.getString('token');
    if (userToken != null) {
      try {
        final response = await http.get(
          "$url/api/user/info",
          headers: {
            "Authorization": "Bearer $userToken",
            'Content-Type': 'application/json',
          },
        ).timeout(Duration(seconds: 20));
        final Map<String, dynamic> responseData =
            json.decode(response.body)["data"][0];
        if (response.statusCode == 200 || response.statusCode == 201) {
          var userData = responseData;
          user = UserModel(
            id: userData["id"].toString(),
            name: userData["full_name"],
            email: userData['email'],
            phoneNumber: userData['phone_number'],
            gender: userData['gender'],
            avater: "${userData['avatar']}",
            birthDate: DateTime.parse(userData['birthdate'].toString()),
            updatedAt: DateTime.parse(userData['updated_at'].toString()),
            bloodType: userData['blood_type'],
            height: userData['height'],
            width: userData['weight'],
          );
          updatedGender =
              user.gender.toLowerCase() == "male" ? Gender.Male : Gender.Female;
          List<DiseasesModel> list = [];
          List<dynamic> a = userData['chronic_diseases'];
          a.forEach((element) {
            list.add(
              DiseasesModel(
                id: element["chronic_diseases_id"].toString(),
                name: element['chronic_diseases_name_en'],
                imgUrl: element['image'],
              ),
            );
          });
          _diseases = list;
          List<MedicinesModel> list2 = [];
          List<dynamic> ab = userData['medicines'];
          ab.forEach((element) {
            list2.add(
              MedicinesModel(
                id: element["medicine_id"].toString(),
                name: element['medicine_name_en'],
                image: element['medicine_image'],
              ),
            );
          });
          _medicines = list2;
          print(a);
          notifyListeners();
        } else if (response.statusCode == 500 ||
            response.statusCode == 400 ||
            response.statusCode == 401) {
          errorMessage += "\n";
          return false;
        }
      } catch (e) {
        errorMessage += "\n";
        print(e);
        return false;
      }
    }
    return true;
  }
}
