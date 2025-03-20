import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/fresh_talent_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/partner_api_repository.dart';

class GetFreshTalentOnMegmoUseCase {
  final PartnerRepository partnerRepository;

  GetFreshTalentOnMegmoUseCase({required this.partnerRepository});

  Future<Either<Failure, FreshTalentEntity>> execute() async =>
      await partnerRepository.getFreshTalentOnMegmo();
}
