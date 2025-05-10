import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_package_review_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/add_package_review_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/user_api_repository.dart';

class AddPackageReviewUsecase {
  final UserRepository repository;

  AddPackageReviewUsecase({required this.repository});

  Future<Either<Failure, AddPackageReviewEntity>> execute(AddPackageReviewRequest addPackageLikeRequest) async =>
      await repository.addPackageReview(request: addPackageLikeRequest);
}
