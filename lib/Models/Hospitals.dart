// To parse this JSON data, do
//
//     final hospitalModle = hospitalModleFromJson(jsonString);

import 'dart:convert';

HospitalModle hospitalModleFromJson(String str) =>
    HospitalModle.fromJson(json.decode(str));

String hospitalModleToJson(HospitalModle data) => json.encode(data.toJson());

class HospitalModle {
  HospitalModle({
    required this.status,
    required this.data,
  });

  int status;
  List<Hospitals> data;

  factory HospitalModle.fromJson(Map<String, dynamic> json) => HospitalModle(
        status: json["status"],
        data: List<Hospitals>.from(
            json["data"].map((x) => Hospitals.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class Hospitals {
  Hospitals({
    required this.id,
    required this.name,
    required this.image,
  });

  int id;
  String name;
  String image;

  factory Hospitals.fromJson(Map<String, dynamic> json) => Hospitals(
        id: json["id"],
        name: json["name"],
        image: json["image"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
      };
}
