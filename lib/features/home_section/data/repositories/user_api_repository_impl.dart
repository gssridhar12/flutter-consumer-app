import 'dart:developer';
import 'package:either_dart/src/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/data/datasources/remote/user_api_remote_datasource.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_package_review_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/update_user_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/add_package_review_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_user_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_user_reviews_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/update_user_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/user_api_repository.dart';

class UserRepositoryImpl implements UserRepository {
  final UserApiRemoteDataSource remoteDataSource;

  UserRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, GetUserEntity>> getUserDetails(String userId) async {
    try {
      final package = await remoteDataSource.getUser(userId);
      log(package.message!);

      return Right(package);
    } catch (e) {
      return const Left(ServerFailure(errorMessage: 'Server Failed'));
    }
  }

  @override
  Future<Either<Failure, UpdateUserEntity>> updateUserDetails(
      UpdateUserRequest request) async {
    try {
      final package = await remoteDataSource.updateUser(request);
      log(package.message!);

      return Right(package);
    } catch (e) {
      return const Left(ServerFailure(errorMessage: 'Server Failed'));
    }
  }

  @override
  Future<Either<Failure, UserReviewEntity>> getUserReviews(String userId) {
    // TODO: implement getUserReviews
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, AddPackageReviewEntity>> addPackageReview(
      {required AddPackageReviewRequest request}) async {
    try {
      final package = await remoteDataSource.addPackageReview(request);
      log(package.message!);

      return Right(package);
    } catch (e) {
      return const Left(ServerFailure(errorMessage: 'Server Failed'));
    }
  }
}
