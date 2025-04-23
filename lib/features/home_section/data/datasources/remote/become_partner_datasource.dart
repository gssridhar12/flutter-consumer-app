import 'dart:convert';
import 'dart:developer';

import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/data/model/become_partner_model.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_lead_request.dart';
import 'package:http/http.dart' as http;

abstract class BecomePartnerRemoteDataSource {
  Future<BecomePartnerModel> addlead(AddLeadRequest addLeadRequest);
}

class BecomePartnerRemoteDataSourceImpl
    implements BecomePartnerRemoteDataSource {
  final http.Client httpClient;

  BecomePartnerRemoteDataSourceImpl({required this.httpClient});

  @override
  Future<BecomePartnerModel> addlead(AddLeadRequest addLeadRequest) async {
    var headers = {
      "Content-Type": "application/json",
    };
    final url = Uri.parse(
      'https://partnerapi.megmo.in/partner-service/lead/v1',
    );

    final response = await httpClient.post(url,
        headers: headers, body: json.encode(addLeadRequest.toJson()));
    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
      return BecomePartnerModel.fromJson(decodedBody);
    } else {
      log('Something went wrong: ${response.statusCode}');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }
}
