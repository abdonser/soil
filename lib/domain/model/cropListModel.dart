import 'dart:convert';

class CropListModel {
  bool success;
  String message;
  List<CropList> cropList;

  CropListModel({
    required this.success,
    required this.message,
    required this.cropList,
  });

  factory CropListModel.fromRawJson(String str) => CropListModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CropListModel.fromJson(Map<String, dynamic> json) => CropListModel(
    success: json["success"],
    message: json["message"],
    cropList: List<CropList>.from(json["CropList"].map((x) => CropList.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "message": message,
    "CropList": List<dynamic>.from(cropList.map((x) => x.toJson())),
  };
}

class CropList {
  int id;
  String cropImage;
  String cropName;
  DateTime createdAt;
  DateTime updatedAt;
  int cropId;
  int npkId;

  CropList({
    required this.id,
    required this.cropImage,
    required this.cropName,
    required this.createdAt,
    required this.updatedAt,
    required this.cropId,
    required this.npkId,
  });

  factory CropList.fromRawJson(String str) => CropList.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CropList.fromJson(Map<String, dynamic> json) => CropList(
    id: json["id"],
    cropImage: json["Crop_image"],
    cropName: json["Crop_name"],
    createdAt: DateTime.parse(json["created_at"]),
    updatedAt: DateTime.parse(json["updated_at"]),
    cropId: json["Crop_id"],
    npkId: json["npk_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "Crop_image": cropImage,
    "Crop_name": cropName,
    "created_at": createdAt.toIso8601String(),
    "updated_at": updatedAt.toIso8601String(),
    "Crop_id": cropId,
    "npk_id": npkId,
  };
}
