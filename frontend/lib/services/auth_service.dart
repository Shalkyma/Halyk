import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:frontend/constants.dart';

class AuthService {
  Future<http.Response> registerUser(String iin, String password) async {
    final response = await http.post(
      Uri.parse(ApiConstants.registerUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'iin': iin,
        'password': password,
      }),
    );
    
    return response;
  }

  Future<http.Response> loginUser(String iin, String password) async {
    final response = await http.post(
      Uri.parse(ApiConstants.loginUrl),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'iin': iin,
        'password': password,
      }),
    );

    return response;
  }
}
