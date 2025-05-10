// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategoryModelImpl _$$CategoryModelImplFromJson(Map<String, dynamic> json) =>
    _$CategoryModelImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      successStatus: json['success_status'] as bool?,
    );

Map<String, dynamic> _$$CategoryModelImplToJson(_$CategoryModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'success_status': instance.successStatus,
    };

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      count: (json['count'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      size: (json['size'] as num?)?.toInt(),
      parentCategories: (json['parentCategories'] as List<dynamic>?)
          ?.map((e) => ParentCategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'page': instance.page,
      'size': instance.size,
      'parentCategories': instance.parentCategories,
    };

_$ParentCategoryModelImpl _$$ParentCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ParentCategoryModelImpl(
      id: json['id'] as String?,
      parentCategoryUuid: json['parent_category_uuid'] as String?,
      parentCategoryName: json['parent_category_name'] as String?,
      categoryIcon: json['category_icon'] as String?,
      headline: json['headline'] as String?,
      status: json['status'] as String?,
      categoryDescription: json['category_description'] as String?,
      categoryKeywords: (json['category_keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      categoryTags: (json['category_tags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      categoryScreen: json['category_screen'] as bool?,
      filterScreen: json['filter_screen'] as bool?,
      searchScreen: json['search_screen'] as bool?,
      // selectedChildCategories: (json['selected_child_categories']
      //         as List<dynamic>?)
      //     ?.map((e) =>
      //         SelectedChildCategoryModel.fromJson(e as Map<String, dynamic>))
      //     .toList(),
      selectedChildCategories: (json['selected_child_categories'] as List<dynamic>?)
    ?.map((e) {
      if (e is Map<String, dynamic>) {
        return SelectedChildCategoryModel.fromJson(e);
      } else {
        // // Log or handle the case where `e` is not a Map
        // print('Unexpected type in selected_child_categories: $e');
        // return null;
      }
    })
    .whereType<SelectedChildCategoryModel>() // Remove null values if any
    .toList(),

      updatedOn: json['updated_on'] == null
          ? null
          : DateTime.parse(json['updated_on'] as String),
    );

Map<String, dynamic> _$$ParentCategoryModelImplToJson(
        _$ParentCategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_category_uuid': instance.parentCategoryUuid,
      'parent_category_name': instance.parentCategoryName,
      'category_icon': instance.categoryIcon,
      'headline': instance.headline,
      'status': instance.status,
      'category_description': instance.categoryDescription,
      'category_keywords': instance.categoryKeywords,
      'category_tags': instance.categoryTags,
      'category_screen': instance.categoryScreen,
      'filter_screen': instance.filterScreen,
      'search_screen': instance.searchScreen,
      'selected_child_categories': instance.selectedChildCategories,
      'updated_on': instance.updatedOn?.toIso8601String(),
    };

_$SelectedChildCategoryModelImpl _$$SelectedChildCategoryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectedChildCategoryModelImpl(
      id: json['id'] as String?,
      childCategoryUuid: json['child_category_uuid'] as String?,
      childCategoryName: json['child_category_name'] as String?,
      categoryIcon: json['category_icon'] as String?,
      headline: json['headline'] as String?,
      status: json['status'] as String?,
      categoryDescription: json['category_description'] as String?,
      categoryKeywords: (json['category_keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      categoryTags: (json['category_tags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      categoryScreen: json['category_screen'] as bool?,
      filterScreen: json['filter_screen'] as bool?,
      searchScreen: json['search_screen'] as bool?,
      selectedParentCategories:
          (json['selected_parent_categories'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
      updatedOn: json['updated_on'] == null
          ? null
          : DateTime.parse(json['updated_on'] as String),
      isActive: json['is_active'] as bool?,
      createdOn: json['created_on'] == null
          ? null
          : DateTime.parse(json['created_on'] as String),
    );

Map<String, dynamic> _$$SelectedChildCategoryModelImplToJson(
        _$SelectedChildCategoryModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'child_category_uuid': instance.childCategoryUuid,
      'child_category_name': instance.childCategoryName,
      'category_icon': instance.categoryIcon,
      'headline': instance.headline,
      'status': instance.status,
      'category_description': instance.categoryDescription,
      'category_keywords': instance.categoryKeywords,
      'category_tags': instance.categoryTags,
      'category_screen': instance.categoryScreen,
      'filter_screen': instance.filterScreen,
      'search_screen': instance.searchScreen,
      'selected_parent_categories': instance.selectedParentCategories,
      'updated_on': instance.updatedOn?.toIso8601String(),
      'is_active': instance.isActive,
      'created_on': instance.createdOn?.toIso8601String(),
    };
