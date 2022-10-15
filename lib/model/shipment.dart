// To parse this JSON data, do
//
//     final shipmentModel = shipmentModelFromJson(jsonString);

import 'dart:convert';

ShipmentModel shipmentModelFromJson(String str) =>
    ShipmentModel.fromJson(json.decode(str));

String shipmentModelToJson(ShipmentModel data) => json.encode(data.toJson());

class ShipmentModel {
  ShipmentModel({
    required this.id,
    required this.code,
    required this.desc,
    required this.numberOfItems,
    required this.state,
    required this.price,
    required this.paymentMethod,
    required this.paymentOn,
    required this.customerName,
    required this.customerPhone,
    required this.customerAddress,
    required this.customerCity,
    required this.lng,
    required this.lat,
    required this.storeId,
  });

  int id;
  String code;
  String desc;
  int numberOfItems;
  String state;
  int price;
  String paymentMethod;
  String paymentOn;
  String customerName;
  String customerPhone;
  String customerAddress;
  String customerCity;
  double lng;
  double lat;
  String storeId;

  factory ShipmentModel.fromJson(Map<String, dynamic> json) => ShipmentModel(
        id: json["id"] == null ? null : json["id"],
        code: json["code"] == null ? null : json["code"],
        desc: json["desc"] == null ? null : json["desc"],
        numberOfItems:
            json["numberOfItems"] == null ? null : json["numberOfItems"],
        state: json["state"] == null ? null : json["state"],
        price: json["price"] == null ? null : json["price"],
        paymentMethod:
            json["paymentMethod"] == null ? null : json["paymentMethod"],
        paymentOn: json["paymentOn"] == null ? null : json["paymentOn"],
        customerName:
            json["customer_name"] == null ? null : json["customer_name"],
        customerPhone:
            json["customer_phone"] == null ? null : json["customer_phone"],
        customerAddress:
            json["customer_address"] == null ? null : json["customer_address"],
        customerCity:
            json["customer_city"] == null ? null : json["customer_city"],
        lng: json["lng"] == null ? null : json["lng"].toDouble(),
        lat: json["lat"] == null ? null : json["lat"].toDouble(),
        storeId: json["storeId"] == null ? null : json["storeId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "code": code == null ? null : code,
        "desc": desc == null ? null : desc,
        "numberOfItems": numberOfItems == null ? null : numberOfItems,
        "state": state == null ? null : state,
        "price": price == null ? null : price,
        "paymentMethod": paymentMethod == null ? null : paymentMethod,
        "paymentOn": paymentOn == null ? null : paymentOn,
        "customer_name": customerName == null ? null : customerName,
        "customer_phone": customerPhone == null ? null : customerPhone,
        "customer_address": customerAddress == null ? null : customerAddress,
        "customer_city": customerCity == null ? null : customerCity,
        "lng": lng == null ? null : lng,
        "lat": lat == null ? null : lat,
        "storeId": storeId == null ? null : storeId,
      };
}
