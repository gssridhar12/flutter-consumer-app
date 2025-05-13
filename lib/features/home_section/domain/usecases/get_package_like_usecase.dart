import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/like_repository.dart';
import '../../data/model/get_package_like_model.dart';

class GetPackageLikeUseCase {
  final LikeRepository repository;

  GetPackageLikeUseCase({required this.repository});

  Future<Either<Failure, GetPackageLikeModel>> execute(
          String packageUuid) async =>
      await repository.getPackageLike(packageUuid: packageUuid);
}
