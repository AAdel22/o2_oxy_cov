// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) =>
    LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
  LoginModel({
    required this.status,
    required this.error,
    required this.message,
    required this.data,
  });

  int status;
  List<String> error = ["اسم المستخدم او كلمة المرور غير صحيحة"];
  String message;
  UserData data;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        status: json["status"],
        error: ["هناك خطا يرجي اعاده المحاوله"],
        message: json["message"] ?? "",
        data: UserData.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "status": status,
        "error": List<dynamic>.from(error.map((x) => x)),
        "message": message,
        "data": data.toJson(),
      };
}

class UserData {
  UserData({
    required this.id,
    required this.name,
    required this.phone,
    required this.apiToken,
  });

  int id;
  String name;
  dynamic phone;
  String apiToken;

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        id: json["id"],
        name: json["name"],
        phone: json["phone"],
        apiToken: json["api_token"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "phone": phone,
        "api_token": apiToken,
      };
}
