import 'dart:convert';
import 'dart:developer';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/booking_section/data/model/add_booking_model.dart';
import 'package:flutter_consumer_app/features/booking_section/data/model/add_order_model.dart';
import 'package:flutter_consumer_app/features/booking_section/data/model/coupon_model.dart';
import 'package:flutter_consumer_app/features/booking_section/data/model/get_booking_model.dart';
import 'package:flutter_consumer_app/features/booking_section/data/model/get_user_booking_model.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/request/add_booking_request.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/request/add_order_request.dart';
import 'package:http/http.dart' as http;

abstract class BookingApiRemoteRepository {
  Future<AddBookingModel> addBooking(
      {required AddBookingRequest addBookingRequest});

  Future<GetBookingModel> getBooking({required String bookingUuid});
  Future<GetUserBookingModel> getUserBooking({required String userId});
  Future<AddOrderModel> addOrder({required AddOrderRequest addOrderRequest});
  Future<CouponModel> getCoupons({required String packageUuid});
}

class BookingApiRemoteRepositoryImpl implements BookingApiRemoteRepository {
  final http.Client httpClient;

  BookingApiRemoteRepositoryImpl({required this.httpClient});

  @override
  Future<AddBookingModel> addBooking(
      {required AddBookingRequest addBookingRequest}) async {
    var headers = {
      "Content-Type": "application/json",
      "calling_entity": "WEB_UI"
    };

    final url = Uri.parse(
        'https://partnerapi.megmo.in/partner-service/booking/addBooking/v2');
    final response = await httpClient.post(url,
        headers: headers, body: jsonEncode(addBookingRequest.toJson()));

    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
      log(decodedBody.toString());
      return AddBookingModel.fromJson(decodedBody);
    } else {
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<GetBookingModel> getBooking({required String bookingUuid}) async {
    var headers = {
      "Content-Type": "application/json",
      "calling_entity": "WEB_UI"
    };

    final url = Uri.parse(
        'https://partnerapi.megmo.in/partner-service/booking/getBooking/v2/$bookingUuid');
    final response = await httpClient.get(url, headers: headers);

    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);

      return GetBookingModel.fromJson(decodedBody);
    } else {
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<AddOrderModel> addOrder(
      {required AddOrderRequest addOrderRequest}) async {
    var headers = {
      "Content-Type": "application/json",
      "calling_entity": "WEB_UI"
    };

    final url = Uri.parse(
        'https://partnerapi.megmo.in/partner-service/payment/createOrder/v2');
    final response = await httpClient.post(url,
        headers: headers, body: jsonEncode(addOrderRequest.toJson()));

    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
      log(decodedBody.toString());

      return AddOrderModel.fromJson(decodedBody);
    } else {
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<GetUserBookingModel> getUserBooking({required String userId}) async {
    var requestBody = {"page_number": 0, "page_size": 10};
    var headers = {
      "Content-Type": "application/json",
    };

    final url = Uri.parse(
        'https://partnerapi.megmo.in/partner-service/booking/getUserBookings/v2/fce955b4-2fc4-4842-81ea-33ff00fba7e7');
    final response = await httpClient.post(url,
        headers: headers, body: json.encode(requestBody));

    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);

      return GetUserBookingModel.fromJson(decodedBody);
    } else {
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<CouponModel> getCoupons({required String packageUuid}) async {
    var headers = {
      "Content-Type": "application/json",
      "calling_entity": "WEB_UI"
    };

    final url = Uri.parse(
        'https://partnerapi.megmo.in/partner-service/package/getPackageCoupons/v2/89b760cc-7c3a-4c62-bfb1-ff9efa4777ee');
    final response = await httpClient.get(url, headers: headers);

    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);

      return CouponModel.fromJson(decodedBody);
    } else {
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }
}
