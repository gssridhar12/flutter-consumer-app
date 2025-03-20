import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/entities/partner_review_entity.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/repositories/review_repository.dart';

class GetPartnerReviewsUseCase {
  final ReviewRepository repository;

  GetPartnerReviewsUseCase({required this.repository});

  Future<Either<Failure, PartnerReviewEntity>> execute(
          {required String uuid}) async =>
      await repository.getProfileReviews(uuid: uuid);
}
