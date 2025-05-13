import 'dart:developer';
import 'package:either_dart/src/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/data/datasources/remote/like_remote_datasource.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_like_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/add_like_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/add_package_like_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_like_entity.dart';

import 'package:flutter_consumer_app/features/home_section/domain/repositories/like_repository.dart';

import '../model/get_package_like_model.dart';

class LikeRepositoryImpl implements LikeRepository {
  final LikeRemoteDataSource likeRemoteDataSource;

  LikeRepositoryImpl({required this.likeRemoteDataSource});

  @override
  Future<Either<Failure, AddPackageLikeEntity>> addPackageLike(
      {required AddPackageLikeRequest addPackageLikeRequest}) async {
    try {
      final like =
          await likeRemoteDataSource.addPackageLike(addPackageLikeRequest);
      log(like.message!);
      return Right(like);
    } catch (e) {
      log(e.toString());
      throw ServerFailure(errorMessage: 'Server Failed $e');
    }
  }

  @override
  Future<Either<Failure, AddPartnerLikeEntity>> addPartnerLike(
      {required AddPartnerLikeRequest addpartnerLikeRequest}) async {
    try {
      final like =
          await likeRemoteDataSource.addParnterLike(addpartnerLikeRequest);
      log(like.message!);
      return Right(like);
    } catch (e) {
      log(e.toString());
      throw ServerFailure(errorMessage: 'Server Failed $e');
    }
  }

  @override
  Future<Either<Failure, GetPackageLikeModel>> getPackageLike(
      {required String packageUuid}) async {
    try {
      final like = await likeRemoteDataSource.getPackageLike(packageUuid);
      log(like.message ?? "");
      return Right(like);
    } catch (e) {
      log(e.toString());

      throw ServerFailure(errorMessage: 'Server Failed $e');
    }
  }

  @override
  Future<Either<Failure, GetPartnerLikeEntity>> getPartnerLike(
      {required String parnterUuid}) async {
    try {
      final like = await likeRemoteDataSource.getPartnerLike(parnterUuid);
      if (like.successStatus == false) {
        throw const ServerFailure(errorMessage: "No partners found");
      }
      log(like.message);
      return Right(like);
    } catch (e) {
      log(e.toString());
      throw ServerFailure(errorMessage: 'Server Failed $e');
    }
  }
}
