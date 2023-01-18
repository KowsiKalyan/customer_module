import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/addtocart_response.dart';

class AddtoCartservice {
  addtocartService() async {
    try {
      var response = await http.get(
          Uri.parse('http://dummyapi.io/data/v1/user'),
          headers: {'app-id': '6218809df11d1d412af5bac4'});
      var jsonrrsponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        return Model.fromJson(jsonrrsponse);
      }
    } catch (e) {
      return null;
    }
  }
}
