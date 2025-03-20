import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/coupon_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/repositories/booking_repositories.dart';

class GetCouponUseCase {
  final BookingRepository repository;

  GetCouponUseCase({required this.repository});

  Future<Either<Failure, CouponEntity>> execute(
          {required String packageUuid}) async =>
      await repository.getCoupons(packageUuid: packageUuid);
}
