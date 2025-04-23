import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_package_review_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/update_user_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/add_package_review_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_user_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_user_reviews_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/update_user_entity.dart';

abstract class UserRepository {
  Future<Either<Failure, GetUserEntity>> getUserDetails(String userId);
  Future<Either<Failure, UserReviewEntity>> getUserReviews(String userId);
  Future<Either<Failure, AddPackageReviewEntity>> addPackageReview(
      {required AddPackageReviewRequest request});
  Future<Either<Failure, UpdateUserEntity>> updateUserDetails(
      UpdateUserRequest request);
}
