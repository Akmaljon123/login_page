import 'dart:convert';

import 'package:http/http.dart';
import 'package:navigation/models/register_model.dart';

class NetworkService{
  static Future<String?> sendData(String name, String email, String password)async{
    Uri url = Uri.https("65cbb766efec34d9ed87fe33.mockapi.io", "/a");
    Register register = Register(name: name, email: email, password: password);
    Response response = await post(url, headers: {"Content-Type": "application/json"}, body: jsonEncode(register));
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return null;
    }
  }

  static Future<String> getData()async{
    Uri url = Uri.https("65cbb766efec34d9ed87fe33.mockapi.io", "/a");
    Response response = await get(url, headers: {"Content-Type": "application/json"});
    if (response.statusCode == 200 || response.statusCode == 201) {
      return response.body;
    } else {
      return "1";
    }
  }

  static String converter(Future<String> data){
    return data.toString();
  }
}