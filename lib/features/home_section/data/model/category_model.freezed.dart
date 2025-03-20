// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return _CategoryModel.fromJson(json);
}

/// @nodoc
mixin _$CategoryModel {
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DataModel? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "success_status")
  bool? get successStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryModelCopyWith<CategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryModelCopyWith<$Res> {
  factory $CategoryModelCopyWith(
          CategoryModel value, $Res Function(CategoryModel) then) =
      _$CategoryModelCopyWithImpl<$Res, CategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataModel? data,
      @JsonKey(name: "success_status") bool? successStatus});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$CategoryModelCopyWithImpl<$Res, $Val extends CategoryModel>
    implements $CategoryModelCopyWith<$Res> {
  _$CategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? successStatus = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel?,
      successStatus: freezed == successStatus
          ? _value.successStatus
          : successStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryModelImplCopyWith<$Res>
    implements $CategoryModelCopyWith<$Res> {
  factory _$$CategoryModelImplCopyWith(
          _$CategoryModelImpl value, $Res Function(_$CategoryModelImpl) then) =
      __$$CategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataModel? data,
      @JsonKey(name: "success_status") bool? successStatus});

  @override
  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$CategoryModelImplCopyWithImpl<$Res>
    extends _$CategoryModelCopyWithImpl<$Res, _$CategoryModelImpl>
    implements _$$CategoryModelImplCopyWith<$Res> {
  __$$CategoryModelImplCopyWithImpl(
      _$CategoryModelImpl _value, $Res Function(_$CategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? successStatus = freezed,
  }) {
    return _then(_$CategoryModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel?,
      successStatus: freezed == successStatus
          ? _value.successStatus
          : successStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryModelImpl implements _CategoryModel {
  const _$CategoryModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "success_status") this.successStatus});

  factory _$CategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final DataModel? data;
  @override
  @JsonKey(name: "success_status")
  final bool? successStatus;

  @override
  String toString() {
    return 'CategoryModel(code: $code, message: $message, data: $data, successStatus: $successStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.successStatus, successStatus) ||
                other.successStatus == successStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, message, data, successStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      __$$CategoryModelImplCopyWithImpl<_$CategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryModelImplToJson(
      this,
    );
  }
}

abstract class _CategoryModel implements CategoryModel {
  const factory _CategoryModel(
          {@JsonKey(name: "code") final String? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final DataModel? data,
          @JsonKey(name: "success_status") final bool? successStatus}) =
      _$CategoryModelImpl;

  factory _CategoryModel.fromJson(Map<String, dynamic> json) =
      _$CategoryModelImpl.fromJson;

  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  DataModel? get data;
  @override
  @JsonKey(name: "success_status")
  bool? get successStatus;
  @override
  @JsonKey(ignore: true)
  _$$CategoryModelImplCopyWith<_$CategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: "size")
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: "parentCategories")
  List<ParentCategoryModel>? get parentCategories =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res, DataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "count") int? count,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "size") int? size,
      @JsonKey(name: "parentCategories")
      List<ParentCategoryModel>? parentCategories});
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res, $Val extends DataModel>
    implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? page = freezed,
    Object? size = freezed,
    Object? parentCategories = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      parentCategories: freezed == parentCategories
          ? _value.parentCategories
          : parentCategories // ignore: cast_nullable_to_non_nullable
              as List<ParentCategoryModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataModelImplCopyWith<$Res>
    implements $DataModelCopyWith<$Res> {
  factory _$$DataModelImplCopyWith(
          _$DataModelImpl value, $Res Function(_$DataModelImpl) then) =
      __$$DataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "count") int? count,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "size") int? size,
      @JsonKey(name: "parentCategories")
      List<ParentCategoryModel>? parentCategories});
}

/// @nodoc
class __$$DataModelImplCopyWithImpl<$Res>
    extends _$DataModelCopyWithImpl<$Res, _$DataModelImpl>
    implements _$$DataModelImplCopyWith<$Res> {
  __$$DataModelImplCopyWithImpl(
      _$DataModelImpl _value, $Res Function(_$DataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? count = freezed,
    Object? page = freezed,
    Object? size = freezed,
    Object? parentCategories = freezed,
  }) {
    return _then(_$DataModelImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      parentCategories: freezed == parentCategories
          ? _value._parentCategories
          : parentCategories // ignore: cast_nullable_to_non_nullable
              as List<ParentCategoryModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl implements _DataModel {
  const _$DataModelImpl(
      {@JsonKey(name: "count") this.count,
      @JsonKey(name: "page") this.page,
      @JsonKey(name: "size") this.size,
      @JsonKey(name: "parentCategories")
      final List<ParentCategoryModel>? parentCategories})
      : _parentCategories = parentCategories;

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  @override
  @JsonKey(name: "count")
  final int? count;
  @override
  @JsonKey(name: "page")
  final int? page;
  @override
  @JsonKey(name: "size")
  final int? size;
  final List<ParentCategoryModel>? _parentCategories;
  @override
  @JsonKey(name: "parentCategories")
  List<ParentCategoryModel>? get parentCategories {
    final value = _parentCategories;
    if (value == null) return null;
    if (_parentCategories is EqualUnmodifiableListView)
      return _parentCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataModel(count: $count, page: $page, size: $size, parentCategories: $parentCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality()
                .equals(other._parentCategories, _parentCategories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, page, size,
      const DeepCollectionEquality().hash(_parentCategories));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      __$$DataModelImplCopyWithImpl<_$DataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataModelImplToJson(
      this,
    );
  }
}

abstract class _DataModel implements DataModel {
  const factory _DataModel(
      {@JsonKey(name: "count") final int? count,
      @JsonKey(name: "page") final int? page,
      @JsonKey(name: "size") final int? size,
      @JsonKey(name: "parentCategories")
      final List<ParentCategoryModel>? parentCategories}) = _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @JsonKey(name: "count")
  int? get count;
  @override
  @JsonKey(name: "page")
  int? get page;
  @override
  @JsonKey(name: "size")
  int? get size;
  @override
  @JsonKey(name: "parentCategories")
  List<ParentCategoryModel>? get parentCategories;
  @override
  @JsonKey(ignore: true)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ParentCategoryModel _$ParentCategoryModelFromJson(Map<String, dynamic> json) {
  return _ParentCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$ParentCategoryModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_category_uuid")
  String? get parentCategoryUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_category_name")
  String? get parentCategoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "category_icon")
  String? get categoryIcon => throw _privateConstructorUsedError;
  @JsonKey(name: "headline")
  String? get headline => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "category_description")
  String? get categoryDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "category_keywords")
  List<String>? get categoryKeywords => throw _privateConstructorUsedError;
  @JsonKey(name: "category_tags")
  List<String>? get categoryTags => throw _privateConstructorUsedError;
  @JsonKey(name: "category_screen")
  bool? get categoryScreen => throw _privateConstructorUsedError;
  @JsonKey(name: "filter_screen")
  bool? get filterScreen => throw _privateConstructorUsedError;
  @JsonKey(name: "search_screen")
  bool? get searchScreen => throw _privateConstructorUsedError;
  @JsonKey(name: "selected_child_categories")
  List<SelectedChildCategoryModel>? get selectedChildCategories =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "updated_on")
  DateTime? get updatedOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ParentCategoryModelCopyWith<ParentCategoryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ParentCategoryModelCopyWith<$Res> {
  factory $ParentCategoryModelCopyWith(
          ParentCategoryModel value, $Res Function(ParentCategoryModel) then) =
      _$ParentCategoryModelCopyWithImpl<$Res, ParentCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
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
      @JsonKey(name: "updated_on") DateTime? updatedOn});
}

/// @nodoc
class _$ParentCategoryModelCopyWithImpl<$Res, $Val extends ParentCategoryModel>
    implements $ParentCategoryModelCopyWith<$Res> {
  _$ParentCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parentCategoryUuid = freezed,
    Object? parentCategoryName = freezed,
    Object? categoryIcon = freezed,
    Object? headline = freezed,
    Object? status = freezed,
    Object? categoryDescription = freezed,
    Object? categoryKeywords = freezed,
    Object? categoryTags = freezed,
    Object? categoryScreen = freezed,
    Object? filterScreen = freezed,
    Object? searchScreen = freezed,
    Object? selectedChildCategories = freezed,
    Object? updatedOn = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCategoryUuid: freezed == parentCategoryUuid
          ? _value.parentCategoryUuid
          : parentCategoryUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCategoryName: freezed == parentCategoryName
          ? _value.parentCategoryName
          : parentCategoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIcon: freezed == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryDescription: freezed == categoryDescription
          ? _value.categoryDescription
          : categoryDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryKeywords: freezed == categoryKeywords
          ? _value.categoryKeywords
          : categoryKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categoryTags: freezed == categoryTags
          ? _value.categoryTags
          : categoryTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categoryScreen: freezed == categoryScreen
          ? _value.categoryScreen
          : categoryScreen // ignore: cast_nullable_to_non_nullable
              as bool?,
      filterScreen: freezed == filterScreen
          ? _value.filterScreen
          : filterScreen // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchScreen: freezed == searchScreen
          ? _value.searchScreen
          : searchScreen // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectedChildCategories: freezed == selectedChildCategories
          ? _value.selectedChildCategories
          : selectedChildCategories // ignore: cast_nullable_to_non_nullable
              as List<SelectedChildCategoryModel>?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ParentCategoryModelImplCopyWith<$Res>
    implements $ParentCategoryModelCopyWith<$Res> {
  factory _$$ParentCategoryModelImplCopyWith(_$ParentCategoryModelImpl value,
          $Res Function(_$ParentCategoryModelImpl) then) =
      __$$ParentCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
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
      @JsonKey(name: "updated_on") DateTime? updatedOn});
}

/// @nodoc
class __$$ParentCategoryModelImplCopyWithImpl<$Res>
    extends _$ParentCategoryModelCopyWithImpl<$Res, _$ParentCategoryModelImpl>
    implements _$$ParentCategoryModelImplCopyWith<$Res> {
  __$$ParentCategoryModelImplCopyWithImpl(_$ParentCategoryModelImpl _value,
      $Res Function(_$ParentCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parentCategoryUuid = freezed,
    Object? parentCategoryName = freezed,
    Object? categoryIcon = freezed,
    Object? headline = freezed,
    Object? status = freezed,
    Object? categoryDescription = freezed,
    Object? categoryKeywords = freezed,
    Object? categoryTags = freezed,
    Object? categoryScreen = freezed,
    Object? filterScreen = freezed,
    Object? searchScreen = freezed,
    Object? selectedChildCategories = freezed,
    Object? updatedOn = freezed,
  }) {
    return _then(_$ParentCategoryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCategoryUuid: freezed == parentCategoryUuid
          ? _value.parentCategoryUuid
          : parentCategoryUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      parentCategoryName: freezed == parentCategoryName
          ? _value.parentCategoryName
          : parentCategoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIcon: freezed == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryDescription: freezed == categoryDescription
          ? _value.categoryDescription
          : categoryDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryKeywords: freezed == categoryKeywords
          ? _value._categoryKeywords
          : categoryKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categoryTags: freezed == categoryTags
          ? _value._categoryTags
          : categoryTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categoryScreen: freezed == categoryScreen
          ? _value.categoryScreen
          : categoryScreen // ignore: cast_nullable_to_non_nullable
              as bool?,
      filterScreen: freezed == filterScreen
          ? _value.filterScreen
          : filterScreen // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchScreen: freezed == searchScreen
          ? _value.searchScreen
          : searchScreen // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectedChildCategories: freezed == selectedChildCategories
          ? _value._selectedChildCategories
          : selectedChildCategories // ignore: cast_nullable_to_non_nullable
              as List<SelectedChildCategoryModel>?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ParentCategoryModelImpl implements _ParentCategoryModel {
  const _$ParentCategoryModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "parent_category_uuid") this.parentCategoryUuid,
      @JsonKey(name: "parent_category_name") this.parentCategoryName,
      @JsonKey(name: "category_icon") this.categoryIcon,
      @JsonKey(name: "headline") this.headline,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "category_description") this.categoryDescription,
      @JsonKey(name: "category_keywords") final List<String>? categoryKeywords,
      @JsonKey(name: "category_tags") final List<String>? categoryTags,
      @JsonKey(name: "category_screen") this.categoryScreen,
      @JsonKey(name: "filter_screen") this.filterScreen,
      @JsonKey(name: "search_screen") this.searchScreen,
      @JsonKey(name: "selected_child_categories")
      final List<SelectedChildCategoryModel>? selectedChildCategories,
      @JsonKey(name: "updated_on") this.updatedOn})
      : _categoryKeywords = categoryKeywords,
        _categoryTags = categoryTags,
        _selectedChildCategories = selectedChildCategories;

  factory _$ParentCategoryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ParentCategoryModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "parent_category_uuid")
  final String? parentCategoryUuid;
  @override
  @JsonKey(name: "parent_category_name")
  final String? parentCategoryName;
  @override
  @JsonKey(name: "category_icon")
  final String? categoryIcon;
  @override
  @JsonKey(name: "headline")
  final String? headline;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "category_description")
  final String? categoryDescription;
  final List<String>? _categoryKeywords;
  @override
  @JsonKey(name: "category_keywords")
  List<String>? get categoryKeywords {
    final value = _categoryKeywords;
    if (value == null) return null;
    if (_categoryKeywords is EqualUnmodifiableListView)
      return _categoryKeywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _categoryTags;
  @override
  @JsonKey(name: "category_tags")
  List<String>? get categoryTags {
    final value = _categoryTags;
    if (value == null) return null;
    if (_categoryTags is EqualUnmodifiableListView) return _categoryTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "category_screen")
  final bool? categoryScreen;
  @override
  @JsonKey(name: "filter_screen")
  final bool? filterScreen;
  @override
  @JsonKey(name: "search_screen")
  final bool? searchScreen;
  final List<SelectedChildCategoryModel>? _selectedChildCategories;
  @override
  @JsonKey(name: "selected_child_categories")
  List<SelectedChildCategoryModel>? get selectedChildCategories {
    final value = _selectedChildCategories;
    if (value == null) return null;
    if (_selectedChildCategories is EqualUnmodifiableListView)
      return _selectedChildCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "updated_on")
  final DateTime? updatedOn;

  @override
  String toString() {
    return 'ParentCategoryModel(id: $id, parentCategoryUuid: $parentCategoryUuid, parentCategoryName: $parentCategoryName, categoryIcon: $categoryIcon, headline: $headline, status: $status, categoryDescription: $categoryDescription, categoryKeywords: $categoryKeywords, categoryTags: $categoryTags, categoryScreen: $categoryScreen, filterScreen: $filterScreen, searchScreen: $searchScreen, selectedChildCategories: $selectedChildCategories, updatedOn: $updatedOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ParentCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentCategoryUuid, parentCategoryUuid) ||
                other.parentCategoryUuid == parentCategoryUuid) &&
            (identical(other.parentCategoryName, parentCategoryName) ||
                other.parentCategoryName == parentCategoryName) &&
            (identical(other.categoryIcon, categoryIcon) ||
                other.categoryIcon == categoryIcon) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.categoryDescription, categoryDescription) ||
                other.categoryDescription == categoryDescription) &&
            const DeepCollectionEquality()
                .equals(other._categoryKeywords, _categoryKeywords) &&
            const DeepCollectionEquality()
                .equals(other._categoryTags, _categoryTags) &&
            (identical(other.categoryScreen, categoryScreen) ||
                other.categoryScreen == categoryScreen) &&
            (identical(other.filterScreen, filterScreen) ||
                other.filterScreen == filterScreen) &&
            (identical(other.searchScreen, searchScreen) ||
                other.searchScreen == searchScreen) &&
            const DeepCollectionEquality().equals(
                other._selectedChildCategories, _selectedChildCategories) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      parentCategoryUuid,
      parentCategoryName,
      categoryIcon,
      headline,
      status,
      categoryDescription,
      const DeepCollectionEquality().hash(_categoryKeywords),
      const DeepCollectionEquality().hash(_categoryTags),
      categoryScreen,
      filterScreen,
      searchScreen,
      const DeepCollectionEquality().hash(_selectedChildCategories),
      updatedOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ParentCategoryModelImplCopyWith<_$ParentCategoryModelImpl> get copyWith =>
      __$$ParentCategoryModelImplCopyWithImpl<_$ParentCategoryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ParentCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _ParentCategoryModel implements ParentCategoryModel {
  const factory _ParentCategoryModel(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "parent_category_uuid") final String? parentCategoryUuid,
      @JsonKey(name: "parent_category_name") final String? parentCategoryName,
      @JsonKey(name: "category_icon") final String? categoryIcon,
      @JsonKey(name: "headline") final String? headline,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "category_description") final String? categoryDescription,
      @JsonKey(name: "category_keywords") final List<String>? categoryKeywords,
      @JsonKey(name: "category_tags") final List<String>? categoryTags,
      @JsonKey(name: "category_screen") final bool? categoryScreen,
      @JsonKey(name: "filter_screen") final bool? filterScreen,
      @JsonKey(name: "search_screen") final bool? searchScreen,
      @JsonKey(name: "selected_child_categories")
      final List<SelectedChildCategoryModel>? selectedChildCategories,
      @JsonKey(name: "updated_on")
      final DateTime? updatedOn}) = _$ParentCategoryModelImpl;

  factory _ParentCategoryModel.fromJson(Map<String, dynamic> json) =
      _$ParentCategoryModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "parent_category_uuid")
  String? get parentCategoryUuid;
  @override
  @JsonKey(name: "parent_category_name")
  String? get parentCategoryName;
  @override
  @JsonKey(name: "category_icon")
  String? get categoryIcon;
  @override
  @JsonKey(name: "headline")
  String? get headline;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "category_description")
  String? get categoryDescription;
  @override
  @JsonKey(name: "category_keywords")
  List<String>? get categoryKeywords;
  @override
  @JsonKey(name: "category_tags")
  List<String>? get categoryTags;
  @override
  @JsonKey(name: "category_screen")
  bool? get categoryScreen;
  @override
  @JsonKey(name: "filter_screen")
  bool? get filterScreen;
  @override
  @JsonKey(name: "search_screen")
  bool? get searchScreen;
  @override
  @JsonKey(name: "selected_child_categories")
  List<SelectedChildCategoryModel>? get selectedChildCategories;
  @override
  @JsonKey(name: "updated_on")
  DateTime? get updatedOn;
  @override
  @JsonKey(ignore: true)
  _$$ParentCategoryModelImplCopyWith<_$ParentCategoryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SelectedChildCategoryModel _$SelectedChildCategoryModelFromJson(
    Map<String, dynamic> json) {
  return _SelectedChildCategoryModel.fromJson(json);
}

/// @nodoc
mixin _$SelectedChildCategoryModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "child_category_uuid")
  String? get childCategoryUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "child_category_name")
  String? get childCategoryName => throw _privateConstructorUsedError;
  @JsonKey(name: "category_icon")
  String? get categoryIcon => throw _privateConstructorUsedError;
  @JsonKey(name: "headline")
  String? get headline => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "category_description")
  String? get categoryDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "category_keywords")
  List<String>? get categoryKeywords => throw _privateConstructorUsedError;
  @JsonKey(name: "category_tags")
  List<String>? get categoryTags => throw _privateConstructorUsedError;
  @JsonKey(name: "category_screen")
  bool? get categoryScreen => throw _privateConstructorUsedError;
  @JsonKey(name: "filter_screen")
  bool? get filterScreen => throw _privateConstructorUsedError;
  @JsonKey(name: "search_screen")
  bool? get searchScreen => throw _privateConstructorUsedError;
  @JsonKey(name: "selected_parent_categories")
  List<String>? get selectedParentCategories =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "updated_on")
  DateTime? get updatedOn => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "created_on")
  DateTime? get createdOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectedChildCategoryModelCopyWith<SelectedChildCategoryModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedChildCategoryModelCopyWith<$Res> {
  factory $SelectedChildCategoryModelCopyWith(SelectedChildCategoryModel value,
          $Res Function(SelectedChildCategoryModel) then) =
      _$SelectedChildCategoryModelCopyWithImpl<$Res,
          SelectedChildCategoryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
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
      @JsonKey(name: "created_on") DateTime? createdOn});
}

/// @nodoc
class _$SelectedChildCategoryModelCopyWithImpl<$Res,
        $Val extends SelectedChildCategoryModel>
    implements $SelectedChildCategoryModelCopyWith<$Res> {
  _$SelectedChildCategoryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? childCategoryUuid = freezed,
    Object? childCategoryName = freezed,
    Object? categoryIcon = freezed,
    Object? headline = freezed,
    Object? status = freezed,
    Object? categoryDescription = freezed,
    Object? categoryKeywords = freezed,
    Object? categoryTags = freezed,
    Object? categoryScreen = freezed,
    Object? filterScreen = freezed,
    Object? searchScreen = freezed,
    Object? selectedParentCategories = freezed,
    Object? updatedOn = freezed,
    Object? isActive = freezed,
    Object? createdOn = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      childCategoryUuid: freezed == childCategoryUuid
          ? _value.childCategoryUuid
          : childCategoryUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      childCategoryName: freezed == childCategoryName
          ? _value.childCategoryName
          : childCategoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIcon: freezed == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryDescription: freezed == categoryDescription
          ? _value.categoryDescription
          : categoryDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryKeywords: freezed == categoryKeywords
          ? _value.categoryKeywords
          : categoryKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categoryTags: freezed == categoryTags
          ? _value.categoryTags
          : categoryTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categoryScreen: freezed == categoryScreen
          ? _value.categoryScreen
          : categoryScreen // ignore: cast_nullable_to_non_nullable
              as bool?,
      filterScreen: freezed == filterScreen
          ? _value.filterScreen
          : filterScreen // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchScreen: freezed == searchScreen
          ? _value.searchScreen
          : searchScreen // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectedParentCategories: freezed == selectedParentCategories
          ? _value.selectedParentCategories
          : selectedParentCategories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedChildCategoryModelImplCopyWith<$Res>
    implements $SelectedChildCategoryModelCopyWith<$Res> {
  factory _$$SelectedChildCategoryModelImplCopyWith(
          _$SelectedChildCategoryModelImpl value,
          $Res Function(_$SelectedChildCategoryModelImpl) then) =
      __$$SelectedChildCategoryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
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
      @JsonKey(name: "created_on") DateTime? createdOn});
}

/// @nodoc
class __$$SelectedChildCategoryModelImplCopyWithImpl<$Res>
    extends _$SelectedChildCategoryModelCopyWithImpl<$Res,
        _$SelectedChildCategoryModelImpl>
    implements _$$SelectedChildCategoryModelImplCopyWith<$Res> {
  __$$SelectedChildCategoryModelImplCopyWithImpl(
      _$SelectedChildCategoryModelImpl _value,
      $Res Function(_$SelectedChildCategoryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? childCategoryUuid = freezed,
    Object? childCategoryName = freezed,
    Object? categoryIcon = freezed,
    Object? headline = freezed,
    Object? status = freezed,
    Object? categoryDescription = freezed,
    Object? categoryKeywords = freezed,
    Object? categoryTags = freezed,
    Object? categoryScreen = freezed,
    Object? filterScreen = freezed,
    Object? searchScreen = freezed,
    Object? selectedParentCategories = freezed,
    Object? updatedOn = freezed,
    Object? isActive = freezed,
    Object? createdOn = freezed,
  }) {
    return _then(_$SelectedChildCategoryModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      childCategoryUuid: freezed == childCategoryUuid
          ? _value.childCategoryUuid
          : childCategoryUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      childCategoryName: freezed == childCategoryName
          ? _value.childCategoryName
          : childCategoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryIcon: freezed == categoryIcon
          ? _value.categoryIcon
          : categoryIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      headline: freezed == headline
          ? _value.headline
          : headline // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryDescription: freezed == categoryDescription
          ? _value.categoryDescription
          : categoryDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryKeywords: freezed == categoryKeywords
          ? _value._categoryKeywords
          : categoryKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categoryTags: freezed == categoryTags
          ? _value._categoryTags
          : categoryTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      categoryScreen: freezed == categoryScreen
          ? _value.categoryScreen
          : categoryScreen // ignore: cast_nullable_to_non_nullable
              as bool?,
      filterScreen: freezed == filterScreen
          ? _value.filterScreen
          : filterScreen // ignore: cast_nullable_to_non_nullable
              as bool?,
      searchScreen: freezed == searchScreen
          ? _value.searchScreen
          : searchScreen // ignore: cast_nullable_to_non_nullable
              as bool?,
      selectedParentCategories: freezed == selectedParentCategories
          ? _value._selectedParentCategories
          : selectedParentCategories // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectedChildCategoryModelImpl implements _SelectedChildCategoryModel {
  const _$SelectedChildCategoryModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "child_category_uuid") this.childCategoryUuid,
      @JsonKey(name: "child_category_name") this.childCategoryName,
      @JsonKey(name: "category_icon") this.categoryIcon,
      @JsonKey(name: "headline") this.headline,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "category_description") this.categoryDescription,
      @JsonKey(name: "category_keywords") final List<String>? categoryKeywords,
      @JsonKey(name: "category_tags") final List<String>? categoryTags,
      @JsonKey(name: "category_screen") this.categoryScreen,
      @JsonKey(name: "filter_screen") this.filterScreen,
      @JsonKey(name: "search_screen") this.searchScreen,
      @JsonKey(name: "selected_parent_categories")
      final List<String>? selectedParentCategories,
      @JsonKey(name: "updated_on") this.updatedOn,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "created_on") this.createdOn})
      : _categoryKeywords = categoryKeywords,
        _categoryTags = categoryTags,
        _selectedParentCategories = selectedParentCategories;

  factory _$SelectedChildCategoryModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SelectedChildCategoryModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "child_category_uuid")
  final String? childCategoryUuid;
  @override
  @JsonKey(name: "child_category_name")
  final String? childCategoryName;
  @override
  @JsonKey(name: "category_icon")
  final String? categoryIcon;
  @override
  @JsonKey(name: "headline")
  final String? headline;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "category_description")
  final String? categoryDescription;
  final List<String>? _categoryKeywords;
  @override
  @JsonKey(name: "category_keywords")
  List<String>? get categoryKeywords {
    final value = _categoryKeywords;
    if (value == null) return null;
    if (_categoryKeywords is EqualUnmodifiableListView)
      return _categoryKeywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _categoryTags;
  @override
  @JsonKey(name: "category_tags")
  List<String>? get categoryTags {
    final value = _categoryTags;
    if (value == null) return null;
    if (_categoryTags is EqualUnmodifiableListView) return _categoryTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "category_screen")
  final bool? categoryScreen;
  @override
  @JsonKey(name: "filter_screen")
  final bool? filterScreen;
  @override
  @JsonKey(name: "search_screen")
  final bool? searchScreen;
  final List<String>? _selectedParentCategories;
  @override
  @JsonKey(name: "selected_parent_categories")
  List<String>? get selectedParentCategories {
    final value = _selectedParentCategories;
    if (value == null) return null;
    if (_selectedParentCategories is EqualUnmodifiableListView)
      return _selectedParentCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "updated_on")
  final DateTime? updatedOn;
  @override
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "created_on")
  final DateTime? createdOn;

  @override
  String toString() {
    return 'SelectedChildCategoryModel(id: $id, childCategoryUuid: $childCategoryUuid, childCategoryName: $childCategoryName, categoryIcon: $categoryIcon, headline: $headline, status: $status, categoryDescription: $categoryDescription, categoryKeywords: $categoryKeywords, categoryTags: $categoryTags, categoryScreen: $categoryScreen, filterScreen: $filterScreen, searchScreen: $searchScreen, selectedParentCategories: $selectedParentCategories, updatedOn: $updatedOn, isActive: $isActive, createdOn: $createdOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedChildCategoryModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.childCategoryUuid, childCategoryUuid) ||
                other.childCategoryUuid == childCategoryUuid) &&
            (identical(other.childCategoryName, childCategoryName) ||
                other.childCategoryName == childCategoryName) &&
            (identical(other.categoryIcon, categoryIcon) ||
                other.categoryIcon == categoryIcon) &&
            (identical(other.headline, headline) ||
                other.headline == headline) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.categoryDescription, categoryDescription) ||
                other.categoryDescription == categoryDescription) &&
            const DeepCollectionEquality()
                .equals(other._categoryKeywords, _categoryKeywords) &&
            const DeepCollectionEquality()
                .equals(other._categoryTags, _categoryTags) &&
            (identical(other.categoryScreen, categoryScreen) ||
                other.categoryScreen == categoryScreen) &&
            (identical(other.filterScreen, filterScreen) ||
                other.filterScreen == filterScreen) &&
            (identical(other.searchScreen, searchScreen) ||
                other.searchScreen == searchScreen) &&
            const DeepCollectionEquality().equals(
                other._selectedParentCategories, _selectedParentCategories) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      childCategoryUuid,
      childCategoryName,
      categoryIcon,
      headline,
      status,
      categoryDescription,
      const DeepCollectionEquality().hash(_categoryKeywords),
      const DeepCollectionEquality().hash(_categoryTags),
      categoryScreen,
      filterScreen,
      searchScreen,
      const DeepCollectionEquality().hash(_selectedParentCategories),
      updatedOn,
      isActive,
      createdOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedChildCategoryModelImplCopyWith<_$SelectedChildCategoryModelImpl>
      get copyWith => __$$SelectedChildCategoryModelImplCopyWithImpl<
          _$SelectedChildCategoryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedChildCategoryModelImplToJson(
      this,
    );
  }
}

abstract class _SelectedChildCategoryModel
    implements SelectedChildCategoryModel {
  const factory _SelectedChildCategoryModel(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "child_category_uuid") final String? childCategoryUuid,
      @JsonKey(name: "child_category_name") final String? childCategoryName,
      @JsonKey(name: "category_icon") final String? categoryIcon,
      @JsonKey(name: "headline") final String? headline,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "category_description") final String? categoryDescription,
      @JsonKey(name: "category_keywords") final List<String>? categoryKeywords,
      @JsonKey(name: "category_tags") final List<String>? categoryTags,
      @JsonKey(name: "category_screen") final bool? categoryScreen,
      @JsonKey(name: "filter_screen") final bool? filterScreen,
      @JsonKey(name: "search_screen") final bool? searchScreen,
      @JsonKey(name: "selected_parent_categories")
      final List<String>? selectedParentCategories,
      @JsonKey(name: "updated_on") final DateTime? updatedOn,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "created_on")
      final DateTime? createdOn}) = _$SelectedChildCategoryModelImpl;

  factory _SelectedChildCategoryModel.fromJson(Map<String, dynamic> json) =
      _$SelectedChildCategoryModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "child_category_uuid")
  String? get childCategoryUuid;
  @override
  @JsonKey(name: "child_category_name")
  String? get childCategoryName;
  @override
  @JsonKey(name: "category_icon")
  String? get categoryIcon;
  @override
  @JsonKey(name: "headline")
  String? get headline;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "category_description")
  String? get categoryDescription;
  @override
  @JsonKey(name: "category_keywords")
  List<String>? get categoryKeywords;
  @override
  @JsonKey(name: "category_tags")
  List<String>? get categoryTags;
  @override
  @JsonKey(name: "category_screen")
  bool? get categoryScreen;
  @override
  @JsonKey(name: "filter_screen")
  bool? get filterScreen;
  @override
  @JsonKey(name: "search_screen")
  bool? get searchScreen;
  @override
  @JsonKey(name: "selected_parent_categories")
  List<String>? get selectedParentCategories;
  @override
  @JsonKey(name: "updated_on")
  DateTime? get updatedOn;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "created_on")
  DateTime? get createdOn;
  @override
  @JsonKey(ignore: true)
  _$$SelectedChildCategoryModelImplCopyWith<_$SelectedChildCategoryModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
