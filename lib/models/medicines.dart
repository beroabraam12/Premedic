class MedicinesModel {
  String id, name, image;
  bool selected;
  int dose;
  MedicinesModel({
    this.id,
    this.name,
    this.image,
    this.selected = false,
    this.dose = 0,
  });
}
