import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/category_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/get_category.dart';

part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GetCategory? getCategory;
  CategoryBloc(this.getCategory) : super(CategoryInitial()) {
    on<GetParentCategoryDetails>(
      (event, emit) async {
        emit(GetCategoryLoading());

        var category = await getCategory!.exicute();
        category.fold(
          (exception) {
            if (exception is ServerFailure) {
              emit(GetCategoryFailed());
            }
            emit(GetCategoryFailed());
          },
          (tokenModel) {
            log(tokenModel.code.toString());
            emit(GetCategorySuccess(categoryEntity: tokenModel));
          },
        );
      },
    );
    on<GetChildCategoryDetails>(
      (event, emit) async {
        emit(GetCategoryLoading());

        var category = await getCategory!.exicute();
        category.fold(
          (exception) {
            emit(GetCategoryFailed());
          },
          (tokenModel) {
            log(tokenModel.code.toString());
            emit(GetCategorySuccess(categoryEntity: tokenModel));
          },
        );
      },
    );
  }
}
