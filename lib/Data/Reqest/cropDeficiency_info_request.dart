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
      "Authorization":"Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiOGNhNzliZjE4MDJkM2VhMTY4NzM5NDk3N2VlNjI5MTkyNmFhYjY2ZTFiYTE2ODBlNDhlNzI0ZWQ1NWIyOTBjOTQ1OTVkOWVlODFjOWY4ZDYiLCJpYXQiOjE3MTQ1ODk2ODEuNDgzMDc1LCJuYmYiOjE3MTQ1ODk2ODEuNDgzMDgsImV4cCI6MTc0NjEyNTY4MS4zNDY0MTYsInN1YiI6IjQiLCJzY29wZXMiOltdfQ.Bnxki37UMymDm82jtwqNS9qinRFVKiC9wLQ82bJ_SL2Qt65AR_aAdnDezqwKXWvS5v0AuCbvZHQw2t2a68q4zqy709UI19FLiu8pN8Skq3ygfuvosSsyX1nrCI-5X8Ph2THWDx-s_FYGkSc9xgiTdWQCVaFREm4CPjeptMgHBjH9njsVUH3ivjFUTnKQN4mBVVK1-MS5D1_fTHSqbmFUH2fX_D6LNBMVAqxb_X0yMrpjbg_muJMZE_SxndFqfWQn6LuBy-UK_cpi8p3blfA4XPKSimHJ5PeuhiON6PgAAV58OLeNmXqoMk2auulPpKMfGsAjNMUtrMTvSADU6OaK1-r-rmYCDf60a4FgUv23ZnwhdIqj_1HVDoKv1i8Vgx_hY3c_moUENVvLolziYzOd1xBhb13IxbW2eXpuks8BfDJgQLiJQzdd9WQLwD5ZqFDXgBa6nmddkgXuVpFeVIljl0y3x7DfPsCvw0mRMR621C7EsdJk1G88pbq7c_u6_OyI_DrhxyWAWFf3Lst_dbEGuSrBz9M_zM3e6ILB5pR3txRhCwwaDgI8JphxVCkkdvojGsFT7gF1hMF1YLJtsqae2hLmpgLrndi9oSpsDbIppkuK0G7MJ5xKy76u4zB0JYHkNRvj_NoeGEGx914ZCbOKDOlS5dAU9wyNnXrpVmwfb_Y",
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
      log(response.statusCode.toString());
      log(response.body);
    });
  }
}
