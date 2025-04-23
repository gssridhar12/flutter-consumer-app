import 'dart:developer';
import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/booking_section/data/datasources/remote/booking_api_remote_repository.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/request/add_booking_request.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/request/add_order_request.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/add_booking_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/add_order_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/coupon_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/get_booking_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/get_user_booking_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/repositories/booking_repositories.dart';

class BookingRepositoryImpl implements BookingRepository {
  final BookingApiRemoteRepository remoteDataSource;

  BookingRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, AddBookingEntity>> addBooking(
      {required AddBookingRequest addBookingRequest}) async {
    try {
      final booking = await remoteDataSource.addBooking(
          addBookingRequest: addBookingRequest);
      log(addBookingRequest.toJson().toString());
      log(booking.message.toString());
      return Right(booking);
    } catch (e) {
      return Left(ServerFailure(errorMessage: 'Server Failed $e'));
    }
  }

  @override
  Future<Either<Failure, GetBookingEntity>> getBooking(
      {required String bookingUuid}) async {
    try {
      final booking =
          await remoteDataSource.getBooking(bookingUuid: bookingUuid);
      log(booking.message.toString());
      return Right(booking);
    } catch (e) {
      return const Left(ServerFailure(errorMessage: 'Server Failed'));
    }
  }

  @override
  Future<Either<Failure, AddOrderEntity>> addOrder(
      {required AddOrderRequest addOrderRequest}) async {
    try {
      final booking =
          await remoteDataSource.addOrder(addOrderRequest: addOrderRequest);
      log(booking.message.toString());
      return Right(booking);
    } on Exception {
      return const Left(ServerFailure(errorMessage: 'Server Failed'));
    }
  }

  @override
  Future<Either<Failure, GetUserBookingEntity>> getUserBooking(
      {required String userId}) async {
    try {
      final booking = await remoteDataSource.getUserBooking(userId: userId);
      log(booking.message.toString());
      return Right(booking);
    } catch (e) {
      return const Left(ServerFailure(errorMessage: 'Server Failed'));
    }
  }

  @override
  Future<Either<Failure, CouponEntity>> getCoupons(
      {required String packageUuid}) async {
    try {
      final booking =
          await remoteDataSource.getCoupons(packageUuid: packageUuid);
      log(booking.message.toString());
      return Right(booking);
    } catch (e) {
      return const Left(ServerFailure(errorMessage: 'Server Failed'));
    }
  }
}
