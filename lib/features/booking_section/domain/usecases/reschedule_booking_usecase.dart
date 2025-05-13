import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/repositories/booking_repositories.dart';
import '../entities/request/reschedule_booking_request.dart';
import '../entities/response/reschedule_time_model.dart';

class RescheduleBookingUseCase {
  final BookingRepository repository;
  RescheduleBookingUseCase({required this.repository});
  Future<Either<Failure, RescheduleModel>> execute(
          {required RescheduleBookingRequest rescheduleBookingRequest}) async =>
      await repository.rescheduleBooking(
          rescheduleBookingRequest: rescheduleBookingRequest);
}
