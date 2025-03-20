import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/all_partners_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/partner_api_repository.dart';

class AllPartnerUsecase {
  final PartnerRepository repository;

  AllPartnerUsecase({required this.repository});

  Future<Either<Failure, AllProfileEntity>> execute() async =>
      await repository.getAllPartners();
}
