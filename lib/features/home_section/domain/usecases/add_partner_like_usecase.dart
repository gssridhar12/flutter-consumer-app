import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_like_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/add_like_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/like_repository.dart';

class AddPartnerLikeUseCase {
  final LikeRepository repository;

  AddPartnerLikeUseCase({required this.repository});

  Future<Either<Failure, AddPartnerLikeEntity>> execute(AddPartnerLikeRequest addPartnerLikeRequest) async =>
      await repository.addPartnerLike(addpartnerLikeRequest: addPartnerLikeRequest);
}
