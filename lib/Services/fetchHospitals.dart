// Future<List<Hospital>> fetchHospital() async {
//   http.Response response =
//       await http.get(Uri.parse("https://api.fromzero-app.com/api/hospitals"));

//   if (response.statusCode == 200) {
//     List<Hospital> hospitals = (json.decode(response.body) as List)
//         .map((data) => Hospital.fromJson(data))
//         .toList();
//     return hospitals;
//   } else {
//     throw Exception('Failed to get data');
//   }
// }
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:o2_oxy_cov/Models/HospitalDetails.dart';
import 'package:o2_oxy_cov/Models/Hospitals.dart';
import 'package:o2_oxy_cov/Models/LoginModel.dart';

Future<List<Hospitals>> fetchHospital() async {
  HospitalModle hospitalModle;
  http.Response response =
      await http.get(Uri.parse("https://api.fromzero-app.com/api/hospitals"));

  if (response.statusCode == 200) {
    print("json.decode(response.body) ${json.decode(response.body)}");
    hospitalModle = HospitalModle.fromJson((json.decode(response.body)));
    List<Hospitals> hospitals = hospitalModle.data;
    return hospitals;
  } else {
    throw Exception('Failed to get data');
  }
}

Future<HosbitalDetailsData> fetchHospitalDetails(int id) async {
  HospitalDetailsModle hospitalModle;
  http.Response response = await http
      .get(Uri.parse("https://api.fromzero-app.com/api/hospitals/$id"));

  if (response.statusCode == 200) {
    print("json.decode(response.body) ${json.decode(response.body)}");
    hospitalModle = HospitalDetailsModle.fromJson((json.decode(response.body)));
    HosbitalDetailsData hospitals = hospitalModle.data;
    return hospitals;
  } else {
    throw Exception('Failed to get data');
  }
}

Future<UserData> login(String phone, String password) async {
  LoginModel loginModle;
  http.Response response = await http.post(
      Uri.parse("https://api.fromzero-app.com/api/Auth/login"),
      body: {"phone": phone, "password": password});

  if (response.statusCode == 200) {
    print("json.decode(response.body) ${json.decode(response.body)}");
    loginModle = LoginModel.fromJson((json.decode(response.body)));
    UserData userData = loginModle.data;
    return userData;
  } else {
    throw Exception('Failed to get data');
  }
}
