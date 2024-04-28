import 'dart:convert';
import 'package:http/http.dart' as http;


import '../../../domain/model/Loginmodel.dart';

class LoginRequest {
  static void loginRequest(
      { required String email,
        required String password,
        required Function(Loginmodel) onSuccess,

      required Function(int statusCode) onError}) async {
    Map<String, String> headers = {
      'Content-Type': 'application/json'
    };
    Map<String, String> body = {
      "email": email,
      "password": password,
      //takwa@gmail.com
    };
    String bodyJson = json.encode(body);
    await http
        .post(Uri.parse("http://10.0.2.2:8000/api/login"), headers: headers, body: bodyJson)
        .then((response) {
      if (response.statusCode == 200) {
        Map<String, dynamic> decoded = {};
        decoded = json.decode(response.body);
        Loginmodel loginmodel = Loginmodel.fromJson(decoded);
        onSuccess(loginmodel);
        print("login is done correctly");
        print("statusCode is:${response.statusCode}");
        print(loginmodel.token);

        // onSuccess()
        print(response.body);
      } else {
        onError(response.statusCode);
        print(response.statusCode);
      }
    });
  }
}
/*
Future<void> login(String email, String password) async {
    try {
      final Uri apiUrl = Uri.parse("http://10.0.2.2:8000/api/login");

      // Set your headers (if needed)
      Map<String, String> headers = {
        'Content-Type': 'application/json', // Example header
      };

      // Create a map with the request body
      Map<String, String> requestBody = {
        "email": email,
        "password": password,
      };

      // Convert the map to JSON
      String requestBodyJson = json.encode(requestBody);

      // Make the POST request
      final response =
          await http.post(apiUrl, headers: headers, body: requestBodyJson);

      if (response.statusCode == 200) {
        // Successful response
        Map<String, dynamic> decoded = json.decode(response.body);
        // Handle the response data as needed

        print("statusCode ${response.statusCode}");
        print(response.body);
        Navigator.push(context, MaterialPageRoute(builder: (builder)=>MyHomePage()));
      } else {
        // Error response
        // Handle the error (e.g., show an error message)
        print("Error: ${response.statusCode}");
      }
    } catch (e) {
      // Handle exceptions (e.g., network errors)
      print("Exception: $e");
    }
  }
 */
