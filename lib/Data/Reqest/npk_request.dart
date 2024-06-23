import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import '../../domain/model/npkModel.dart';

class NpkRequest {
  static getNpk(
      {required int id,
      required Function(NpkModel) onSuccess,
      required Function(int statusCode) onError}) async {
    Map<String, String> headers = {
      "Authorization":
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiY2UzNGFiNzA2NGYwMDUwNWI3MWJlZDZhM2E3Yzc4OGVhNTQ5NTgyZDU5ZmJjM2Y3MTM1ODE3NDJmYWU4ZGQyZTcyYTBlYzY3MTNmMDY2ZTQiLCJpYXQiOjE3MTkwNzgzMjQuNDcxNDc4LCJuYmYiOjE3MTkwNzgzMjQuNDcxNDgzLCJleHAiOjE3NTA2MTQzMjQuMzM1MjU5LCJzdWIiOiI0Iiwic2NvcGVzIjpbXX0.rJaHbbRlyNaBD22ogkr-9HkXpgIUMSHfOKcnIkrSXWy0gY83LmGP9USJRs1qjElz-NHptEK_nTlfu0M5PN_r3LKYIKkUSZf2viornD3YOufOqobJEtqGMHrYXvwcs1UTlVsS9-QqHP1YP85xQrCQrY41rB-3hBfxFmkAqmWqEj7WQ6-QIxuOl09BqKT3aIr7rr_uaa9-BsW6_vi8mz2eNE1XsIqTnGq-dRUBjAG5E7ibfQCT3odTkJaQqU3CCbccgSOcrzywVSRA8nZh6xspM32pIA3BbUb1_VTizuVtaghJE4v7X7kAyyTNLEsbhpoYfBhIuDlmykdrkkjhYP7H_Jp6jRWNmLHMJE0uaa0YRGV0iDDlEznLxy1RvmNIHCZX7-D9rE6NadYCVtbHE0GOQE4Gn5fZLSVVxdAZ8nPpYZ2e0Oj5HaMEpjgoTwfBpANs8H-3bGJSqeiq3QLoIbqHXhXAmNtDsAbwgbR0_iTGiqRvarjlfMGqS--sHf2VKfMkv1XNaT45tokgEwgMhjCBrA_sHwcMmJvwRVWb8ZyZ4s73KzjaKPFkyxtkHsifKkniZGe0HReq9_-UWBXkl3daS9eJ60Uy6maevHf1a0Ohkw-PKWbu5DzQy91kf3Uq-zrleo1vevx8WAXG1jsJd-uGR3PjvgS0oNYcQr1gE3LIv_w",
      "User-Agent": "PostmanRuntime/7.37.3",
      "Accept": "*/*",
      "Accept-Encoding": "gzip, deflate, br",
      "Connection": "keep-alive"
    };
    await http
        .get(Uri.parse("http://10.0.2.2:8000/api/npk/$id"), headers: headers)
        .then((response) {
      if (response.statusCode == 200) {
        Map<String, dynamic> decoded = {};
        decoded = json.decode(response.body);
        //model

        NpkModel npkModel = NpkModel.fromJson(decoded);

        onSuccess(npkModel);
        print("statusCode ${response.statusCode}");
        print(response.body);
      } else {
        onError(response.statusCode);
        print(response.statusCode.toString());
      }
      log(response.statusCode.toString());
      log(response.body);
    });
  }
}
