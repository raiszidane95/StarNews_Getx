// To parse this JSON data, do
//
//     final articlesModel = articlesModelFromJson(jsonString);

import 'dart:convert';

List<ArticlesModel> articlesModelFromJson(String str) =>
    List<ArticlesModel>.from(json.decode(str).map((x) => ArticlesModel.fromJson(x)));

String articlesModelToJson(List<ArticlesModel> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ArticlesModel {
  ArticlesModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  int userId;
  int id;
  String title;
  String body;

  factory ArticlesModel.fromJson(Map<String, dynamic> json) => ArticlesModel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "id": id,
        "title": title,
        "body": body,
      };
}
