part of 'category_bloc.dart';

sealed class CategoryEvent extends Equatable {
  const CategoryEvent();

  @override
  List<Object> get props => [];
}
class GetParentCategoryDetails extends CategoryEvent {
  const GetParentCategoryDetails();

  @override
  List<Object> get props => [];
}
class GetChildCategoryDetails extends CategoryEvent {
  const GetChildCategoryDetails();

  @override
  List<Object> get props => [];
}
