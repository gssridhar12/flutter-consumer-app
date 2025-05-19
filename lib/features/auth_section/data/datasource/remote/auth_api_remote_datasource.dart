import 'dart:convert';
import 'dart:developer';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/auth_section/data/model/auth_model.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/entities/request/login_request.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/entities/request/sign_up_request.dart';
import 'package:http/http.dart' as http;

abstract class AuthApiRemoteDataSource {
  Future<AuthModel> loginWithApi({required LogInRequest logInRequest});
  Future<AuthModel> signUpWithApi({required SignUpRequest signUpRequest});
}

class AuthApiRemoteDataSourceImpl implements AuthApiRemoteDataSource {
  final http.Client httpClient;

  AuthApiRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<AuthModel> loginWithApi({required LogInRequest logInRequest}) async {
    var headers = {
      "Content-Type": "application/json",
      "calling-entity": "WEB_UI"
    };
    var body = {"email": logInRequest.email, "password": logInRequest.password};

    final url =
        Uri.parse('https://api.woofurs.com/partner-service/login/login/v2');
    final response =
        await httpClient.post(url, headers: headers, body: jsonEncode(body));
    final decodedBody = json.decode(response.body);
    if (response.statusCode == 200) {
      log(decodedBody.toString());
      return AuthModel.fromJson(decodedBody);
    } else {
      log(decodedBody['message']);

      throw ServerFailure(errorMessage: decodedBody['message']);
    }
  }

  @override
  Future<AuthModel> signUpWithApi(
      {required SignUpRequest signUpRequest}) async {
    var headers = {
      "Content-Type": "application/json",
      "calling-entity": "WEB_UI"
    };
    var body = {
      "full_name": signUpRequest.fullName,
      "email": signUpRequest.email,
      "password": signUpRequest.password
    };

    final url = Uri.parse(
        'https://api.woofurs.com/partner-service/login/register/v2');
    final response =
        await httpClient.post(url, headers: headers, body: jsonEncode(body));
    final decodedBody = json.decode(response.body);

    if (response.statusCode == 200) {
      return AuthModel.fromJson(decodedBody);
    } else {
      log(decodedBody['message']);
      throw ServerFailure(errorMessage: decodedBody['message']);
    }
  }
}
