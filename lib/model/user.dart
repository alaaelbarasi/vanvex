// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  UserModel({
    required this.id,
    required this.name,
    required this.password,

    required this.storeId,
    required this.phone,
    required this.email,
    required this.city,
  });

  int id;
  String name;
  String password;

  String storeId;
  String phone;
  String email;
  String city;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        password: json["password"] == null ? null : json["password"],
       
        storeId: json["storeId"] == null ? null : json["storeId"],
        phone: json["phone"] == null ? null : json["phone"],
        email: json["email"] == null ? null : json["email"],
        city: json["city"] == null ? null : json["city"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "password": password == null ? null : password,
       
        "storeId": storeId == null ? null : storeId,
        "phone": phone == null ? null : phone,
        "email": email == null ? null : email,
        "city": city == null ? null : city,
      };
}
