// To parse this JSON data, do
//
//     final food = foodFromJson(jsonString);

import 'dart:convert';

List<Food> foodFromJson(String str) =>
    List<Food>.from(json.decode(str).map((x) => Food.fromJson(x)));

String foodToJson(List<Food> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Food {
  Food({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.name,
    required this.details,
    required this.price,
    required this.image,
    required this.catId,
  });

  String id;
  DateTime createdAt;
  DateTime updatedAt;
  dynamic deletedAt;
  String name;
  String details;
  String price;
  String image;
  int catId;

  factory Food.fromJson(Map<String, dynamic> json) => Food(
        id: json["id"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        deletedAt: json["deletedAt"],
        name: json["name"],
        details: json["details"],
        price: json["price"],
        image: json["image"],
        catId: json["catId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "deletedAt": deletedAt,
        "name": name,
        "details": details,
        "price": price,
        "image": image,
        "catId": catId,
      };
}
