import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/get_bucket_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/repositories/partner_package_repository.dart';

class GetBucketUsecase {
  final PartnerPackageRepository repository;

  GetBucketUsecase({required this.repository});

  Future<Either<Failure, GetBucketEntity>> execute(
          {required String bucketUuid}) async =>
      await repository.getBuckets(bucketUuid: bucketUuid);
}
