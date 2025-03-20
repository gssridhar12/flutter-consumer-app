import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/request/add_booking_request.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/add_booking_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/repositories/booking_repositories.dart';

class AddBookingUseCase {
  final BookingRepository repository;

  AddBookingUseCase({required this.repository});

  Future<Either<Failure, AddBookingEntity>> execute(
          {required AddBookingRequest addBookingRequest}) async =>
      await repository.addBooking(addBookingRequest: addBookingRequest);
}
