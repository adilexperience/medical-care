// To parse this JSON data, do
//
//     final medicineModel = medicineModelFromJson(jsonString);
import 'dart:convert';

MedicineModel medicineModelFromJson(String str) =>
    MedicineModel.fromJson(json.decode(str));

String medicineModelToJson(MedicineModel data) => json.encode(data.toJson());

class MedicineModel {
  MedicineModel({
    required this.title,
    required this.image,
    required this.description,
  });

  String title;
  String image;
  String description;

  factory MedicineModel.fromJson(Map<String, dynamic> json) => MedicineModel(
        title: json["title"],
        image: json["image"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "image": image,
        "description": description,
      };
}
