import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/entities/package_review_entity.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/repositories/review_repository.dart';

class GetPackageReviewsUseCase {
  final ReviewRepository repository;

  GetPackageReviewsUseCase({required this.repository});

  Future<Either<Failure, PackageReviewEntity>> execute(
          {required String uuid}) async =>
      await repository.getPackageReviews(uuid: uuid);
}
