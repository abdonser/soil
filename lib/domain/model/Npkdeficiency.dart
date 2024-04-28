import 'dart:convert';

/// id : 7
/// Crop_Name : "apple"
/// N_image : "apple n.jpegjpeg"
/// P_image : "apple p.jpegjpeg"
/// K_image : "apple k.jpegjpeg"
/// created_at : "2024-03-15T22:46:38.000000Z"
/// updated_at : "2024-03-15T22:46:38.000000Z"

Npkdeficiency npkdeficiencyFromJson(String str) => Npkdeficiency.fromJson(json.decode(str));
String npkdeficiencyToJson(Npkdeficiency data) => json.encode(data.toJson());
class Npkdeficiency {
  Npkdeficiency({
      this.id, 
      this.cropName, 
      this.nImage, 
      this.pImage, 
      this.kImage, 
      this.createdAt, 
      this.updatedAt,});

  Npkdeficiency.fromJson(dynamic json) {
    id = json['id'];
    cropName = json['Crop_Name'];
    nImage = json['N_image'];
    pImage = json['P_image'];
    kImage = json['K_image'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  String? cropName;
  String? nImage;
  String? pImage;
  String? kImage;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['Crop_Name'] = cropName;
    map['N_image'] = nImage;
    map['P_image'] = pImage;
    map['K_image'] = kImage;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}