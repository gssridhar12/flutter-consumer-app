// To parse this JSON data, do
//
//     final categoryModel = categoryModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:flutter_consumer_app/features/home_section/domain/entities/response/category_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_model.freezed.dart';
part 'category_model.g.dart';

@freezed
class CategoryModel extends CategoryEntity with _$CategoryModel {
  const factory CategoryModel({
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") DataModel? data,
    @JsonKey(name: "success_status") bool? successStatus,
  }) = _CategoryModel;

  factory CategoryModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryModelFromJson(json);
}

@freezed
class DataModel extends Data with _$DataModel {
  const factory DataModel({
    @JsonKey(name: "count") int? count,
    @JsonKey(name: "page") int? page,
    @JsonKey(name: "size") int? size,
    @JsonKey(name: "parentCategories")
    List<ParentCategoryModel>? parentCategories,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}

@freezed
class ParentCategoryModel extends ParentCategory with _$ParentCategoryModel {
  const factory ParentCategoryModel({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "parent_category_uuid") String? parentCategoryUuid,
    @JsonKey(name: "parent_category_name") String? parentCategoryName,
    @JsonKey(name: "category_icon") String? categoryIcon,
    @JsonKey(name: "headline") String? headline,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "category_description") String? categoryDescription,
    @JsonKey(name: "category_keywords") List<String>? categoryKeywords,
    @JsonKey(name: "category_tags") List<String>? categoryTags,
    @JsonKey(name: "category_screen") bool? categoryScreen,
    @JsonKey(name: "filter_screen") bool? filterScreen,
    @JsonKey(name: "search_screen") bool? searchScreen,
    @JsonKey(name: "selected_child_categories")
    List<SelectedChildCategoryModel>? selectedChildCategories,
    @JsonKey(name: "updated_on") DateTime? updatedOn,
  }) = _ParentCategoryModel;

  factory ParentCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$ParentCategoryModelFromJson(json);
}

@freezed
class SelectedChildCategoryModel extends SelectedChildCategory
    with _$SelectedChildCategoryModel {
  const factory SelectedChildCategoryModel({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "child_category_uuid") String? childCategoryUuid,
    @JsonKey(name: "child_category_name") String? childCategoryName,
    @JsonKey(name: "category_icon") String? categoryIcon,
    @JsonKey(name: "headline") String? headline,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "category_description") String? categoryDescription,
    @JsonKey(name: "category_keywords") List<String>? categoryKeywords,
    @JsonKey(name: "category_tags") List<String>? categoryTags,
    @JsonKey(name: "category_screen") bool? categoryScreen,
    @JsonKey(name: "filter_screen") bool? filterScreen,
    @JsonKey(name: "search_screen") bool? searchScreen,
    @JsonKey(name: "selected_parent_categories")
    List<String>? selectedParentCategories,
    @JsonKey(name: "updated_on") DateTime? updatedOn,
    @JsonKey(name: "is_active") bool? isActive,
    @JsonKey(name: "created_on") DateTime? createdOn,
  }) = _SelectedChildCategoryModel;

  factory SelectedChildCategoryModel.fromJson(Map<String, dynamic> json) =>
      _$SelectedChildCategoryModelFromJson(json);
}
