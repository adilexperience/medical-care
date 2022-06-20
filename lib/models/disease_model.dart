// To parse this JSON data, do
//
//     final diseaseModel = diseaseModelFromJson(jsonString);
import 'dart:convert';

DiseaseModel diseaseModelFromJson(String str) =>
    DiseaseModel.fromJson(json.decode(str));

String diseaseModelToJson(DiseaseModel data) => json.encode(data.toJson());

class DiseaseModel {
  DiseaseModel({
    required this.title,
    required this.description,
  });

  String title;
  String description;

  factory DiseaseModel.fromJson(Map<String, dynamic> json) => DiseaseModel(
        title: json["title"],
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "description": description,
      };
}
