import 'package:either_dart/src/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/packages_section/data/datasources/remote/package_details_remote_datasources.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/entities/package_details_entitiy.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/repositories/package_details_repository.dart';

class PackageDetailsRepositoryImpl implements PackageDetailsRepository {
  final PackageDetailsRemoteDataSource packageRemoteDataSource;

  PackageDetailsRepositoryImpl({required this.packageRemoteDataSource});

  @override
  Future<Either<Failure, PackageDetailsEntity>> getPackageDetails(
      {required String uuid}) async {
    try {
      final partnerPackage =
          await packageRemoteDataSource.getPackageDetails(uuid: uuid);
      return Right(partnerPackage);
    } catch (e) {
      throw ServerFailure(errorMessage: 'Server Failed-$e');
    }
  }
}
