// To parse this JSON data, do
//
//     final hospitalDetailsModle = hospitalDetailsModleFromJson(jsonString);

import 'dart:convert';

HospitalDetailsModle hospitalDetailsModleFromJson(String str) =>
    HospitalDetailsModle.fromJson(json.decode(str));

String hospitalDetailsModleToJson(HospitalDetailsModle data) =>
    json.encode(data.toJson());

class HospitalDetailsModle {
  HospitalDetailsModle({
    required this.status,
    required this.data,
  });

  int status;
  HosbitalDetailsData data;

  factory HospitalDetailsModle.fromJson(Map<String, dynamic> json) =>
      HospitalDetailsModle(
        status: json["status"],
        data: HosbitalDetailsData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "data": data.toJson(),
      };
}

class HosbitalDetailsData {
  HosbitalDetailsData({
    required this.id,
    required this.name,
    required this.phone,
    required this.image,
    required this.kiloMeter,
    required this.averageRate,
    required this.allCountRate,
    required this.isolationRooms,
    required this.recoveryRooms,
    required this.intensiveCareRooms,
    required this.oxygenTubes,
    required this.workingToday,
    required this.openFrom,
    required this.openTo,
  });

  int id;
  String name;
  String phone;
  String image;
  String kiloMeter;
  int averageRate;
  int allCountRate;
  int isolationRooms;
  int recoveryRooms;
  int intensiveCareRooms;
  int oxygenTubes;
  bool workingToday;
  String openFrom;
  String openTo;

  factory HosbitalDetailsData.fromJson(Map<String, dynamic> json) =>
      HosbitalDetailsData(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        image: json["image"],
        kiloMeter: json["kilo_meter"],
        averageRate: json["average_rate"],
        allCountRate: json["all_count_rate"],
        isolationRooms: json["isolation_rooms"],
        recoveryRooms: json["recovery_rooms"],
        intensiveCareRooms: json["intensive_care_rooms"],
        oxygenTubes: json["oxygen_tubes"],
        workingToday: json["working_today"],
        openFrom: json["open_from"],
        openTo: json["open_to"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "image": image,
        "kilo_meter": kiloMeter,
        "average_rate": averageRate,
        "all_count_rate": allCountRate,
        "isolation_rooms": isolationRooms,
        "recovery_rooms": recoveryRooms,
        "intensive_care_rooms": intensiveCareRooms,
        "oxygen_tubes": oxygenTubes,
        "working_today": workingToday,
        "open_from": openFrom,
        "open_to": openTo,
      };
}
