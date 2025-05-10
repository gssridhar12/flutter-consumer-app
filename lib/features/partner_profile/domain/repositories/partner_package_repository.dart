import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/get_bucket_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_package_entity.dart';

import '../entities/get_bucket_list_entity.dart';

abstract class PartnerPackageRepository {
  Future<Either<Failure, PartnerPackageEntity>> getPartnerPackages({
    required String uuid,
  });
  Future<Either<Failure, GetBucketEntity>> getBuckets({
    required String bucketUuid,
  });
  Future<Either<Failure, GetBucketListModel>> getBucketsList({
    required String partnerUuid,
  });
}
