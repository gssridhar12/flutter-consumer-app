import 'package:flutter_consumer_app/features/home_section/domain/entities/response/child_category_entity.dart';

class ChildCategoryModelClass extends ChildCategoryEntity {
  ChildCategoryModelClass({
    required String code,
    required String message,
    required Data data,
    required bool successStatus,
    // Add any additional parameters if needed
  }) : super(
          code: code,
          message: message,
          data: data,
          successStatus: successStatus,
        );

  factory ChildCategoryModelClass.fromJson(Map<String, dynamic> json) =>
      ChildCategoryModelClass(
        code: json["code"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
        successStatus: json["success_status"],
        // Add any additional parameters if needed
      );
}

class DataModel extends Data {
  DataModel({
    required int count,
    required List<ChildCategory> childCategories,
    required int page,
    required int size,
    // Add any additional parameters if needed
  }) : super(
          count: count,
          childCategories: childCategories,
          page: page,
          size: size,
        );

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        count: json["count"],
        childCategories: List<ChildCategory>.from(
            json["childCategories"].map((x) => ChildCategory.fromJson(x))),
        page: json["page"],
        size: json["size"],
        // Add any additional parameters if needed
      );
}

class ChildCategoryModel extends ChildCategory {
  ChildCategoryModel({
    required String id,
    String? parentCategoryUuid,
    required String childCategoryUuid,
    required String childCategoryName,
    required String categoryIcon,
    required String headline,
    required String status,
    required String categoryDescription,
    required List<String> categoryKeywords,
    required List<String> categoryTags,
    required bool categoryScreen,
    required bool filterScreen,
    required bool searchScreen,
    List<String>? selectedParentCategories,
    required DateTime updatedOn,
    bool? isActive,
    List<String>? parentCategoryName,
    DateTime? createdOn,
    // Add any additional parameters if needed
  }) : super(
          id: id,
          parentCategoryUuid: parentCategoryUuid,
          childCategoryUuid: childCategoryUuid,
          childCategoryName: childCategoryName,
          categoryIcon: categoryIcon,
          headline: headline,
          status: status,
          categoryDescription: categoryDescription,
          categoryKeywords: categoryKeywords,
          categoryTags: categoryTags,
          categoryScreen: categoryScreen,
          filterScreen: filterScreen,
          searchScreen: searchScreen,
          selectedParentCategories: selectedParentCategories,
          updatedOn: updatedOn,
          isActive: isActive,
          parentCategoryName: parentCategoryName,
          createdOn: createdOn,
        );

  factory ChildCategoryModel.fromJson(Map<String, dynamic> json) =>
      ChildCategoryModel(
        id: json["id"],
        parentCategoryUuid: json["parent_category_uuid"],
        childCategoryUuid: json["child_category_uuid"],
        childCategoryName: json["child_category_name"],
        categoryIcon: json["category_icon"],
        headline: json["headline"],
        status: json["status"],
        categoryDescription: json["category_description"],
        categoryKeywords:
            List<String>.from(json["category_keywords"].map((x) => x)),
        categoryTags: List<String>.from(json["category_tags"].map((x) => x)),
        categoryScreen: json["category_screen"],
        filterScreen: json["filter_screen"],
        searchScreen: json["search_screen"],
        selectedParentCategories: json["selected_parent_categories"] == null
            ? []
            : List<String>.from(
                json["selected_parent_categories"]!.map((x) => x)),
        updatedOn: DateTime.parse(json["updated_on"]),
        isActive: json["is_active"],
        parentCategoryName: json["parent_category_name"] == null
            ? []
            : List<String>.from(json["parent_category_name"]!.map((x) => x)),
        createdOn: json["created_on"] == null
            ? null
            : DateTime.parse(json["created_on"]),
        // Add any additional parameters if needed
      );
}
