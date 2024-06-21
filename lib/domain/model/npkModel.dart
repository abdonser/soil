import 'dart:convert';
/// success : true
/// message : "product fetched successfully"
/// npk : {"id":28,"Crops":"Cauliflower","N":150,"P":100,"K":100,"created_at":null,"updated_at":null}

NpkModel npkModelFromJson(String str) => NpkModel.fromJson(json.decode(str));
String npkModelToJson(NpkModel data) => json.encode(data.toJson());
class NpkModel {
  NpkModel({
      this.success, 
      this.message, 
      this.npk,});

  NpkModel.fromJson(dynamic json) {
    success = json['success'];
    message = json['message'];
    npk = json['npk'] != null ? Npk.fromJson(json['npk']) : null;
  }
  bool? success;
  String? message;
  Npk? npk;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['message'] = message;
    if (npk != null) {
      map['npk'] = npk?.toJson();
    }
    return map;
  }

}

/// id : 28
/// Crops : "Cauliflower"
/// N : 150
/// P : 100
/// K : 100
/// created_at : null
/// updated_at : null

Npk npkFromJson(String str) => Npk.fromJson(json.decode(str));
String npkToJson(Npk data) => json.encode(data.toJson());
class Npk {
  Npk({
      this.id, 
      this.crops, 
      this.n, 
      this.p, 
      this.k, 
      this.createdAt, 
      this.updatedAt,});

  Npk.fromJson(dynamic json) {
    id = json['id'];
    crops = json['Crops'];
    n = json['N'];
    p = json['P'];
    k = json['K'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  num? id;
  String? crops;
  num? n;
  num? p;
  num? k;
  dynamic createdAt;
  dynamic updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Crops'] = crops;
    map['N'] = n;
    map['P'] = p;
    map['K'] = k;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}