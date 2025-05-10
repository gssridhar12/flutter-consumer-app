import 'dart:developer';
import 'package:either_dart/src/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/data/datasources/remote/package_api_remote_data_source.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/package_enitity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/package_api_repositories.dart';

class PackageRepositoryImpl implements PackageRepository {
  final PackageRemoteDataSource packageRemoteDataSource;

  PackageRepositoryImpl({required this.packageRemoteDataSource});

  @override
  Future<Either<Failure, PackageEntity>> getMostBookedPackages() async {
    try {
      final package = await packageRemoteDataSource.getMostBookedPackages();
      log(package.message!);

        if (package.data == null) {
        return const Left(ServerFailure(errorMessage: 'Server Failed'));
      }
      return Right(package);
    } catch (e) {
      log(e.toString());
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }
}
