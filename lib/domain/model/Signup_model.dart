import 'dart:convert';

/// token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNGU4MmI3MjZkOTMwZDg3MDI0ZjRhY2ZjYmE3YTk0NTJlMzQ3NGRiOTIzMDFmNzMyNDhiNzkxZTMzOTIyYWZhNTBkMTUwOTVjNmE5ODA4YzUiLCJpYXQiOjE3MTQxNzU1MTcuMzUwODI1LCJuYmYiOjE3MTQxNzU1MTcuMzUwODI5LCJleHAiOjE3NDU3MTE1MTcuMzM5MDY3LCJzdWIiOiIzMCIsInNjb3BlcyI6W119.ZKFoyyGfnZu2TsvZDtM9sBDMmTUHD2CZSHJfeSMHF1H_YPhGu7W06VmimYa-033iPwKMTRLxLvq1zh8oS09Q2U8MhqxrQPTaV5fsYJBbOe0qBo-bp9sKtUs2-8vjeI6ooO8FINfF9kfJeDy8LMQLDYIyn4gkt9SB9aZNiV4QlROFFWo6jR6CrxX3T0Qv7S3f8B8se_XVbv10DHFmAdU2PuqJN3gR-7-IdB_pcmEypb3Hf-QG0d2YMX7PR2WskvUFPRnyn1bAnGJEN2AaFpzEgnEs39bWD8xtyAJfuSy1Izdt1NEOLc4tOkYnjkv1FHzDuTw0FFJuYxDrEhtVb37okRpYcOyax6GS9FtCEI-doJJ9GmcLKK5kuUDs_2NwcuS79YbihBu9k1KQhEOS1b1Czk141WM71knKtgnh7ihQ8f3OCImvU3z7BWQWC0YAs-lttvYq683-s-VV2VDozrcWP57QOCA2BKzLoCPf52GisAy38Eiel2ZdJpfwrTjUfatRxdUQ8l4X6kE_f7HLRsnBDfsggXZhLGBp7HGIQOOTKMLoigCNW-L9mKSA-Bxkdboj1K9oB97v5MRIFbhIZIKTP1MTgcOAf11vVh8aiqwgBvNfefAMExhaj9QxvPGyaOP-FxRtQ3m0bfnLu7s6BqOTIGKH4RVNVYTWBtpTYIFJYyE"

SignupModel signupModelFromJson(String str) => SignupModel.fromJson(json.decode(str));
String signupModelToJson(SignupModel data) => json.encode(data.toJson());
class SignupModel {
  SignupModel({
      this.token,});

  SignupModel.fromJson(dynamic json) {
    token = json['token'];
  }
  String? token;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['token'] = token;
    return map;
  }

}