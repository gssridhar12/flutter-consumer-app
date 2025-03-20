import 'package:flutter_consumer_app/features/home_section/domain/entities/response/top_partner_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/partner_api_repository.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';

class GetTopPartnerInDemantUseCase {
  final PartnerRepository partnerRepository;

  GetTopPartnerInDemantUseCase({required this.partnerRepository});

  Future<Either<Failure, TopPartnerEntity>> execute() async =>
      await partnerRepository.getTopPartnerInDemant();
}
