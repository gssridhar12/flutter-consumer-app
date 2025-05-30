import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/packages_section/data/model/package_details_model.dart';
import 'package:http/http.dart' as http;

abstract class PackageDetailsRemoteDataSource {
  Future<PackageDetailsModel> getPackageDetails({required String uuid});
}

class PackageDetailsRemoteDataSourceImpl
    implements PackageDetailsRemoteDataSource {
  final http.Client httpClient;

  PackageDetailsRemoteDataSourceImpl({required this.httpClient});

  ///To get details of a partner
  @override
  Future<PackageDetailsModel> getPackageDetails({required String uuid}) async {
    try {

 var headers = {
      "Content-Type": "application/json",
    };
    //TODO change package id
    final url = Uri.parse(
      // 'https://api.woofurs.com/partner-service/package/getPackageDetails/v2/89b760cc-7c3a-4c62-bfb1-ff9efa4777ee',
      'https://api.woofurs.com/partner-service/package/getPackageDetails/v2/$uuid',

    );
    final response = await httpClient.get(
      url,
      headers: headers,
    );
    if (response.statusCode == 200) {
      log('data  from get most package successsss');
      final decodedBody = json.decode(response.body);
      log(decodedBody.toString());
      debugPrint(response.body);
      return PackageDetailsModel.fromJson(decodedBody);
    } else {
      log('Something went wrong: ${response.statusCode}');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
    }catch(e , stacktrack){
      debugPrint('get package : $e \n error by saroj $stacktrack');
      throw const ServerFailure(errorMessage: 'Server Failed');

    }
   
  }
}
