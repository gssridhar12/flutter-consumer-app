class CategoryEntity {
  final String? code;
  final String? message;
  final Data? data;
  final bool? successStatus;

  CategoryEntity({
    this.code,
    this.message,
    this.data,
    this.successStatus,
  });
}

class Data {
  final int? count;
  final int? page;
  final int? size;
  final List<ParentCategory>? parentCategories;

  Data({
    this.count,
    this.page,
    this.size,
    this.parentCategories,
  });
}

class ParentCategory {
  final String? id;
  final String? parentCategoryUuid;
  final String? parentCategoryName;
  final String? categoryIcon;
  final String? headline;
  final String? status;
  final String? categoryDescription;
  final List<String>? categoryKeywords;
  final List<String>? categoryTags;
  final bool? categoryScreen;
  final bool? filterScreen;
  final bool? searchScreen;
  final List<SelectedChildCategory>? selectedChildCategories;
  final DateTime? updatedOn;

  ParentCategory({
    this.id,
    this.parentCategoryUuid,
    this.parentCategoryName,
    this.categoryIcon,
    this.headline,
    this.status,
    this.categoryDescription,
    this.categoryKeywords,
    this.categoryTags,
    this.categoryScreen,
    this.filterScreen,
    this.searchScreen,
    this.selectedChildCategories,
    this.updatedOn,
  });
}

class SelectedChildCategory {
  final String? id;
  final String? childCategoryUuid;
  final String? childCategoryName;
  final String? categoryIcon;
  final String? headline;
  final String? status;
  final String? categoryDescription;
  final List<String>? categoryKeywords;
  final List<String>? categoryTags;
  final bool? categoryScreen;
  final bool? filterScreen;
  final bool? searchScreen;
  final List<String>? selectedParentCategories;
  final DateTime? updatedOn;
  final bool? isActive;
  final DateTime? createdOn;

  SelectedChildCategory({
    this.id,
    this.childCategoryUuid,
    this.childCategoryName,
    this.categoryIcon,
    this.headline,
    this.status,
    this.categoryDescription,
    this.categoryKeywords,
    this.categoryTags,
    this.categoryScreen,
    this.filterScreen,
    this.searchScreen,
    this.selectedParentCategories,
    this.updatedOn,
    this.isActive,
    this.createdOn,
  });
}
