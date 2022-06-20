// To parse this JSON data, do
//
//     final searchFilterModel = searchFilterModelFromJson(jsonString);

import 'dart:convert';

SearchFilterModel searchFilterModelFromJson(String str) =>
    SearchFilterModel.fromJson(json.decode(str));

String searchFilterModelToJson(SearchFilterModel data) =>
    json.encode(data.toJson());

class SearchFilterModel {
  SearchFilterModel({
    required this.title,
    required this.key,
  });

  String title;
  String key;

  factory SearchFilterModel.fromJson(Map<String, dynamic> json) =>
      SearchFilterModel(
        title: json["title"],
        key: json["key"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "key": key,
      };
}
