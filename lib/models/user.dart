import 'dart:io';

class UserModel {
  String id, name, email, phoneNumber, bloodType;
  DateTime birthDate, updatedAt;
  String width, height;
  String avater, token, password, gender;
  File image;
  UserModel(
      {this.id,
      this.name,
      this.email,
      this.phoneNumber,
      this.bloodType,
      this.birthDate,
      this.updatedAt,
      this.width,
      this.height,
      this.avater,
      this.token,
      this.gender,
      this.password,
      this.image});
}
