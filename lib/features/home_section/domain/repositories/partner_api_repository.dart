import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/all_partners_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/fresh_talent_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/top_partner_entity.dart';

abstract class PartnerRepository {
  Future<Either<Failure, TopPartnerEntity>> getTopPartnerInDemant();
  Future<Either<Failure, FreshTalentEntity>> getFreshTalentOnMegmo();
  Future<Either<Failure, AllProfileEntity>> getAllPartners();
}
