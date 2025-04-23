import 'dart:convert';
import 'dart:developer';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/data/model/add_package_review_model.dart';
import 'package:flutter_consumer_app/features/home_section/data/model/get_user_model.dart';
import 'package:flutter_consumer_app/features/home_section/data/model/get_user_review_model.dart';
import 'package:flutter_consumer_app/features/home_section/data/model/update_user_model.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_package_review_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/update_user_request.dart';
import 'package:http/http.dart' as http;

abstract class UserApiRemoteDataSource {
  Future<UpdateUserModel> updateUser(UpdateUserRequest request);
  Future<GetUserModel> getUser(String userId);
  Future<GetUserReviewModel> getUserReviews(String userId);
  Future<AddPackageReviewModel> addPackageReview(
      AddPackageReviewRequest request);
}

class UserApiRemoteDataSourceImpl implements UserApiRemoteDataSource {
  final http.Client httpClient;

  UserApiRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<UpdateUserModel> updateUser(UpdateUserRequest request) async {
    var requestBody = request.toJson();
    var headers = {
      "Content-Type": "application/json",
    };
    final url = Uri.parse(
      'https://partnerapi.megmo.in/partner-service/login/updateUserDetails/v2',
    );

    final response =
        await http.post(url, headers: headers, body: json.encode(requestBody));
    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
      return UpdateUserModel.fromJson(decodedBody);
    } else {
      log('Something went wrong: ${response.statusCode}');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<GetUserModel> getUser(String userId) async {
    var headers = {
      "Content-Type": "application/json",
    };
    final url = Uri.parse(
      'https://partnerapi.megmo.in/partner-service/login/getUserDetails/v2/$userId',
    );

    final response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
      return GetUserModel.fromJson(decodedBody);
    } else {
      log('Something went wrong: ${response.statusCode}');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<GetUserReviewModel> getUserReviews(String userId) {
    // TODO: implement getUserReviews
    throw UnimplementedError();
  }

  @override
  Future<AddPackageReviewModel> addPackageReview(
      AddPackageReviewRequest request) async {
    var requestBody = request.toJson();
    var headers = {
      "Content-Type": "application/json",
      "calling_entity": "WEB_UI"
    };
    final url = Uri.parse(
      'https://partnerapi.megmo.in/partner-service/package/addPackageReview/v2',
    );

    final response =
        await http.post(url, headers: headers, body: json.encode(requestBody));
    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
      return AddPackageReviewModel.fromJson(decodedBody);
    } else {
      log('Something went wrong: ${response.statusCode}');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  // @override
  // Future<GetUserReviewModel> getUserReviews(String userId)async {

  //   var headers = {
  //     "Content-Type": "application/json",
  //   };
  //   final url = Uri.parse(
  //     'https://partnerapi.megmo.in/profile/getUserReviews/v2/7c3e5177-d233-415a-9a7c-26d4b2b1b515',
  //   );

  //   final response =
  //       await http.get(url, headers: headers);
  //   if (response.statusCode == 200) {
  //     final decodedBody = json.decode(response.body);
  //     return GetUserReviewModel.fromJson(decodedBody);
  //   } else {
  //     log('Something went wrong: ${response.statusCode}');
  //     throw const ServerFailure(errorMessage: 'Server Failed');
  //   }
  // }
}
