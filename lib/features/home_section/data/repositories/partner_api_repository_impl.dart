import 'dart:developer';
import 'package:either_dart/src/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/data/datasources/remote/partner_api_remote_data_source.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/all_partners_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/fresh_talent_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/top_partner_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/partner_api_repository.dart';

class PartnerRepositoryImpl implements PartnerRepository {
  final PartnerRemoteDataSource partnerRemoteDatasource;

  PartnerRepositoryImpl({required this.partnerRemoteDatasource});

  @override
  Future<Either<Failure, FreshTalentEntity>> getFreshTalentOnMegmo() async {
    try {
      final partner = await partnerRemoteDatasource.freshTalentOnMegmo();
      log(partner.message!);
      if (partner.data == null) {
        return const Left(ServerFailure(errorMessage: 'Server Failed'));
      }

      return Right(partner);
    } catch (e) {
      return const Left(ServerFailure(errorMessage: 'Server Failed'));
    }
  }

  @override
  Future<Either<Failure, TopPartnerEntity>> getTopPartnerInDemant() async {
    try {
      final partner = await partnerRemoteDatasource.getTopPartnersInDemant();
      log(partner.message!);
      if (partner.data == null) {
        return const Left(ServerFailure(errorMessage: 'Server Failed'));
      }
      return Right(partner);
    } catch (e) {
      log('error is $e');
      return const Left(ServerFailure(errorMessage: 'Server Failed'));
    }
  }

  @override
  Future<Either<Failure, AllProfileEntity>> getAllPartners() async {
    try {
      final partner = await partnerRemoteDatasource.getAllPartners();
      log(partner.message);

      return Right(partner);
    } catch (e) {
      log('error is $e');
      return const Left(ServerFailure(errorMessage: 'Server Failed'));
    }
  }
}
