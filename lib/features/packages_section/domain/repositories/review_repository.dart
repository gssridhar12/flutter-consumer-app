import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/entities/package_review_entity.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/entities/partner_review_entity.dart';

abstract class ReviewRepository {
  Future<Either<Failure, PartnerReviewEntity>> getProfileReviews(
      {required String uuid});
  Future<Either<Failure, PackageReviewEntity>> getPackageReviews(
      {required String uuid});
}
