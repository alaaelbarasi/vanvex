// To parse this JSON data, do
//
//     final storeModel = storeModelFromJson(jsonString);

import 'dart:convert';

StoreModel storeModelFromJson(String str) => StoreModel.fromJson(json.decode(str));

String storeModelToJson(StoreModel data) => json.encode(data.toJson());

class StoreModel {
    StoreModel({
       required this.id,
       required this.name,
       required this.address,
       required this.email,
       required this.phone,
    });

    int id;
    String name;
    String address;
    String email;
    String phone;

    factory StoreModel.fromJson(Map<String, dynamic> json) => StoreModel(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
        address: json["address"] == null ? null : json["address"],
        email: json["email"] == null ? null : json["email"],
        phone: json["phone"] == null ? null : json["phone"],
    );

    Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "address": address == null ? null : address,
        "email": email == null ? null : email,
        "phone": phone == null ? null : phone,
    };
}
