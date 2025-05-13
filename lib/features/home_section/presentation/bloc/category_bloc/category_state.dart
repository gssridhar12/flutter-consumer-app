part of 'category_bloc.dart';

sealed class CategoryState extends Equatable {
  const CategoryState();

  @override
  List<Object> get props => [];
}

final class CategoryInitial extends CategoryState {}


class GetCategorySuccess extends CategoryState {
  final CategoryEntity categoryEntity;

  const GetCategorySuccess({required this.categoryEntity});
  @override
  List<Object> get props => [categoryEntity];
}

class GetCategoryFailed extends CategoryState {
  @override
  List<Object> get props => [];
}

class GetCategoryLoading extends CategoryState {
  @override
  List<Object> get props => [];
}
