import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';

abstract class PartnerProfileRepository{
  Future<Either<Failure, PartnerProfileEntity>> getPartnerProfile({required String partnerUuid});

}