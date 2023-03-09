// To parse this JSON data, do
//
//     final detailNewsModel = detailNewsModelFromJson(jsonString);

import 'dart:convert';

DetailNewsModel detailNewsModelFromJson(String str) =>
    DetailNewsModel.fromJson(json.decode(str));

String detailNewsModelToJson(DetailNewsModel data) =>
    json.encode(data.toJson());

class DetailNewsModel {
  DetailNewsModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  final int? userId;
  final int? id;
  final String? title;
  final String? body;

  factory DetailNewsModel.fromJson(Map<String, dynamic> json) =>
      DetailNewsModel(
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
