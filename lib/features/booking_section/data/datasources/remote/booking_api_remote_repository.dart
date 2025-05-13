// ignore_for_file: empty_catches

import 'dart:convert';
import 'dart:developer';
import 'package:flutter/widgets.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/booking_section/data/model/add_booking_model.dart';
import 'package:flutter_consumer_app/features/booking_section/data/model/add_order_model.dart';
import 'package:flutter_consumer_app/features/booking_section/data/model/coupon_model.dart';
import 'package:flutter_consumer_app/features/booking_section/data/model/get_booking_model.dart';
import 'package:flutter_consumer_app/features/booking_section/data/model/get_user_booking_model.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/request/add_booking_request.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/request/add_order_request.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/cancel_booking_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/reschedule_time_model.dart';
import 'package:http/http.dart' as http;

import '../../../domain/entities/request/cancel_booking_request.dart';
import '../../../domain/entities/request/reschedule_booking_request.dart';

abstract class BookingApiRemoteRepository {
  Future<AddBookingModel> addBooking(
      {required AddBookingRequest addBookingRequest});
  Future<CancelBookingEntity> cancelBooking({
    required CancelBookingRequest cancelBookingRequest,
  });
  Future<RescheduleModel> rescheduleBooking({
    required RescheduleBookingRequest rescheduleBookingRequest,
  });
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
    var data = jsonEncode(addBookingRequest.toJson());
    debugPrint('AddBookingModel Data: $data');
    var headers = {
      "Content-Type": "application/json",
      "calling-entity": "WEB_UI"
    };

    final url = Uri.parse(
        'https://api.woofurs.com/partner-service/booking/addBooking/v2');
    final response = await httpClient.post(url,
        headers: headers, body: jsonEncode(addBookingRequest.toJson()));
    // debugPrint('response code: ${response.statusCode}');
    debugPrint('response body: ${response.body}');
    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
      log(decodedBody.toString());
      return AddBookingModel.fromJson(decodedBody);
    } else {
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<RescheduleModel> rescheduleBooking(
      {required RescheduleBookingRequest rescheduleBookingRequest}) async {
    var data = jsonEncode(rescheduleBookingRequest.toJson());
    debugPrint('RescheduleBooking JsonBody: $data');
    var headers = {
      "Content-Type": "application/json",
      // "calling-entity": "WEB_UI"
    };

    final url = Uri.parse(
        'https://api.woofurs.com/partner-service/booking/rescheduleBooking/v2');
    final response = await httpClient.post(url,
        headers: headers, body: jsonEncode(rescheduleBookingRequest.toJson()));
    debugPrint('RescheduleBooking api statusCode: ${response.statusCode}');
    debugPrint('RescheduleBooking api body: ${response.body}');
    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
      log(decodedBody.toString());
      return RescheduleModel.fromJson(decodedBody);
    } else {
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<CancelBookingEntity> cancelBooking(
      {required CancelBookingRequest cancelBookingRequest}) async {
    var data = jsonEncode(cancelBookingRequest.toJson());
    debugPrint('cancelBookingModel Data: $data');
    var headers = {
      "Content-Type": "application/json",
      "calling-entity": "WEB_UI"
    };

    final url = Uri.parse(
        'https://api.woofurs.com/partner-service/booking/cancelBooking/v2');
    final response = await httpClient.post(url,
        headers: headers, body: jsonEncode(cancelBookingRequest.toJson()));
    // debugPrint('response code: ${response.statusCode}');
    debugPrint('response body: ${response.body}');
    if (response.statusCode == 200) {
      final decodedBody = json.decode(response.body);
      log(decodedBody.toString());
      return CancelBookingEntity.fromJson(decodedBody);
    } else {
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<GetBookingModel> getBooking({required String bookingUuid}) async {
    try {
      log('getbooking-bookingUuid:$bookingUuid');
      var headers = {
        "Content-Type": "application/json",
        "calling-entity": "WEB_UI"
      };

      final url = Uri.parse(
          'https://api.woofurs.com/partner-service/booking/getBooking/v2/$bookingUuid');
      final response = await httpClient.get(url, headers: headers);

      if (response.statusCode == 200) {
        final decodedBody = json.decode(response.body);
        log(decodedBody.toString());
        return GetBookingModel.fromJson(decodedBody);
      } else {
        log('Something went wrong with getbooking: ${response.statusCode}');
        throw const ServerFailure(errorMessage: 'Server Failed');
      }
    } catch (e, st) {
      log('getBooking exception : $e StackTrace : $st');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<AddOrderModel> addOrder(
      {required AddOrderRequest addOrderRequest}) async {
    try {
      var headers = {
        "Content-Type": "application/json",
        "calling-entity": "WEB_UI"
      };

      final url = Uri.parse(
          'https://api.woofurs.com/partner-service/payment/createOrder/v2');
      final response = await httpClient.post(url,
          headers: headers, body: jsonEncode(addOrderRequest.toJson()));

      if (response.statusCode == 200) {
        final decodedBody = json.decode(response.body);
        log(decodedBody.toString());

        return AddOrderModel.fromJson(decodedBody);
      } else {
        log('Something went wrong with Payment api: ${response.statusCode}');
        throw const ServerFailure(errorMessage: 'Server Failed');
      }
    } catch (e, st) {
      debugPrint('Payment section: $e \n error find by saroj $st');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<GetUserBookingModel> getUserBooking({required String userId}) async {
    try {
      log('getuserbooking-userUuid:$userId');
      var headers = {
        "Content-Type": "application/json",
        "calling-entity": "WEB_UI"
      };

      final url = Uri.parse(
          'https://api.woofurs.com/partner-service/booking/getUserBookings/v2/$userId');

      // 'https://api.woofurs.com/partner-service/booking/getUserBookings/v2/6f62ab6f-869d-44e6-b892-cf1f6b491dda');
      final response = await httpClient.post(url, headers: headers);

      if (response.statusCode == 200) {
        final decodedBody = json.decode(response.body);
        log(decodedBody.toString());

        return GetUserBookingModel.fromJson(decodedBody);
      } else {
        log('Something went wrong with getuserbooking: ${response.statusCode}');
        throw const ServerFailure(errorMessage: 'Server Failed');
      }
    } catch (e, st) {
      debugPrint("getuserBooking exception : $e StackTrace : $st");
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<CouponModel> getCoupons({required String packageUuid}) async {
    log(packageUuid);
    try {
      var headers = {
        "Content-Type": "application/json",
        "calling-entity": "WEB_UI"
      };

      final url = Uri.parse(
          'https://api.woofurs.com/partner-service/package/getPackageCoupons/v2/$packageUuid');
      // "https://api.woofurs.com/partner-service/package/getPackageCoupons/v2/b1bb4786-a7ba-4917-9f89-dfee4faf5170");
      //'https://api.woofurs.com/partner-service/package/getPackageCoupons/v2/89b760cc-7c3a-4c62-bfb1-ff9efa4777ee');
      final response = await httpClient.get(url, headers: headers);

      if (response.statusCode == 200) {
        log(response.body);
        final decodedBody = json.decode(response.body);

        return CouponModel.fromJson(decodedBody);
      } else {
        log('Something went wrong with getpackageCoupons: ${response.statusCode}');
        throw const ServerFailure(errorMessage: 'Server Failed');
      }
    } catch (e, st) {
      debugPrint('getPackageCoupons => $e /n find error by saroj $st');
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }
}
