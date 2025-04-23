import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_package_like_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/like_repository.dart';

class GetPackageLikeUseCase {
  final LikeRepository repository;

  GetPackageLikeUseCase({required this.repository});

  Future<Either<Failure, GetPackageLikeEntity>> execute(
          String packageUuid) async =>
      await repository.getPackageLike(packageUuid: packageUuid);
}
