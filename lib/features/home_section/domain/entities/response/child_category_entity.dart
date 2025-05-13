

class ChildCategoryEntity {
    String code;
    String message;
    Data data;
    bool successStatus;

    ChildCategoryEntity({
        required this.code,
        required this.message,
        required this.data,
        required this.successStatus,
    });

    factory ChildCategoryEntity.fromJson(Map<String, dynamic> json) => ChildCategoryEntity(
        code: json["code"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
        successStatus: json["success_status"],
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data.toJson(),
        "success_status": successStatus,
    };
}

class Data {
    int count;
    List<ChildCategory> childCategories;
    int page;
    int size;

    Data({
        required this.count,
        required this.childCategories,
        required this.page,
        required this.size,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        count: json["count"],
        childCategories: List<ChildCategory>.from(json["childCategories"].map((x) => ChildCategory.fromJson(x))),
        page: json["page"],
        size: json["size"],
    );

    Map<String, dynamic> toJson() => {
        "count": count,
        "childCategories": List<dynamic>.from(childCategories.map((x) => x.toJson())),
        "page": page,
        "size": size,
    };
}

class ChildCategory {
    String id;
    String? parentCategoryUuid;
    String childCategoryUuid;
    String childCategoryName;
    String categoryIcon;
    String headline;
    String status;
    String categoryDescription;
    List<String> categoryKeywords;
    List<String> categoryTags;
    bool categoryScreen;
    bool filterScreen;
    bool searchScreen;
    List<String>? selectedParentCategories;
    DateTime updatedOn;
    bool? isActive;
    List<String>? parentCategoryName;
    DateTime? createdOn;

    ChildCategory({
        required this.id,
        this.parentCategoryUuid,
        required this.childCategoryUuid,
        required this.childCategoryName,
        required this.categoryIcon,
        required this.headline,
        required this.status,
        required this.categoryDescription,
        required this.categoryKeywords,
        required this.categoryTags,
        required this.categoryScreen,
        required this.filterScreen,
        required this.searchScreen,
        this.selectedParentCategories,
        required this.updatedOn,
        this.isActive,
        this.parentCategoryName,
        this.createdOn,
    });

    factory ChildCategory.fromJson(Map<String, dynamic> json) => ChildCategory(
        id: json["id"],
        parentCategoryUuid: json["parent_category_uuid"],
        childCategoryUuid: json["child_category_uuid"],
        childCategoryName: json["child_category_name"],
        categoryIcon: json["category_icon"],
        headline: json["headline"],
        status: json["status"],
        categoryDescription: json["category_description"],
        categoryKeywords: List<String>.from(json["category_keywords"].map((x) => x)),
        categoryTags: List<String>.from(json["category_tags"].map((x) => x)),
        categoryScreen: json["category_screen"],
        filterScreen: json["filter_screen"],
        searchScreen: json["search_screen"],
        selectedParentCategories: json["selected_parent_categories"] == null ? [] : List<String>.from(json["selected_parent_categories"]!.map((x) => x)),
        updatedOn: DateTime.parse(json["updated_on"]),
        isActive: json["is_active"],
        parentCategoryName: json["parent_category_name"] == null ? [] : List<String>.from(json["parent_category_name"]!.map((x) => x)),
        createdOn: json["created_on"] == null ? null : DateTime.parse(json["created_on"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "parent_category_uuid": parentCategoryUuid,
        "child_category_uuid": childCategoryUuid,
        "child_category_name": childCategoryName,
        "category_icon": categoryIcon,
        "headline": headline,
        "status": status,
        "category_description": categoryDescription,
        "category_keywords": List<dynamic>.from(categoryKeywords.map((x) => x)),
        "category_tags": List<dynamic>.from(categoryTags.map((x) => x)),
        "category_screen": categoryScreen,
        "filter_screen": filterScreen,
        "search_screen": searchScreen,
        "selected_parent_categories": selectedParentCategories == null ? [] : List<dynamic>.from(selectedParentCategories!.map((x) => x)),
        "updated_on": updatedOn.toIso8601String(),
        "is_active": isActive,
        "parent_category_name": parentCategoryName == null ? [] : List<dynamic>.from(parentCategoryName!.map((x) => x)),
        "created_on": createdOn?.toIso8601String(),
    };
}
