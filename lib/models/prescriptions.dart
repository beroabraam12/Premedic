import 'package:premedic/models/medicines.dart';

class PrescriptionsModel {
  String id, doctorId, doctorName, description;
  DateTime startDate, endDate;
  bool isFinished;
  List<MedicinesModel> medicines;

  PrescriptionsModel({
    this.id,
    this.doctorId,
    this.doctorName,
    this.description,
    this.startDate,
    this.endDate,
    this.isFinished,
    this.medicines,
  });
}
