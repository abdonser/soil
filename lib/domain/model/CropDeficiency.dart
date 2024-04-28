import 'dart:convert';

class Cropdeficiency {
  bool success;
  String message;
  List<Npkdeficiency> npkdeficiency;

  Cropdeficiency({
    required this.success,
    required this.message,
    required this.npkdeficiency,
  });

  factory Cropdeficiency.fromRawJson(String str) => Cropdeficiency.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Cropdeficiency.fromJson(Map<dynamic, dynamic> json) => Cropdeficiency(
    success: json["success"],
    message: json["message"],
    npkdeficiency: List<Npkdeficiency>.from(json["npkdeficiency"].map((x) => Npkdeficiency.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "npkdeficiency": List<dynamic>.from(npkdeficiency.map((x) => x.toJson())),
  };
}

class Npkdeficiency {
  int id;
  String cropName;
  String nImage;
  String pImage;
  String kImage;
  DateTime createdAt;
  DateTime updatedAt;

  Npkdeficiency({
    required this.id,
    required this.cropName,
    required this.nImage,
    required this.pImage,
    required this.kImage,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Npkdeficiency.fromRawJson(String str) => Npkdeficiency.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Npkdeficiency.fromJson(Map<dynamic, dynamic> json) => Npkdeficiency(
    id: json["id"],
    cropName: json["Crop_Name"],
    nImage: json["N_image"],
    pImage: json["P_image"],
    kImage: json["K_image"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
  );

  Map<dynamic, dynamic> toJson() => {
    "id": id,
    "Crop_Name": cropName,
    "N_image": nImage,
    "P_image": pImage,
    "K_image": kImage,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
  };
}
