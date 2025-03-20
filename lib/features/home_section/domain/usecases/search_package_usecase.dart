import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_package_search_entity.dart';
import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/search_repository.dart';

class GetSearchPackageUseCase {
  final SearchRepository repository;

  GetSearchPackageUseCase({required this.repository});

  Future<Either<Failure, GetPackageSearchEntity>> execute(
          String keyword) async =>
      await repository.getPackagesWithPackageName(keyword);
}
