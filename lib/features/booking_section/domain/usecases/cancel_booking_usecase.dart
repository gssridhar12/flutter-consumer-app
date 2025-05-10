import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/repositories/booking_repositories.dart';
import '../entities/request/cancel_booking_request.dart';
import '../entities/response/cancel_booking_entity.dart';

class CancelBookingUseCase {
  final BookingRepository repository;
  CancelBookingUseCase({required this.repository});

  Future<Either<Failure, CancelBookingEntity>> execute(
          {required CancelBookingRequest cancelBookingRequest}) async =>
      await repository.cancelBooking(
          cancelBookingRequest: cancelBookingRequest);
}
