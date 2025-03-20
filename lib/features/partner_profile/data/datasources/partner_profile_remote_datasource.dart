import 'dart:convert';
import 'dart:developer';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/partner_profile/data/models/partner_profile_model.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:http/http.dart' as http;

abstract class PartnerProfileRemoteDataSource {
  Future<PartnerProfileEntity> getPatnerProfile({required String partnerUuid});
}

class PartnerProfileRemoteDataSourceImpl
    implements PartnerProfileRemoteDataSource {
  final http.Client httpClient;

  PartnerProfileRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<PartnerProfileEntity> getPatnerProfile(
      {required String partnerUuid}) async {
    var headers = {
      "Content-Type": "application/json",
    };
    final url = Uri.parse(
      // 'https://partnerapi.megmo.in/partner-service/profile/getPartnerProfile/v2/72460397-ee6f-42bb-90f6-392364789b15',
      'https://partnerapi.megmo.in/partner-service/profile/getPartnerProfile/v2/$partnerUuid',
    );

    final response = await httpClient.get(url, headers: headers);
    if (response.statusCode == 200) {
      log('data  from get  partner profile successsss');
      final decodedBody = json.decode(response.body);
      // log(decodedBody.toString());
      return PartnerProfileModel.fromJson(decodedBody);
    } else {
      log('Something went wrong: ${response.statusCode}');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }
}
