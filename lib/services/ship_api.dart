import 'package:http/http.dart' as http;
import 'dart:convert';

import '../model/shipment.dart';

class ShipApi {
  final shipUrl = "http://10.0.2.2:3000/shipments";

  // get all ships
  Future getShippment() async {
    List<ShipmentModel> shipList = [];
    final response = await http.get(Uri.parse(shipUrl));
    if (response.statusCode != 200) {
      return null;
    }
    final jsonBody = json.decode(response.body);
    final List list = jsonBody;

    for (final element in list) {
      shipList.add(ShipmentModel.fromJson(element));
      // print(shipList);
    }
    return shipList;
  }

  // get all ship by id

  Future<ShipmentModel?> getShipById({required shipId}) async {
    ShipmentModel? ship;
    final response = await http.get(Uri.parse(shipUrl + "/" + shipId));
    if (response.statusCode == 200) {
      ship = shipmentModelFromJson(response.body);
      // fromJson goes here
      return ship;
    }
    return null;
  }

  //post
  Future<bool> addShip(
      {required des,
      required code,
      required noOfItem,
      required shipPrice,
      required paymentMethod,
      required costOn,
      required custemerName,
      required custmerPhone,
      required customerAdrees,
      required customerCity}) async {
    final data = {
      "desc": des,
      "code": code,
      "numberOfItems": noOfItem,
      "state": "Recieved",
      "price": shipPrice,
      "paymentMethod": paymentMethod,
      "paymentOn": costOn,
      "customer_name": custemerName,
      "customer_phone": custmerPhone,
      "customer_address": customerAdrees,
      "customer_city": customerCity,
      "lng": 13.1913,
      "lat": 32.8872,
      "storeId": "1"
    };

    final response = await http.post(Uri.parse(shipUrl),
        body: jsonEncode(data), headers: {'Content-type': 'application/json'});
    if (response.statusCode == 201) {
      return true;
    }

    return false;
  }

  //delete
  Future<bool> deleteShipment({required shipId}) async {
    final response =
        await http.delete(Uri.parse(shipUrl + "/" + shipId.toString()));
    if (response.statusCode == 200) {
      return true;
    }
    return false;
  }
}
