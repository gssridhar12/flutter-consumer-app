import "package:either_dart/src/either.dart";
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/partner_profile/data/datasources/partner_profile_remote_datasource.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/repositories/partner_profile_repositories.dart';

class PartnerProfileRepositoryImpl implements PartnerProfileRepository {
  final PartnerProfileRemoteDataSource dataSource;

  PartnerProfileRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, PartnerProfileEntity>> getPartnerProfile(
      {required String partnerUuid}) async {
    try {
      final partnerProfile =
          await dataSource.getPatnerProfile(partnerUuid: partnerUuid);
      return Right(partnerProfile);
    } catch (e) {
      return Left(ServerFailure(errorMessage: e.toString()));
    }
  }
}
