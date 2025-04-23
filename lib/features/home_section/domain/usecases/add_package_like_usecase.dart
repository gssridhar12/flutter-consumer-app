import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_like_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/add_package_like_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/like_repository.dart';

class AddPackageLikeUseCase {
  final LikeRepository repository;

  AddPackageLikeUseCase({required this.repository});

  Future<Either<Failure, AddPackageLikeEntity>> execute(
          AddPackageLikeRequest addPackageLikeRequest) async =>
      await repository.addPackageLike(
          addPackageLikeRequest: addPackageLikeRequest);
}
