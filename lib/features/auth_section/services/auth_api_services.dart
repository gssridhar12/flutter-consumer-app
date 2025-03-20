import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_consumer_app/features/auth_section/core/api_endpoint.dart';

class AuthApiService {
  ///login function
  static Future loginWithPhoneNumber(
      String phoneNumber, String password) async {
    var requestBody = {
      "mobile_number": phoneNumber,
      "password": password,
    };

    var headers = {
      "Content-Type": "application/json",
      "calling_entity": "WEB_UI"
    };

    try {
      var response = await http.post(
        Uri.parse(loginBaseUrl),
        body: jsonEncode(requestBody),
        headers: headers,
      );

      if (response.statusCode == 200) {
        log(response.body);
      }
      log(response.statusCode.toString());
      var jsonResponce = jsonDecode(response.body);
      log(response.body.toString());

      return jsonResponce;
    } on HttpException catch (e) {
      throw HttpException('Something failed: $e');
    }
  }

  ///sign in function
  static Future signUpwithEmailorPhone(
      String fullName, String phoneNumber, String password) async {
    var requestBody = {
      "full_name": fullName,
      "email": "",
      "mobile_number": phoneNumber,
      "password": password,
    };

    var headers = {
      "Content-Type": "application/json",
      "calling_entity": "WEB_UI"
    };

    try {
      var response = await http.post(
        Uri.parse(signupBaseUrl),
        body: jsonEncode(requestBody),
        headers: headers,
      );

      if (response.statusCode == 200) {
        log(response.body);
      }
      log(response.statusCode.toString());
      log(response.body.toString());
      var jsonResponce = jsonDecode(response.body);
      return jsonResponce;
    } on HttpException catch (e) {
      throw HttpException('Something failed: $e');
    }
  }

  // static Future LoginWithPhoneNumber(
  //     String phoneNumber, String password) async {
  //   final dio = Dio();
  //   dio.options.baseUrl = baseUrl;
  //   log('api call started');
  //   final response = await dio.post(baseUrl,
  //       data: {'phone_number': '7447440309', 'password': 'abc123'});

  //   if (response.statusCode == 200) {
  //     log('login successfull');
  //     Partner partner = Partner.fromJson(response.data['data']);
  //     log(partner.toString());
  //   } else if (response.statusCode == 400) {
  //     log('login failed');
  //   } else {
  //     log(response.statusCode.toString());
  //   }
  // }
}
