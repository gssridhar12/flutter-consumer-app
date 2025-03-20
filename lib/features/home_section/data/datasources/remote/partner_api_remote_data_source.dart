import 'dart:convert';
import 'dart:developer';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/data/model/all_profiles_model.dart';
import 'package:flutter_consumer_app/features/home_section/data/model/fresh_talent_model.dart';
import 'package:flutter_consumer_app/features/home_section/data/model/top_partner_model.dart';
import 'package:http/http.dart' as http;

abstract class PartnerRemoteDataSource {
  Future<TopPartnerModel> getTopPartnersInDemant();
  Future<FreshTalentModel> freshTalentOnMegmo();
  Future<AllProfileModel> getAllPartners();
}

class PartnerRemoteDataSourceImpl implements PartnerRemoteDataSource {
  final http.Client httpClient;

  PartnerRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<TopPartnerModel> getTopPartnersInDemant() async {
    var requestBody = {"page_number": 0, "page_size": 4};
    var headers = {
      "Content-Type": "application/json",
    };
    final url = Uri.parse(
      'https://partnerapi.megmo.in/partner-service/profile/getPartnerInDemand/v2',
    );

    final response = await httpClient.post(url,
        headers: headers, body: json.encode(requestBody));
    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
    
      return TopPartnerModel.fromJson(decodedBody);
    } else {
      log('Something went wrong: ${response.statusCode}');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<FreshTalentModel> freshTalentOnMegmo() async {
    var requestBody = {"page_number": 0, "page_size": 7};

    final url = Uri.parse(
        'https://partnerapi.megmo.in/partner-service/profile/getPartnerFreshTalent/v2');
    final response = await httpClient.post(url,
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode(requestBody));
    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
      return FreshTalentModel.fromJson(decodedBody);
    } else {
      log('Something went wrong: ${response.statusCode}');

      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<AllProfileModel> getAllPartners() async {
    var requestBody = {"page_number": 0, "page_size": 4};

    final url = Uri.parse(
        'https://partnerapi.megmo.in/partner-service/profile/getAllProfiles/v2');
    final response = await httpClient.post(url,
        headers: {
          "Content-Type": "application/json",
        },
        body: json.encode(requestBody));
    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
      return AllProfileModel.fromJson(decodedBody);
    } else {
      log('Something went wrong: ${response.statusCode}');

      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }
}
