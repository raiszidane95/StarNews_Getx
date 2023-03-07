// To parse this JSON data, do
//
//     final detailArticlesModel = detailArticlesModelFromJson(jsonString);

import 'dart:convert';

DetailArticlesModel detailArticlesModelFromJson(String str) =>
    DetailArticlesModel.fromJson(json.decode(str));

String detailArticlesModelToJson(DetailArticlesModel data) => json.encode(data.toJson());

class DetailArticlesModel {
  DetailArticlesModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  int? userId;
  int? id;
  String? title;
  String? body;

  factory DetailArticlesModel.fromJson(Map<String, dynamic> json) => DetailArticlesModel(
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
