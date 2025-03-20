import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/category_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/categories_api_repositories.dart';

class GetCategory {
  final CategoriesApiRepository repository;

  GetCategory({required this.repository});

  Future<Either<Failure, CategoryEntity>> exicute() async =>
      await repository.getParentCategory();
}
