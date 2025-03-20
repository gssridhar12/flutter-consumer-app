import 'dart:developer';

import 'package:either_dart/src/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/data/datasources/remote/search_datasorces.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_partner_search_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_package_search_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/search_repository.dart';

class SearchRepositoryImpl implements SearchRepository {
  final SearchDataSource remoteDataSource;

  SearchRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, GetPackageSearchEntity>> getPackagesWithPackageName(
      String keyword) async {
    try {
      final package =
          await remoteDataSource.getPackagesWithPackageName(keyword);
      log(package.message!);

      if (package.data == null || package.code=="FAILED") {
        return const Left(ServerFailure(errorMessage: 'Server Failed'));
      }

      return Right(package);
    } catch (e) {
      return const Left(ServerFailure(errorMessage: 'Server Failed'));
    }
  }

  @override
  Future<Either<Failure, GetPartnerSearchEntity>> getPartnerWithPartnerName(
      String keyword) async {
    try {
      final partner = await remoteDataSource.getPartnerWithPartnerName(keyword);
      log(partner.message!);

       if (partner.data == null) {
        return const Left(ServerFailure(errorMessage: 'Server Failed'));
      }

      return Right(partner);
    } catch (e) {
      return Left(ServerFailure(errorMessage: 'Server Failed $e'));
    }
  }
}
