import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_partner_search_entity.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/search_repository.dart';

class GetSearchPartnerUseCase {
  final SearchRepository repository;

  GetSearchPartnerUseCase({required this.repository});

  Future<Either<Failure, GetPartnerSearchEntity>> execute(
          String keyword) async =>
      await repository.getPartnerWithPartnerName(keyword);
}
