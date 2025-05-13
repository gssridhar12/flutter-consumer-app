
import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_like_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/like_repository.dart';

class GetPartnerLikeUseCase {
  final LikeRepository repository;

  GetPartnerLikeUseCase({required this.repository});

  Future<Either<Failure, GetPartnerLikeEntity>> execute(String partnerUUid) async =>
      await repository.getPartnerLike(parnterUuid: partnerUUid);
}
