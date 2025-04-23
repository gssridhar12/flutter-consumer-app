import 'dart:developer';

import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/data/datasources/remote/category_remote_datasource.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/category_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/child_category_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/categories_api_repositories.dart';

class CategoriesApiRepositoryImpl implements CategoriesApiRepository {
  final CategoryRemoteDataSource remoteDataSource;

  CategoriesApiRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, ChildCategoryEntity>> getChildCategory() async {
    try {
      final category = await remoteDataSource.getChildCategory();
      log(category.data.toString());

      return Right(category);
    } catch (e) {
      log(e.toString());
      throw const ServerFailure(errorMessage: 'Server Failed');
    }
  }

  @override
  Future<Either<Failure, CategoryEntity>> getParentCategory() async {
    try {
      final category = await remoteDataSource.getParentCategory();
      log(category.message!);
      if (category.data == null) {
        throw const ServerFailure(errorMessage: 'Server Failed');
      }
      return Right(category);
    } catch (e) {
      log(e.toString());
      throw ServerFailure(errorMessage: e.toString());
    }
  }
}
