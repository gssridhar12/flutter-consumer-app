import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/child_category_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/categories_api_repositories.dart';

class GetChildCategory {
  final CategoriesApiRepository repository;

  GetChildCategory({required this.repository});

  Future<Either<Failure, ChildCategoryEntity>> execute() async =>
      await repository.getChildCategory();
}
