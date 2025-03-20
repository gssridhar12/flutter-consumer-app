import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_package_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/repositories/partner_package_repository.dart';

class GetPartnerPackagesUseCase {
  final PartnerPackageRepository repository;

  GetPartnerPackagesUseCase({required this.repository});

  Future<Either<Failure, PartnerPackageEntity>> execute(String uuid) async =>
      await repository.getPartnerPackages(uuid: uuid);
}
