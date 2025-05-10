import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/partner_profile/data/models/get_bucket_model.dart';
import 'package:flutter_consumer_app/features/partner_profile/data/models/partner_package_model.dart';
import 'package:http/http.dart' as http;

import '../../domain/entities/get_bucket_list_entity.dart';

abstract class PartnerPackageRemoteDataSource {
  Future<PartnerPackageModel> getPartnerPackage({required String uuid});
  Future<GetBucketModel> getBucket({required String bucketUuid});
  Future<GetBucketListModel> getBucketList({required String partnerUuid});
}

class PartnerPackageRemoteDataSourceImpl
    implements PartnerPackageRemoteDataSource {
  final http.Client httpClient;

  PartnerPackageRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<PartnerPackageModel> getPartnerPackage({required String uuid}) async {
    var requestBody = {"page_number": 0, "page_size": 10};
    var headers = {
      "Content-Type": "application/json",
    };
    // to test =72460397-ee6f-42bb-90f6-392364789b15
    final url = Uri.parse(
      'https://partnerapi.megmo.in/partner-service/package/getPackages/v2/$uuid',
    );
    final response = await httpClient.post(url,
        headers: headers, body: json.encode(requestBody));
    if (response.statusCode == 200) {
      log('data  from get most package successsss');
      final decodedBody = json.decode(response.body);
      log(decodedBody.toString());
      return PartnerPackageModel.fromJson(decodedBody);
    } else {
      log('Something went wrong: ${response.statusCode}');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<GetBucketModel> getBucket({required String bucketUuid}) async {
    debugPrint('GetBucketUuid:-> $bucketUuid');
    var headers = {
      "Content-Type": "application/json",
    };
    // to test =72460397-ee6f-42bb-90f6-392364789b15
    final url = Uri.parse(
        "https://partnerapi.megmo.in/partner-service/bucket/getBucketDetails/v2/$bucketUuid"
        // "https://partnerapi.megmo.in/partner-service/bucket/getBucketDetails/v2/641d8961-ea58-44ed-896f-65c2b4fd2c8a"
        // 'https://partnerapi.megmo.in/partner-service/bucket/getBucketDetails/v2/$bucketUuid',
        );
    final response = await httpClient.get(url, headers: headers);
    if (response.statusCode == 200) {
      log('data  from get most package successsss');
      final decodedBody = json.decode(response.body);
      log(decodedBody.toString());
      return GetBucketModel.fromJson(decodedBody);
    } else {
      log('Something went wrong: ${response.statusCode}');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<GetBucketListModel> getBucketList(
      {required String partnerUuid}) async {
    debugPrint('GetBucket partnerUuid:-> $partnerUuid');
    try {
      var headers = {
        "Content-Type": "application/json",
      };
      var requestBody = {"page_number": 0, "page_size": 1000};
      final url = Uri.parse(
        "https://partnerapi.megmo.in/partner-service/bucket/getBuckets/v2/$partnerUuid",
      );
      final response = await httpClient.post(url,
          headers: headers, body: json.encode(requestBody));
      if (response.statusCode == 200) {
        debugPrint('data  from get most package successsss');
        final decodedBody = json.decode(response.body);
        // debugPrint(decodedBody.toString());
        return GetBucketListModel.fromJson(decodedBody);
      } else {
        debugPrint('Something went wrong: ${response.statusCode}');
        throw const ServerFailure(errorMessage: 'Server Failed');
      }
    } catch (e, st) {
      debugPrint('getBucket-Exception:$e stacktrace=$st');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }
}
