import 'package:vanvex/model/store.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class StoreApi {
  final storeUrl = "http://10.0.2.2:3000/stores";
  // get all stores
  Future getStores() async {
    List<StoreModel> stores = [];
    final response = await http.get(Uri.parse(storeUrl));
    if (response.statusCode == 200) {
      for (final element in stores) {
        stores.add(storeModelFromJson(response.body));
      } // from json
    }
    return stores;
  }

  // get all store by id
  Future getStoreById({required storeId}) async {
    StoreModel? store;
    final response =
        await http.get(Uri.parse(storeUrl + "/" + storeId.toString()));
    // print(response.body);

    if (response.statusCode == 200) {
      print(response.body);
      store = storeModelFromJson(response.body);
    }
    return store;
  }

  //post
  Future<bool> addStore(
      {required name, required address, required email, required phone}) async {
    final data = {
      "name": name.toString(),
      "address": address.toString(),
      "email": email.toString(),
      "phone": phone.toString(),
    };
    final response = await http.post(Uri.parse(storeUrl),
        body: jsonEncode(data), headers: {'Content-type': 'application/json'});
    if (response.statusCode == 201) {
      return true;
    }
    return false;
  }

  //update
  Future<bool> updateStore(
      {required storeID,
      required storeLabel,
      required address,
      required phone,
      required email,
      required owner}) async {
    final data = {
      "name": storeLabel.toString(),
      "address": address.toString(),
      "email": email.toString(),
      "phone": phone.toString(),
    };
    final response = await http.patch(
      Uri.parse(storeUrl + "/" + storeID.toString()),
      body: jsonEncode(data),
      headers: {'Content-type': 'application/json'},
    );
    if (response.statusCode == 200) {
      return response.body.isNotEmpty;
    }
    return false;
  }
}
