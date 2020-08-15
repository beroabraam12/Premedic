import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:premedic/models/diseases.dart';
import 'package:premedic/models/medicines.dart';
import 'package:premedic/models/prescriptions.dart';
import 'package:premedic/models/user.dart';
import 'package:premedic/provider/user.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Medical with ChangeNotifier {
  final url = User.url;
  List<MedicinesModel> _medicines = [];
  List<DiseasesModel> _diseases = [];
  List<PrescriptionsModel> _prescriptions = [];

  List<MedicinesModel> get medicines {
    return _medicines;
  }

  List<DiseasesModel> get diseases {
    return _diseases;
  }

  List<PrescriptionsModel> get prescriptions {
    return _prescriptions;
  }

  Future<void> edit(
      {DateTime birthdate,
      String bloodType,
      String height,
      String weight,
      context}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final change = Provider.of<User>(context, listen: false).changeUserData;

    final token = prefs.getString('token');
    final editUrl = "$url/api/user/update-user";
    final Map<String, dynamic> editData = {};
    if (birthdate != null) {
      editData.putIfAbsent("birthdate", () => birthdate.toString());
    }
    if (bloodType != null) {
      editData.putIfAbsent("blood_type", () => bloodType.toString());
    }
    if (height != null) {
      editData.putIfAbsent("height", () => height.toString());
    }
    if (weight != null) {
      editData.putIfAbsent("weight", () => weight.toString());
    }
    print(json.encode(editData));
    final response = await http.post(
      editUrl,
      body: json.encode(editData),
      headers: {
        "Authorization": "Bearer $token",
        'Content-Type': 'application/json',
      },
    );

    final responseData = json.decode(response.body)["data"];
    print(responseData);
    if (response.statusCode == 200 || response.statusCode == 201) {
      var userData = responseData;
      final user = UserModel(
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
      change(user);
    }
  }

  Future<bool> getChronicAndMedicine(context) async {
    final getUrl = "$url/api/user/midicine-with-chronic-disease";
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final diss = Provider.of<User>(context, listen: false).diseases;
    final medd = Provider.of<User>(context, listen: false).medicines;
    final token = prefs.getString('token');
    final response = await http.get(getUrl, headers: {
      "Authorization": "Bearer $token",
      'Content-Type': 'application/json',
    });
    List<dynamic> disData = json.decode(response.body)["chronic-disease"];
    List<DiseasesModel> dis = [];
    disData.forEach((element) {
      bool sel = false;
      diss.forEach((elementt) {
        if (elementt.id == element["id"].toString()) {
          sel = true;
        }
      });

      dis.add(DiseasesModel(
        id: element["id"].toString(),
        name: element["chronic_diseases_name_en"],
        selected: sel,
      ));
    });
    _diseases = dis;
    List<dynamic> medData = json.decode(response.body)["midicine"];
    List<MedicinesModel> med = [];
    medData.forEach((element) {
      bool sel = false;
      medd.forEach((elementt) {
        if (elementt.id == element["id"].toString()) {
          sel = true;
        }
      });
      med.add(MedicinesModel(
        id: element["id"].toString(),
        name: element["medicine_name_en"],
        selected: sel,
      ));
    });
    _medicines = med;
    notifyListeners();
    return true;
  }

  Future<void> submitDiseases(context) async {
    final submitUrl = "$url/api/user/user-chronic-disease";
    List<Map<String, dynamic>> d = [];
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    _diseases.forEach(
      (element) {
        if (element.selected) {
          d.add({"chronic_diseases_id": element.id});
        }
      },
    );
    final Map<String, dynamic> form = {"chronic_diseases": d};
    final response =
        await http.post(submitUrl, body: json.encode(form), headers: {
      "Authorization": "Bearer $token",
      'Content-Type': 'application/json',
    });
    print(response.body);
    Provider.of<User>(context, listen: false).getData();
    Navigator.of(context).pop();
  }

  Future<void> submitMedicines(context) async {
    final submitUrl = "$url/api/user/user-medicine";
    List<Map<String, dynamic>> d = [];
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    _medicines.forEach(
      (element) {
        if (element.selected) {
          d.add({"medicine_id": element.id});
        }
      },
    );
    final Map<String, dynamic> form = {"medicines": d};
    final response =
        await http.post(submitUrl, body: json.encode(form), headers: {
      "Authorization": "Bearer $token",
      'Content-Type': 'application/json',
    });
    print(response.body);
    Provider.of<User>(context, listen: false).getData();
    Navigator.of(context).pop();
  }

  Future<void> getPerception() async {
    final getPerceptionUrl = "$url/api/user/perception";
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');

    final response = await http.get(getPerceptionUrl, headers: {
      "Authorization": "Bearer $token",
      'Content-Type': 'application/json',
    });
    List<dynamic> responseData = json.decode(response.body)["data"];
    List<PrescriptionsModel> ps = [];
    responseData.forEach((element) {
      List<MedicinesModel> md = [];
      List<dynamic> medData = element["perception_rows"];
      medData.forEach((element) {
        md.add(MedicinesModel(
          id: element['medicine_id'].toString(),
          image: element['medicine_image'],
          name: element["medicine_name_en"],
          dose: int.parse(element["dose"]),
        ));
      });
      ps.add(PrescriptionsModel(
        id: element["id"].toString(),
        doctorId: element["doctor_id"].toString(),
        doctorName: element["doctor_name"],
        description: element["description"],
        startDate: DateTime.parse(element["start_date"]),
        endDate: DateTime.parse(element["end_date"]),
        isFinished: element["is_finished"].toString() == "1",
        medicines: md,
      ));
    });
    _prescriptions = ps;
    notifyListeners();
    print(_prescriptions.length);
  }
}
