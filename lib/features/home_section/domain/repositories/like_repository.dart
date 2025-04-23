import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_like_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/add_like_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/add_package_like_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_like_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_package_like_entity.dart';

abstract class LikeRepository {
  Future<Either<Failure, AddPackageLikeEntity>> addPackageLike(
      {required AddPackageLikeRequest addPackageLikeRequest});
  Future<Either<Failure, GetPackageLikeEntity>> getPackageLike(
      {required String packageUuid});
  Future<Either<Failure, AddPartnerLikeEntity>> addPartnerLike(
      {required AddPartnerLikeRequest addpartnerLikeRequest});
  Future<Either<Failure, GetPartnerLikeEntity>> getPartnerLike(
      {required String parnterUuid});
}
