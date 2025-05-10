import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/data/model/package_model.dart';
import 'package:http/http.dart' as http;

abstract class PackageRemoteDataSource {
  Future<PackageModel> getMostBookedPackages();
}

class PackageRemoteDataSourceImpl implements PackageRemoteDataSource {
  final http.Client httpClient;

  PackageRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<PackageModel> getMostBookedPackages() async {
    try {
      var requestBody = {"page_number": 0, "page_size": 5};
      var headers = {
        "Content-Type": "application/json",
      };
      final url = Uri.parse(
        'https://api.woofurs.com/partner-service/package/getMostBookedPackages/v2',
      );
      final response = await httpClient.post(url,
          headers: headers, body: json.encode(requestBody));
      if (response.statusCode == 200) {
        final decodedBody = json.decode(response.body);

        if (decodedBody["message"] == "GET_MOST_BOOKED_PACKAGES_FAILED") {
          throw const ServerFailure(errorMessage: 'Server Failed');
        }
        log(decodedBody.toString());
        return PackageModel.fromJson(decodedBody);
      } else {
        log('Something went wrong: ${response.statusCode}');
        throw const ServerFailure(errorMessage: 'Server Failed');
      }
    } catch (e, st) {
      debugPrint('Get Most booked respnse :$e n/ saroj : $st');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }
}
