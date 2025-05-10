import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/request/add_booking_request.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/request/add_order_request.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/request/reschedule_booking_request.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/add_booking_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/add_order_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/coupon_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/get_booking_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/get_user_booking_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/reschedule_time_model.dart';

import '../entities/request/cancel_booking_request.dart';
import '../entities/response/cancel_booking_entity.dart';

abstract class BookingRepository {
  Future<Either<Failure, AddBookingEntity>> addBooking(
      {required AddBookingRequest addBookingRequest});
  Future<Either<Failure, GetBookingEntity>> getBooking(
      {required String bookingUuid});
  Future<Either<Failure, CancelBookingEntity>> cancelBooking(
      {required CancelBookingRequest cancelBookingRequest});
  Future<Either<Failure, RescheduleModel>> rescheduleBooking(
      {required RescheduleBookingRequest rescheduleBookingRequest});
  Future<Either<Failure, GetUserBookingEntity>> getUserBooking(
      {required String userId});
  Future<Either<Failure, AddOrderEntity>> addOrder(
      {required AddOrderRequest addOrderRequest});
  Future<Either<Failure, CouponEntity>> getCoupons(
      {required String packageUuid});
}
