import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/repositories/partner_profile_repositories.dart';

class GetPartnerProfileUsecase {
  final PartnerProfileRepository repository;

  GetPartnerProfileUsecase({required this.repository});

  Future<Either<Failure, PartnerProfileEntity>> execute(
          {required String partnerUuid}) async =>
      await repository.getPartnerProfile(partnerUuid: partnerUuid);
}
