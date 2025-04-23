import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/get_user_booking_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/repositories/booking_repositories.dart';

class GetUserBookingUseCase {
  final BookingRepository repository;

  GetUserBookingUseCase({required this.repository});

  Future<Either<Failure, GetUserBookingEntity>> execute(
          {required String userId}) async =>
      await repository.getUserBooking(userId: userId);
}
