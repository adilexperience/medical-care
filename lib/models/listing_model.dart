// To parse this JSON data, do
//
//     final listingModel = listingModelFromJson(jsonString);

import 'dart:convert';

import 'disease_model.dart';
import 'doctor_model.dart';
import 'medicine_model.dart';

ListingModel listingModelFromJson(String str) =>
    ListingModel.fromJson(json.decode(str));

String listingModelToJson(ListingModel data) => json.encode(data.toJson());

class ListingModel {
  ListingModel({
    required this.isMedicine,
    required this.isDisease,
    required this.isDoctor,
    this.medicine,
    this.disease,
    this.doctors,
    required this.tags,
  });

  bool isMedicine;
  bool isDisease;
  bool isDoctor;
  MedicineModel? medicine;
  DiseaseModel? disease;
  DoctorModel? doctors;
  List<String> tags;

  factory ListingModel.fromJson(Map<String, dynamic> json) => ListingModel(
        isMedicine: json["is_medicine"],
        isDisease: json["is_disease"],
        isDoctor: json["is_doctor"],
        medicine: json["medicine"] == null
            ? null
            : MedicineModel.fromJson(json["medicine"]),
        disease: json["disease"] == null
            ? null
            : DiseaseModel.fromJson(json["disease"]),
        doctors: json["doctors"] == null
            ? null
            : DoctorModel.fromJson(json["doctors"]),
        tags: List<String>.from(json["tags"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "is_medicine": isMedicine,
        "is_disease": isDisease,
        "is_doctor": isDoctor,
        "medicine": medicine == null ? null : medicine!.toJson(),
        "disease": disease == null ? null : disease!.toJson(),
        "doctors": doctors == null ? null : doctors!.toJson(),
        "tags": List<String>.from(tags.map((x) => x)),
      };
}
