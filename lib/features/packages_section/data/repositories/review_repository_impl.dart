import 'package:either_dart/src/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/packages_section/data/datasources/remote/review_remote_datasource.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/entities/package_review_entity.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/entities/partner_review_entity.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/repositories/review_repository.dart';

class ReviewRepositoryImpl implements ReviewRepository {
  final ReviewDataSource dataSource;

  ReviewRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, PackageReviewEntity>> getPackageReviews(
      {required String uuid}) async {
    try {
      final package = await dataSource.getPackageReview(uuid: uuid);
      return Right(package);
    } catch (e) {
      throw ServerFailure(errorMessage: 'Server Failed-$e');
    }
  }

  @override
  Future<Either<Failure, PartnerReviewEntity>> getProfileReviews(
      {required String uuid}) async {
    try {
      final partner = await dataSource.getPartnerReview(uuid: uuid);
      return Right(partner);
    } catch (e) {
      throw ServerFailure(errorMessage: 'Server Failed-$e');
    }
  }
}
