// To parse this JSON data, do
//
//     final doctorModel = doctorModelFromJson(jsonString);

import 'dart:convert';

DoctorModel doctorModelFromJson(String str) =>
    DoctorModel.fromJson(json.decode(str));

String doctorModelToJson(DoctorModel data) => json.encode(data.toJson());

class DoctorModel {
  DoctorModel({
    required this.name,
    required this.image,
    required this.clinicAddress,
    required this.details,
    required this.specialities,
  });

  String name;
  String image;
  String clinicAddress;
  String details;
  List<String> specialities;

  factory DoctorModel.fromJson(Map<String, dynamic> json) => DoctorModel(
        name: json["name"],
        image: json["image"],
        clinicAddress: json["clinic_address"],
        details: json["details"],
        specialities: List<String>.from(json["specialities"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "image": image,
        "clinic_address": clinicAddress,
        "details": details,
        "specialities": List<dynamic>.from(specialities.map((x) => x)),
      };
}
