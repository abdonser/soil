import 'dart:convert';

import 'package:http/http.dart' as http;

import '../../../domain/model/Signup_model.dart';

class SignUpRequest {
  static signUpRequest(
      {required String name,
      required String email,
      required String password,
      required Function(SignupModel) onSuccess,
      required Function(int statusCode) onError}) async {
    Map<String, String> headers = {'Content-Type': 'application/json'};
    Map<String, String> body = {
      "name": name,
      "email": email,
      "password": password
    };
    String bodyJson = json.encode(body);
    await http
        .post(Uri.parse("http://10.0.2.2:8000/api/register"),
            headers: headers, body: bodyJson)
        .then((response) {
      if (response.statusCode == 200) {
        Map<String, dynamic> decoded = {};
        decoded = json.decode(response.body);
        SignupModel signupModel = SignupModel.fromJson(decoded);
        onSuccess(signupModel);
        print("statusCode is:${response.statusCode}");
        print("sign up done correctly");
        print(signupModel.token);
      } else {
        onError(response.statusCode);
        print(response.statusCode);
      }
    });
  }
}
