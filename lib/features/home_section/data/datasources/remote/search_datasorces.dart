import 'dart:convert';
import 'dart:developer';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/data/model/get_partner_search_model.dart';
import 'package:flutter_consumer_app/features/home_section/data/model/get_package_search_model.dart';
import 'package:http/http.dart' as http;

abstract class SearchDataSource {
  Future<GetPackageSearchModel> getPackagesWithPackageName(String keyword);
  Future<GetPartnerSearchModel> getPartnerWithPartnerName(String keyword);
}

class SearchDataSourceImpl implements SearchDataSource {
  final http.Client httpClient;

  SearchDataSourceImpl({required this.httpClient});

  @override
  Future<GetPackageSearchModel> getPackagesWithPackageName(
      String keyword) async {
    var requestBody = {"page_number": 0, "page_size": 10};
    var headers = {
      "Content-Type": "application/json",
    };
    final url = Uri.parse(
      'https://partnerapi.megmo.in/partner-service/package/getPackageByPackageName/v2/$keyword',
    );
    final response = await httpClient.post(url,
        headers: headers, body: json.encode(requestBody));
    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
      // log(decodedBody.toString());
      return GetPackageSearchModel.fromJson(decodedBody);
    } else {
      log('Something went wrong: ${response.statusCode}');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<GetPartnerSearchModel> getPartnerWithPartnerName(
      String keyword) async {
    var requestBody = {"page_number": 0, "page_size": 10};

    var headers = {
      "Content-Type": "application/json",
    };
    final url = Uri.parse(
      'https://partnerapi.megmo.in/partner-service/profile/getPartnerByProfileName/v2/$keyword',
    );
    final response = await httpClient.post(
      url,
      body: json.encode(requestBody),
      headers: headers,
    );
    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
      // log(decodedBody.toString());
      return GetPartnerSearchModel.fromJson(decodedBody);
    } else {
      log('Something went wrong: ${response.statusCode}');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }
}
