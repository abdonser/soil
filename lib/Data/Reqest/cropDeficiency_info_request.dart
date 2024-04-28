import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;

import 'package:soil/domain/model/Npkdeficiency.dart';

class CropDeficiencyInfoRequest {
  static getCropInfo(
      {required int id,
      required Function(Npkdeficiency) onSuccess,
      required Function(int statusCode) onError}) async {
    Map<String, String> headers = {
      "Authorization":
          "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiMjA4MTU5ZDkxOTRlYzJkNWJlN2NhYjFiODA0NzYwM2VkMzNlMjM1NzBlYjBmZjVjNDY4ZDViMmVjZWQ2NWFhZTdmMzMyMjc0YjcyNDEyMzgiLCJpYXQiOjE3MTM5ODMwMjkuMjI2MjExLCJuYmYiOjE3MTM5ODMwMjkuMjI2MjE5LCJleHAiOjE3NDU1MTkwMjkuMjAyNTkxLCJzdWIiOiI0Iiwic2NvcGVzIjpbXX0.fDhlgJlPfw7Y5zcseU-SNHUQpHoW9wU9VIBOno4U8Ngq1Qt2OeQgV0JOX3Q0-B2Yk0wjCaAXcZ_lXllXsFoET_vQTCQ4ItpyANZN8kpIThQcw9LHzT_U4Wsb9DMu47VYaY8J0BVvq1hzjw7nEEM1eE83FGE-SE_sCbO6DRzh7sb0oiAn3Hs7V9dBqZhyfh1SsKIrr4EGPudpN3A56jW4bXTR9FT_sKZzQOsxiWCg3AV30ioMpHjw7YOFo5PmfgLFEtpJf-wWgzifFJH4ch6whHO-EQ2KoSss3T8KEeBOpdHg9pn3jMm_2NWDSeWfOt2k6TG398thT2EdRuZ7JUoWkz6ZmA47xzwrIwXd9MPSYlmc9FdGz_euX6yulF3RsgmECU8L6Z1efv3xwPAsOXBT7Y_Q_NsZnLQuva8G7Z17aQhcqL8cAAyz0jXMYT1PEQKDLPpxsCztKRJ17C4pFP11DZrpd3v6BYHAyOzO696sr_YP2D5TQ7QFdKkVYU4NotrI4dBPTCZ9iT0e_pEHA-YbZB9FL5171Ew7vE8UI0S331WVUi1nPofQgjQQp99yBSJUogfBviRm1lSyP-Nwqq6ST-tzGvELVQBPz0DyeW64pCNaCdBR1B89Y7rCOX7kXZeC5QSSm_T_OpPLXqc1QDi43dbW1KDTpH6ir0Y25uGGYFY",
      "User-Agent": "PostmanRuntime/7.37.3",
      "Accept": "*/*",
      "Accept-Encoding": "gzip, deflate, br",
      "Connection": "keep-alive"
    };
    await http
        .get(Uri.parse("http://10.0.2.2:8000/api/npkdeficiency/$id"),
            headers: headers)
        .then((response) {
      if (response.statusCode == 200) {
        Map<String, dynamic> decoded = {};
        decoded = json.decode(response.body);
        //model

        Npkdeficiency npkdeficiency = Npkdeficiency.fromJson(decoded);

        onSuccess(npkdeficiency);
        print("statusCode ${response.statusCode}");
        print(response.body);
      } else {
        onError(response.statusCode);
        print(response.statusCode.toString());
      }
    });
  }
}
