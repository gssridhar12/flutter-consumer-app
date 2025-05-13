import 'dart:convert';
import 'dart:developer';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/packages_section/data/model/package_review_model.dart';
import 'package:flutter_consumer_app/features/packages_section/data/model/partner_review_model.dart';
import 'package:http/http.dart' as http;

abstract class ReviewDataSource {
  Future<PartnerReviewModel> getPartnerReview({required String uuid});
  Future<PackageReviewModel> getPackageReview({required String uuid});
}

class ReviewDataSourceImpl implements ReviewDataSource {
  final http.Client httpClient;

  ReviewDataSourceImpl({required this.httpClient});

  @override
  Future<PartnerReviewModel> getPartnerReview({required String uuid}) async {
    var requestBody = {"page_number": 0, "page_size": 10};
    var headers = {
      "Content-Type": "application/json",
    };

    final url = Uri.parse(
      'https://api.woofurs.com/partner-service/profile/getProfileReviews/v2/$uuid',
    );
    final response = await httpClient.post(url,
        headers: headers, body: json.encode(requestBody));
    if (response.statusCode == 200) {
      log('data  from get most package successsss');
      final decodedBody = json.decode(response.body);
      log(decodedBody.toString());
      return PartnerReviewModel.fromJson(decodedBody);
    } else {
      log('Something went wrong: ${response.statusCode}');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<PackageReviewModel> getPackageReview({required String uuid}) async {
    var requestBody = {"page_number": 0, "page_size": 10};

    var headers = {
      "Content-Type": "application/json",
    };

    final url = Uri.parse(
      'https://api.woofurs.com/partner-service/package/getPackageReviews/v2/$uuid',
    );
    final response = await httpClient.post(url,
        headers: headers, body: json.encode(requestBody));
    if (response.statusCode == 200) {
      log('data  from get most package successsss');
      final decodedBody = json.decode(response.body);
      log(decodedBody.toString());
      return PackageReviewModel.fromJson(decodedBody);
    } else {
      log('Something went wrong: ${response.statusCode}');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }
}
