import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/data/model/add_partner_like_model.dart';
import 'package:flutter_consumer_app/features/home_section/data/model/add_package_like_model.dart';
import 'package:flutter_consumer_app/features/home_section/data/model/get_like_model.dart';
import 'package:flutter_consumer_app/features/home_section/data/model/get_package_like_model.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_like_request.dart';
import 'package:http/http.dart' as http;

abstract class LikeRemoteDataSource {
  Future<AddPackageLikeModel> addPackageLike(
      AddPackageLikeRequest addPackageLikeRequest);
  Future<GetPackageLikeModel> getPackageLike(String packageUuid);
  Future<AddPartnerLikeModel> addParnterLike(
      AddPartnerLikeRequest addPartnerLikeRequest);
  Future<GetPartnerLikeModel> getPartnerLike(String partnerUuid);
}

class LikeRemoteDataSourceImpl implements LikeRemoteDataSource {
  final http.Client httpClient;

  LikeRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<AddPackageLikeModel> addPackageLike(
      AddPackageLikeRequest addPackageLikeRequest) async {
    var headers = {
      "Content-Type": "application/json",
    };
    final url = Uri.parse(
      'https://api.woofurs.com/partner-service/package/likePackage/v2',
    );
    final response = await httpClient.post(url,
        headers: headers, body: json.encode(addPackageLikeRequest.toJson()));
    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
      log(decodedBody.toString());
      // if (decodedBody["message"] == "NO_ACTION_REQUIRED" ||
      //     decodedBody["message"] == "LIKE_REMOVED") {
      //   return AddPackageLikeModel(data:);
      // }
      return AddPackageLikeModel.fromJson(decodedBody);
    } else {
      log('Something went wrong: ${response.statusCode}');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<AddPartnerLikeModel> addParnterLike(
      AddPartnerLikeRequest addPartnerLikeRequest) async {
    var headers = {
      "Content-Type": "application/json",
    };

    final url = Uri.parse(
      'https://api.woofurs.com/partner-service/profile/likeProfile/v2',
    );
    final response = await httpClient.post(url,
        headers: headers, body: json.encode(addPartnerLikeRequest.toJson()));
    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
      log(decodedBody.toString());
      return AddPartnerLikeModel.fromJson(decodedBody);
    } else {
      log('Something went wrong: ${response.statusCode}');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<GetPackageLikeModel> getPackageLike(String packageUuid) async {
    try {
      debugPrint('getPackageLike-packageUuid:$packageUuid');
      var headers = {
        "Content-Type": "application/json",
        "calling_entity": "web_ui",
      };
      final url = Uri.parse(
        'https://api.woofurs.com/partner-service/package/getLikedPackages/v2/$packageUuid',
      );
      final response = await httpClient.get(url, headers: headers);
      if (response.statusCode == 200) {
        final decodedBody = json.decode(response.body);
        log(decodedBody.toString());
        return GetPackageLikeModel.fromJson(decodedBody);
      } else {
        log('Something went wrong: ${response.statusCode}');
        throw const ServerFailure(errorMessage: 'Server Failed');
      }
    } catch (e, st) {
      debugPrint('getPackageLike Exception : $e StackTrace : $st');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<GetPartnerLikeModel> getPartnerLike(String partnerUuid) async {
    var headers = {
      "Content-Type": "application/json",
      "calling_entity": "web_ui",
    };
    final url = Uri.parse(
      'https://api.woofurs.com/partner-service/profile/getLikes/v2/$partnerUuid',
    );
    final response = await httpClient.get(url, headers: headers);
    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
      log(decodedBody.toString());
      return GetPartnerLikeModel.fromJson(decodedBody);
    } else {
      log('Something went wrong: ${response.statusCode}');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }
}
