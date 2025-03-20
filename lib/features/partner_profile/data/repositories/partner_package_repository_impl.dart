import 'package:either_dart/src/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/partner_profile/data/datasources/partner_package_remote_datasource.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/get_bucket_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_package_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/repositories/partner_package_repository.dart';

class PartnerPackageRepositoryImpl implements PartnerPackageRepository {
  final PartnerPackageRemoteDataSource packageRemoteDataSource;

  PartnerPackageRepositoryImpl({required this.packageRemoteDataSource});

  @override
  Future<Either<Failure, PartnerPackageEntity>> getPartnerPackages(
      {required String uuid}) async {
    try {
      final partnerPackage =
          await packageRemoteDataSource.getPartnerPackage(uuid: uuid);
      return Right(partnerPackage);
    } catch (e) {
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<Either<Failure, GetBucketEntity>> getBuckets({required String bucketUuid}) async{
   try {
      final partnerPackage =
          await packageRemoteDataSource.getBucket(bucketUuid: bucketUuid);
      return Right(partnerPackage);
    } catch (e) {
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }
}
