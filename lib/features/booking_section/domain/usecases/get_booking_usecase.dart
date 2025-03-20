import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/get_booking_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/repositories/booking_repositories.dart';

class GetBookingUseCase {
  final BookingRepository repository;

  GetBookingUseCase({required this.repository});

  Future<Either<Failure, GetBookingEntity>> execute({required String bookingUuid}) async =>
      await repository.getBooking(bookingUuid: bookingUuid);
}
