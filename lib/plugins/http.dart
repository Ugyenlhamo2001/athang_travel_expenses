import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:travel_expenses/config/baseURL.dart';

Future GetRequest(url) async {
  return http.get(Uri.parse(BaseConfig().baseUrl + url));
}

Future PostRequest(url, body) async {
  return await http.post(Uri.parse(BaseConfig().baseUrl + url),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(body));
}
