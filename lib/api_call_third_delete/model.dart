// To parse this JSON data, do
//
//     final pullApiData = pullApiDataFromJson(jsonString);

import 'dart:convert';

List<PullApiData> pullApiDataFromJson(String str) => List<PullApiData>.from(json.decode(str).map((x) => PullApiData.fromJson(x)));

String pullApiDataToJson(List<PullApiData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class PullApiData {
  int userId;
  int id;
  String title;
  String body;

  PullApiData({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  PullApiData copyWith({
    int? userId,
    int? id,
    String? title,
    String? body,
  }) =>
      PullApiData(
        userId: userId ?? this.userId,
        id: id ?? this.id,
        title: title ?? this.title,
        body: body ?? this.body,
      );

  factory PullApiData.fromJson(Map<String, dynamic> json) => PullApiData(
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
