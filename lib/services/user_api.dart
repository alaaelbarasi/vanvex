import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:vanvex/model/user.dart';

class UserApi {
  final userUrl = "http://10.0.2.2:3000/users";
// 10.0.2.2:
  // get all users
  Future getUsers() async {
    List<UserModel> users = [];
    final response = await http.get(Uri.parse(userUrl));
    if (response.statusCode == 200) {
      users = json.decode(response.body);
      //from json
    }

    return users;
  }

  Future getUserById({required userId}) async {
    UserModel? user;
    final response =
        await http.get(Uri.parse(userUrl + "/" + userId.toString()));

    if (response.statusCode == 200) {
      print(response.body);
      user = userModelFromJson(response.body);
    }

    return user;
  }

  //post
  Future<bool> addUser(
      {required name,
      required password,
      required storeId,
      required phone,
      required email,
      required city}) async {
    final data = {
      "name": name.toString(),
      "password": password.toString(),
      "storeId": storeId,
      "phone": phone.toString(),
      "email": email.toString(),
      "city": city.toString(),
    };
    final response = await http.post(Uri.parse(userUrl),
        body: jsonEncode(data), headers: {'Content-type': 'application/json'});
    if (response.statusCode == 201) {
      return true;
    }
    return false;
  }

  //update

  Future<bool> updateStore(
      {required userId,
      required name,
      required password,
      required storeId,
      required phone,
      required email,
      required city}) async {
    final data = {
      "name": name.toString(),
      "password": password.toString(),
      "storeId": storeId,
      "phone": phone.toString(),
      "email": email.toString(),
      "city": city.toString(),
    };
    final response = await http.patch(
      Uri.parse("userUrl$userId"),
      body: jsonEncode(data),
      headers: {'Content-type': 'application/json'},
    );
    if (response.statusCode == 200) {
      return response.body.isNotEmpty;
    }
    return false;
  }
}
