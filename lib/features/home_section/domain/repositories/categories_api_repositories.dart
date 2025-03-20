import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/category_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/child_category_entity.dart';

abstract class CategoriesApiRepository {
  Future<Either<Failure, CategoryEntity>> getParentCategory();
  Future<Either<Failure, ChildCategoryEntity>> getChildCategory();
}
