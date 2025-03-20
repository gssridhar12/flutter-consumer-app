// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_bucket_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetBucketModel _$GetBucketModelFromJson(Map<String, dynamic> json) {
  return _GetBucketModel.fromJson(json);
}

/// @nodoc
mixin _$GetBucketModel {
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
  $GetBucketModelCopyWith<GetBucketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBucketModelCopyWith<$Res> {
  factory $GetBucketModelCopyWith(
          GetBucketModel value, $Res Function(GetBucketModel) then) =
      _$GetBucketModelCopyWithImpl<$Res, GetBucketModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataModel? data,
      @JsonKey(name: "success_status") bool? successStatus});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetBucketModelCopyWithImpl<$Res, $Val extends GetBucketModel>
    implements $GetBucketModelCopyWith<$Res> {
  _$GetBucketModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GetBucketModelImplCopyWith<$Res>
    implements $GetBucketModelCopyWith<$Res> {
  factory _$$GetBucketModelImplCopyWith(_$GetBucketModelImpl value,
          $Res Function(_$GetBucketModelImpl) then) =
      __$$GetBucketModelImplCopyWithImpl<$Res>;
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
class __$$GetBucketModelImplCopyWithImpl<$Res>
    extends _$GetBucketModelCopyWithImpl<$Res, _$GetBucketModelImpl>
    implements _$$GetBucketModelImplCopyWith<$Res> {
  __$$GetBucketModelImplCopyWithImpl(
      _$GetBucketModelImpl _value, $Res Function(_$GetBucketModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? successStatus = freezed,
  }) {
    return _then(_$GetBucketModelImpl(
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
class _$GetBucketModelImpl implements _GetBucketModel {
  const _$GetBucketModelImpl(
      {@JsonKey(name: "code") required this.code,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required this.data,
      @JsonKey(name: "success_status") required this.successStatus});

  factory _$GetBucketModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBucketModelImplFromJson(json);

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
    return 'GetBucketModel(code: $code, message: $message, data: $data, successStatus: $successStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBucketModelImpl &&
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
  _$$GetBucketModelImplCopyWith<_$GetBucketModelImpl> get copyWith =>
      __$$GetBucketModelImplCopyWithImpl<_$GetBucketModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBucketModelImplToJson(
      this,
    );
  }
}

abstract class _GetBucketModel implements GetBucketModel {
  const factory _GetBucketModel(
      {@JsonKey(name: "code") required final String? code,
      @JsonKey(name: "message") required final String? message,
      @JsonKey(name: "data") required final DataModel? data,
      @JsonKey(name: "success_status")
      required final bool? successStatus}) = _$GetBucketModelImpl;

  factory _GetBucketModel.fromJson(Map<String, dynamic> json) =
      _$GetBucketModelImpl.fromJson;

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
  _$$GetBucketModelImplCopyWith<_$GetBucketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: "bucket")
  BucketModel? get bucket => throw _privateConstructorUsedError;
  @JsonKey(name: "packageReviewAvg")
  List<PackageReviewAvgModel>? get packageReviewAvg =>
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
      {@JsonKey(name: "bucket") BucketModel? bucket,
      @JsonKey(name: "packageReviewAvg")
      List<PackageReviewAvgModel>? packageReviewAvg});

  $BucketModelCopyWith<$Res>? get bucket;
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
    Object? bucket = freezed,
    Object? packageReviewAvg = freezed,
  }) {
    return _then(_value.copyWith(
      bucket: freezed == bucket
          ? _value.bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as BucketModel?,
      packageReviewAvg: freezed == packageReviewAvg
          ? _value.packageReviewAvg
          : packageReviewAvg // ignore: cast_nullable_to_non_nullable
              as List<PackageReviewAvgModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BucketModelCopyWith<$Res>? get bucket {
    if (_value.bucket == null) {
      return null;
    }

    return $BucketModelCopyWith<$Res>(_value.bucket!, (value) {
      return _then(_value.copyWith(bucket: value) as $Val);
    });
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
      {@JsonKey(name: "bucket") BucketModel? bucket,
      @JsonKey(name: "packageReviewAvg")
      List<PackageReviewAvgModel>? packageReviewAvg});

  @override
  $BucketModelCopyWith<$Res>? get bucket;
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
    Object? bucket = freezed,
    Object? packageReviewAvg = freezed,
  }) {
    return _then(_$DataModelImpl(
      bucket: freezed == bucket
          ? _value.bucket
          : bucket // ignore: cast_nullable_to_non_nullable
              as BucketModel?,
      packageReviewAvg: freezed == packageReviewAvg
          ? _value._packageReviewAvg
          : packageReviewAvg // ignore: cast_nullable_to_non_nullable
              as List<PackageReviewAvgModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl implements _DataModel {
  const _$DataModelImpl(
      {@JsonKey(name: "bucket") required this.bucket,
      @JsonKey(name: "packageReviewAvg")
      required final List<PackageReviewAvgModel>? packageReviewAvg})
      : _packageReviewAvg = packageReviewAvg;

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  @override
  @JsonKey(name: "bucket")
  final BucketModel? bucket;
  final List<PackageReviewAvgModel>? _packageReviewAvg;
  @override
  @JsonKey(name: "packageReviewAvg")
  List<PackageReviewAvgModel>? get packageReviewAvg {
    final value = _packageReviewAvg;
    if (value == null) return null;
    if (_packageReviewAvg is EqualUnmodifiableListView)
      return _packageReviewAvg;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataModel(bucket: $bucket, packageReviewAvg: $packageReviewAvg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            (identical(other.bucket, bucket) || other.bucket == bucket) &&
            const DeepCollectionEquality()
                .equals(other._packageReviewAvg, _packageReviewAvg));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, bucket,
      const DeepCollectionEquality().hash(_packageReviewAvg));

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
          {@JsonKey(name: "bucket") required final BucketModel? bucket,
          @JsonKey(name: "packageReviewAvg")
          required final List<PackageReviewAvgModel>? packageReviewAvg}) =
      _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @JsonKey(name: "bucket")
  BucketModel? get bucket;
  @override
  @JsonKey(name: "packageReviewAvg")
  List<PackageReviewAvgModel>? get packageReviewAvg;
  @override
  @JsonKey(ignore: true)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BucketModel _$BucketModelFromJson(Map<String, dynamic> json) {
  return _BucketModel.fromJson(json);
}

/// @nodoc
mixin _$BucketModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_uuid")
  String? get partnerUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "bucket_uuid")
  String? get bucketUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "bucket_name")
  String? get bucketName => throw _privateConstructorUsedError;
  @JsonKey(name: "bucket_cover_image")
  String? get bucketCoverImage => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_service_category")
  List<dynamic>? get parentServiceCategory =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "child_service_category")
  List<dynamic>? get childServiceCategory => throw _privateConstructorUsedError;
  @JsonKey(name: "package_keywords")
  List<String>? get packageKeywords => throw _privateConstructorUsedError;
  @JsonKey(name: "package_tags")
  List<String>? get packageTags => throw _privateConstructorUsedError;
  @JsonKey(name: "service_location")
  String? get serviceLocation => throw _privateConstructorUsedError;
  @JsonKey(name: "coupons_and_discounts")
  List<dynamic>? get couponsAndDiscounts => throw _privateConstructorUsedError;
  @JsonKey(name: "selected_packages")
  List<SelectedPackageModel>? get selectedPackages =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "created_on")
  DateTime? get createdOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BucketModelCopyWith<BucketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BucketModelCopyWith<$Res> {
  factory $BucketModelCopyWith(
          BucketModel value, $Res Function(BucketModel) then) =
      _$BucketModelCopyWithImpl<$Res, BucketModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "partner_uuid") String? partnerUuid,
      @JsonKey(name: "bucket_uuid") String? bucketUuid,
      @JsonKey(name: "bucket_name") String? bucketName,
      @JsonKey(name: "bucket_cover_image") String? bucketCoverImage,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "parent_service_category")
      List<dynamic>? parentServiceCategory,
      @JsonKey(name: "child_service_category")
      List<dynamic>? childServiceCategory,
      @JsonKey(name: "package_keywords") List<String>? packageKeywords,
      @JsonKey(name: "package_tags") List<String>? packageTags,
      @JsonKey(name: "service_location") String? serviceLocation,
      @JsonKey(name: "coupons_and_discounts")
      List<dynamic>? couponsAndDiscounts,
      @JsonKey(name: "selected_packages")
      List<SelectedPackageModel>? selectedPackages,
      @JsonKey(name: "created_on") DateTime? createdOn});
}

/// @nodoc
class _$BucketModelCopyWithImpl<$Res, $Val extends BucketModel>
    implements $BucketModelCopyWith<$Res> {
  _$BucketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partnerUuid = freezed,
    Object? bucketUuid = freezed,
    Object? bucketName = freezed,
    Object? bucketCoverImage = freezed,
    Object? status = freezed,
    Object? parentServiceCategory = freezed,
    Object? childServiceCategory = freezed,
    Object? packageKeywords = freezed,
    Object? packageTags = freezed,
    Object? serviceLocation = freezed,
    Object? couponsAndDiscounts = freezed,
    Object? selectedPackages = freezed,
    Object? createdOn = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerUuid: freezed == partnerUuid
          ? _value.partnerUuid
          : partnerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      bucketUuid: freezed == bucketUuid
          ? _value.bucketUuid
          : bucketUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      bucketName: freezed == bucketName
          ? _value.bucketName
          : bucketName // ignore: cast_nullable_to_non_nullable
              as String?,
      bucketCoverImage: freezed == bucketCoverImage
          ? _value.bucketCoverImage
          : bucketCoverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      parentServiceCategory: freezed == parentServiceCategory
          ? _value.parentServiceCategory
          : parentServiceCategory // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      childServiceCategory: freezed == childServiceCategory
          ? _value.childServiceCategory
          : childServiceCategory // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      packageKeywords: freezed == packageKeywords
          ? _value.packageKeywords
          : packageKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      packageTags: freezed == packageTags
          ? _value.packageTags
          : packageTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      serviceLocation: freezed == serviceLocation
          ? _value.serviceLocation
          : serviceLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      couponsAndDiscounts: freezed == couponsAndDiscounts
          ? _value.couponsAndDiscounts
          : couponsAndDiscounts // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      selectedPackages: freezed == selectedPackages
          ? _value.selectedPackages
          : selectedPackages // ignore: cast_nullable_to_non_nullable
              as List<SelectedPackageModel>?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BucketModelImplCopyWith<$Res>
    implements $BucketModelCopyWith<$Res> {
  factory _$$BucketModelImplCopyWith(
          _$BucketModelImpl value, $Res Function(_$BucketModelImpl) then) =
      __$$BucketModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "partner_uuid") String? partnerUuid,
      @JsonKey(name: "bucket_uuid") String? bucketUuid,
      @JsonKey(name: "bucket_name") String? bucketName,
      @JsonKey(name: "bucket_cover_image") String? bucketCoverImage,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "parent_service_category")
      List<dynamic>? parentServiceCategory,
      @JsonKey(name: "child_service_category")
      List<dynamic>? childServiceCategory,
      @JsonKey(name: "package_keywords") List<String>? packageKeywords,
      @JsonKey(name: "package_tags") List<String>? packageTags,
      @JsonKey(name: "service_location") String? serviceLocation,
      @JsonKey(name: "coupons_and_discounts")
      List<dynamic>? couponsAndDiscounts,
      @JsonKey(name: "selected_packages")
      List<SelectedPackageModel>? selectedPackages,
      @JsonKey(name: "created_on") DateTime? createdOn});
}

/// @nodoc
class __$$BucketModelImplCopyWithImpl<$Res>
    extends _$BucketModelCopyWithImpl<$Res, _$BucketModelImpl>
    implements _$$BucketModelImplCopyWith<$Res> {
  __$$BucketModelImplCopyWithImpl(
      _$BucketModelImpl _value, $Res Function(_$BucketModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partnerUuid = freezed,
    Object? bucketUuid = freezed,
    Object? bucketName = freezed,
    Object? bucketCoverImage = freezed,
    Object? status = freezed,
    Object? parentServiceCategory = freezed,
    Object? childServiceCategory = freezed,
    Object? packageKeywords = freezed,
    Object? packageTags = freezed,
    Object? serviceLocation = freezed,
    Object? couponsAndDiscounts = freezed,
    Object? selectedPackages = freezed,
    Object? createdOn = freezed,
  }) {
    return _then(_$BucketModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerUuid: freezed == partnerUuid
          ? _value.partnerUuid
          : partnerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      bucketUuid: freezed == bucketUuid
          ? _value.bucketUuid
          : bucketUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      bucketName: freezed == bucketName
          ? _value.bucketName
          : bucketName // ignore: cast_nullable_to_non_nullable
              as String?,
      bucketCoverImage: freezed == bucketCoverImage
          ? _value.bucketCoverImage
          : bucketCoverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      parentServiceCategory: freezed == parentServiceCategory
          ? _value._parentServiceCategory
          : parentServiceCategory // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      childServiceCategory: freezed == childServiceCategory
          ? _value._childServiceCategory
          : childServiceCategory // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      packageKeywords: freezed == packageKeywords
          ? _value._packageKeywords
          : packageKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      packageTags: freezed == packageTags
          ? _value._packageTags
          : packageTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      serviceLocation: freezed == serviceLocation
          ? _value.serviceLocation
          : serviceLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      couponsAndDiscounts: freezed == couponsAndDiscounts
          ? _value._couponsAndDiscounts
          : couponsAndDiscounts // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      selectedPackages: freezed == selectedPackages
          ? _value._selectedPackages
          : selectedPackages // ignore: cast_nullable_to_non_nullable
              as List<SelectedPackageModel>?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BucketModelImpl implements _BucketModel {
  const _$BucketModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "partner_uuid") required this.partnerUuid,
      @JsonKey(name: "bucket_uuid") required this.bucketUuid,
      @JsonKey(name: "bucket_name") required this.bucketName,
      @JsonKey(name: "bucket_cover_image") required this.bucketCoverImage,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "parent_service_category")
      required final List<dynamic>? parentServiceCategory,
      @JsonKey(name: "child_service_category")
      required final List<dynamic>? childServiceCategory,
      @JsonKey(name: "package_keywords")
      required final List<String>? packageKeywords,
      @JsonKey(name: "package_tags") required final List<String>? packageTags,
      @JsonKey(name: "service_location") required this.serviceLocation,
      @JsonKey(name: "coupons_and_discounts")
      required final List<dynamic>? couponsAndDiscounts,
      @JsonKey(name: "selected_packages")
      required final List<SelectedPackageModel>? selectedPackages,
      @JsonKey(name: "created_on") required this.createdOn})
      : _parentServiceCategory = parentServiceCategory,
        _childServiceCategory = childServiceCategory,
        _packageKeywords = packageKeywords,
        _packageTags = packageTags,
        _couponsAndDiscounts = couponsAndDiscounts,
        _selectedPackages = selectedPackages;

  factory _$BucketModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BucketModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "partner_uuid")
  final String? partnerUuid;
  @override
  @JsonKey(name: "bucket_uuid")
  final String? bucketUuid;
  @override
  @JsonKey(name: "bucket_name")
  final String? bucketName;
  @override
  @JsonKey(name: "bucket_cover_image")
  final String? bucketCoverImage;
  @override
  @JsonKey(name: "status")
  final String? status;
  final List<dynamic>? _parentServiceCategory;
  @override
  @JsonKey(name: "parent_service_category")
  List<dynamic>? get parentServiceCategory {
    final value = _parentServiceCategory;
    if (value == null) return null;
    if (_parentServiceCategory is EqualUnmodifiableListView)
      return _parentServiceCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _childServiceCategory;
  @override
  @JsonKey(name: "child_service_category")
  List<dynamic>? get childServiceCategory {
    final value = _childServiceCategory;
    if (value == null) return null;
    if (_childServiceCategory is EqualUnmodifiableListView)
      return _childServiceCategory;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _packageKeywords;
  @override
  @JsonKey(name: "package_keywords")
  List<String>? get packageKeywords {
    final value = _packageKeywords;
    if (value == null) return null;
    if (_packageKeywords is EqualUnmodifiableListView) return _packageKeywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _packageTags;
  @override
  @JsonKey(name: "package_tags")
  List<String>? get packageTags {
    final value = _packageTags;
    if (value == null) return null;
    if (_packageTags is EqualUnmodifiableListView) return _packageTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "service_location")
  final String? serviceLocation;
  final List<dynamic>? _couponsAndDiscounts;
  @override
  @JsonKey(name: "coupons_and_discounts")
  List<dynamic>? get couponsAndDiscounts {
    final value = _couponsAndDiscounts;
    if (value == null) return null;
    if (_couponsAndDiscounts is EqualUnmodifiableListView)
      return _couponsAndDiscounts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SelectedPackageModel>? _selectedPackages;
  @override
  @JsonKey(name: "selected_packages")
  List<SelectedPackageModel>? get selectedPackages {
    final value = _selectedPackages;
    if (value == null) return null;
    if (_selectedPackages is EqualUnmodifiableListView)
      return _selectedPackages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "created_on")
  final DateTime? createdOn;

  @override
  String toString() {
    return 'BucketModel(id: $id, partnerUuid: $partnerUuid, bucketUuid: $bucketUuid, bucketName: $bucketName, bucketCoverImage: $bucketCoverImage, status: $status, parentServiceCategory: $parentServiceCategory, childServiceCategory: $childServiceCategory, packageKeywords: $packageKeywords, packageTags: $packageTags, serviceLocation: $serviceLocation, couponsAndDiscounts: $couponsAndDiscounts, selectedPackages: $selectedPackages, createdOn: $createdOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BucketModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partnerUuid, partnerUuid) ||
                other.partnerUuid == partnerUuid) &&
            (identical(other.bucketUuid, bucketUuid) ||
                other.bucketUuid == bucketUuid) &&
            (identical(other.bucketName, bucketName) ||
                other.bucketName == bucketName) &&
            (identical(other.bucketCoverImage, bucketCoverImage) ||
                other.bucketCoverImage == bucketCoverImage) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._parentServiceCategory, _parentServiceCategory) &&
            const DeepCollectionEquality()
                .equals(other._childServiceCategory, _childServiceCategory) &&
            const DeepCollectionEquality()
                .equals(other._packageKeywords, _packageKeywords) &&
            const DeepCollectionEquality()
                .equals(other._packageTags, _packageTags) &&
            (identical(other.serviceLocation, serviceLocation) ||
                other.serviceLocation == serviceLocation) &&
            const DeepCollectionEquality()
                .equals(other._couponsAndDiscounts, _couponsAndDiscounts) &&
            const DeepCollectionEquality()
                .equals(other._selectedPackages, _selectedPackages) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      partnerUuid,
      bucketUuid,
      bucketName,
      bucketCoverImage,
      status,
      const DeepCollectionEquality().hash(_parentServiceCategory),
      const DeepCollectionEquality().hash(_childServiceCategory),
      const DeepCollectionEquality().hash(_packageKeywords),
      const DeepCollectionEquality().hash(_packageTags),
      serviceLocation,
      const DeepCollectionEquality().hash(_couponsAndDiscounts),
      const DeepCollectionEquality().hash(_selectedPackages),
      createdOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BucketModelImplCopyWith<_$BucketModelImpl> get copyWith =>
      __$$BucketModelImplCopyWithImpl<_$BucketModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BucketModelImplToJson(
      this,
    );
  }
}

abstract class _BucketModel implements BucketModel {
  const factory _BucketModel(
      {@JsonKey(name: "id") required final String? id,
      @JsonKey(name: "partner_uuid") required final String? partnerUuid,
      @JsonKey(name: "bucket_uuid") required final String? bucketUuid,
      @JsonKey(name: "bucket_name") required final String? bucketName,
      @JsonKey(name: "bucket_cover_image")
      required final String? bucketCoverImage,
      @JsonKey(name: "status") required final String? status,
      @JsonKey(name: "parent_service_category")
      required final List<dynamic>? parentServiceCategory,
      @JsonKey(name: "child_service_category")
      required final List<dynamic>? childServiceCategory,
      @JsonKey(name: "package_keywords")
      required final List<String>? packageKeywords,
      @JsonKey(name: "package_tags") required final List<String>? packageTags,
      @JsonKey(name: "service_location") required final String? serviceLocation,
      @JsonKey(name: "coupons_and_discounts")
      required final List<dynamic>? couponsAndDiscounts,
      @JsonKey(name: "selected_packages")
      required final List<SelectedPackageModel>? selectedPackages,
      @JsonKey(name: "created_on")
      required final DateTime? createdOn}) = _$BucketModelImpl;

  factory _BucketModel.fromJson(Map<String, dynamic> json) =
      _$BucketModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "partner_uuid")
  String? get partnerUuid;
  @override
  @JsonKey(name: "bucket_uuid")
  String? get bucketUuid;
  @override
  @JsonKey(name: "bucket_name")
  String? get bucketName;
  @override
  @JsonKey(name: "bucket_cover_image")
  String? get bucketCoverImage;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "parent_service_category")
  List<dynamic>? get parentServiceCategory;
  @override
  @JsonKey(name: "child_service_category")
  List<dynamic>? get childServiceCategory;
  @override
  @JsonKey(name: "package_keywords")
  List<String>? get packageKeywords;
  @override
  @JsonKey(name: "package_tags")
  List<String>? get packageTags;
  @override
  @JsonKey(name: "service_location")
  String? get serviceLocation;
  @override
  @JsonKey(name: "coupons_and_discounts")
  List<dynamic>? get couponsAndDiscounts;
  @override
  @JsonKey(name: "selected_packages")
  List<SelectedPackageModel>? get selectedPackages;
  @override
  @JsonKey(name: "created_on")
  DateTime? get createdOn;
  @override
  @JsonKey(ignore: true)
  _$$BucketModelImplCopyWith<_$BucketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SelectedPackageModel _$SelectedPackageModelFromJson(Map<String, dynamic> json) {
  return _SelectedPackageModel.fromJson(json);
}

/// @nodoc
mixin _$SelectedPackageModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_uuid")
  String? get partnerUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "package_uuid")
  String? get packageUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "package_name")
  String? get packageName => throw _privateConstructorUsedError;
  @JsonKey(name: "package_cover_image")
  String? get packageCoverImage => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_bucket")
  String? get parentBucket => throw _privateConstructorUsedError;
  @JsonKey(name: "package_headline")
  String? get packageHeadline => throw _privateConstructorUsedError;
  @JsonKey(name: "package_description")
  String? get packageDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "package_inclusions")
  String? get packageInclusions => throw _privateConstructorUsedError;
  @JsonKey(name: "package_exclusions")
  String? get packageExclusions => throw _privateConstructorUsedError;
  @JsonKey(name: "package_must_knows")
  String? get packageMustKnows => throw _privateConstructorUsedError;
  @JsonKey(name: "service_location")
  String? get serviceLocation => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "package_keywords")
  List<String>? get packageKeywords => throw _privateConstructorUsedError;
  @JsonKey(name: "package_tags")
  List<String>? get packageTags => throw _privateConstructorUsedError;
  @JsonKey(name: "service_timing_availability")
  String? get serviceTimingAvailability => throw _privateConstructorUsedError;
  @JsonKey(name: "package_cost")
  int? get packageCost => throw _privateConstructorUsedError;
  @JsonKey(name: "transportation_cost")
  double? get transportationCost => throw _privateConstructorUsedError;
  @JsonKey(name: "extra_allowance")
  double? get extraAllowance => throw _privateConstructorUsedError;
  @JsonKey(name: "coupons_and_discounts")
  String? get couponsAndDiscounts => throw _privateConstructorUsedError;
  @JsonKey(name: "upload_package_agreement")
  String? get uploadPackageAgreement => throw _privateConstructorUsedError;
  @JsonKey(name: "most_booked_packages")
  bool? get mostBookedPackages => throw _privateConstructorUsedError;
  @JsonKey(name: "trending_packages")
  bool? get trendingPackages => throw _privateConstructorUsedError;
  @JsonKey(name: "best_seller_packages")
  bool? get bestSellerPackages => throw _privateConstructorUsedError;
  @JsonKey(name: "promoted_packages")
  bool? get promotedPackages => throw _privateConstructorUsedError;
  @JsonKey(name: "packageGallery")
  List<PackageGalleryModel>? get packageGallery =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "created_on")
  DateTime? get createdOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SelectedPackageModelCopyWith<SelectedPackageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedPackageModelCopyWith<$Res> {
  factory $SelectedPackageModelCopyWith(SelectedPackageModel value,
          $Res Function(SelectedPackageModel) then) =
      _$SelectedPackageModelCopyWithImpl<$Res, SelectedPackageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "partner_uuid") String? partnerUuid,
      @JsonKey(name: "package_uuid") String? packageUuid,
      @JsonKey(name: "package_name") String? packageName,
      @JsonKey(name: "package_cover_image") String? packageCoverImage,
      @JsonKey(name: "parent_bucket") String? parentBucket,
      @JsonKey(name: "package_headline") String? packageHeadline,
      @JsonKey(name: "package_description") String? packageDescription,
      @JsonKey(name: "package_inclusions") String? packageInclusions,
      @JsonKey(name: "package_exclusions") String? packageExclusions,
      @JsonKey(name: "package_must_knows") String? packageMustKnows,
      @JsonKey(name: "service_location") String? serviceLocation,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "package_keywords") List<String>? packageKeywords,
      @JsonKey(name: "package_tags") List<String>? packageTags,
      @JsonKey(name: "service_timing_availability")
      String? serviceTimingAvailability,
      @JsonKey(name: "package_cost") int? packageCost,
      @JsonKey(name: "transportation_cost") double? transportationCost,
      @JsonKey(name: "extra_allowance") double? extraAllowance,
      @JsonKey(name: "coupons_and_discounts") String? couponsAndDiscounts,
      @JsonKey(name: "upload_package_agreement") String? uploadPackageAgreement,
      @JsonKey(name: "most_booked_packages") bool? mostBookedPackages,
      @JsonKey(name: "trending_packages") bool? trendingPackages,
      @JsonKey(name: "best_seller_packages") bool? bestSellerPackages,
      @JsonKey(name: "promoted_packages") bool? promotedPackages,
      @JsonKey(name: "packageGallery")
      List<PackageGalleryModel>? packageGallery,
      @JsonKey(name: "created_on") DateTime? createdOn});
}

/// @nodoc
class _$SelectedPackageModelCopyWithImpl<$Res,
        $Val extends SelectedPackageModel>
    implements $SelectedPackageModelCopyWith<$Res> {
  _$SelectedPackageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partnerUuid = freezed,
    Object? packageUuid = freezed,
    Object? packageName = freezed,
    Object? packageCoverImage = freezed,
    Object? parentBucket = freezed,
    Object? packageHeadline = freezed,
    Object? packageDescription = freezed,
    Object? packageInclusions = freezed,
    Object? packageExclusions = freezed,
    Object? packageMustKnows = freezed,
    Object? serviceLocation = freezed,
    Object? status = freezed,
    Object? packageKeywords = freezed,
    Object? packageTags = freezed,
    Object? serviceTimingAvailability = freezed,
    Object? packageCost = freezed,
    Object? transportationCost = freezed,
    Object? extraAllowance = freezed,
    Object? couponsAndDiscounts = freezed,
    Object? uploadPackageAgreement = freezed,
    Object? mostBookedPackages = freezed,
    Object? trendingPackages = freezed,
    Object? bestSellerPackages = freezed,
    Object? promotedPackages = freezed,
    Object? packageGallery = freezed,
    Object? createdOn = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerUuid: freezed == partnerUuid
          ? _value.partnerUuid
          : partnerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      packageUuid: freezed == packageUuid
          ? _value.packageUuid
          : packageUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      packageName: freezed == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String?,
      packageCoverImage: freezed == packageCoverImage
          ? _value.packageCoverImage
          : packageCoverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      parentBucket: freezed == parentBucket
          ? _value.parentBucket
          : parentBucket // ignore: cast_nullable_to_non_nullable
              as String?,
      packageHeadline: freezed == packageHeadline
          ? _value.packageHeadline
          : packageHeadline // ignore: cast_nullable_to_non_nullable
              as String?,
      packageDescription: freezed == packageDescription
          ? _value.packageDescription
          : packageDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      packageInclusions: freezed == packageInclusions
          ? _value.packageInclusions
          : packageInclusions // ignore: cast_nullable_to_non_nullable
              as String?,
      packageExclusions: freezed == packageExclusions
          ? _value.packageExclusions
          : packageExclusions // ignore: cast_nullable_to_non_nullable
              as String?,
      packageMustKnows: freezed == packageMustKnows
          ? _value.packageMustKnows
          : packageMustKnows // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceLocation: freezed == serviceLocation
          ? _value.serviceLocation
          : serviceLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      packageKeywords: freezed == packageKeywords
          ? _value.packageKeywords
          : packageKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      packageTags: freezed == packageTags
          ? _value.packageTags
          : packageTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      serviceTimingAvailability: freezed == serviceTimingAvailability
          ? _value.serviceTimingAvailability
          : serviceTimingAvailability // ignore: cast_nullable_to_non_nullable
              as String?,
      packageCost: freezed == packageCost
          ? _value.packageCost
          : packageCost // ignore: cast_nullable_to_non_nullable
              as int?,
      transportationCost: freezed == transportationCost
          ? _value.transportationCost
          : transportationCost // ignore: cast_nullable_to_non_nullable
              as double?,
      extraAllowance: freezed == extraAllowance
          ? _value.extraAllowance
          : extraAllowance // ignore: cast_nullable_to_non_nullable
              as double?,
      couponsAndDiscounts: freezed == couponsAndDiscounts
          ? _value.couponsAndDiscounts
          : couponsAndDiscounts // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadPackageAgreement: freezed == uploadPackageAgreement
          ? _value.uploadPackageAgreement
          : uploadPackageAgreement // ignore: cast_nullable_to_non_nullable
              as String?,
      mostBookedPackages: freezed == mostBookedPackages
          ? _value.mostBookedPackages
          : mostBookedPackages // ignore: cast_nullable_to_non_nullable
              as bool?,
      trendingPackages: freezed == trendingPackages
          ? _value.trendingPackages
          : trendingPackages // ignore: cast_nullable_to_non_nullable
              as bool?,
      bestSellerPackages: freezed == bestSellerPackages
          ? _value.bestSellerPackages
          : bestSellerPackages // ignore: cast_nullable_to_non_nullable
              as bool?,
      promotedPackages: freezed == promotedPackages
          ? _value.promotedPackages
          : promotedPackages // ignore: cast_nullable_to_non_nullable
              as bool?,
      packageGallery: freezed == packageGallery
          ? _value.packageGallery
          : packageGallery // ignore: cast_nullable_to_non_nullable
              as List<PackageGalleryModel>?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SelectedPackageModelImplCopyWith<$Res>
    implements $SelectedPackageModelCopyWith<$Res> {
  factory _$$SelectedPackageModelImplCopyWith(_$SelectedPackageModelImpl value,
          $Res Function(_$SelectedPackageModelImpl) then) =
      __$$SelectedPackageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "partner_uuid") String? partnerUuid,
      @JsonKey(name: "package_uuid") String? packageUuid,
      @JsonKey(name: "package_name") String? packageName,
      @JsonKey(name: "package_cover_image") String? packageCoverImage,
      @JsonKey(name: "parent_bucket") String? parentBucket,
      @JsonKey(name: "package_headline") String? packageHeadline,
      @JsonKey(name: "package_description") String? packageDescription,
      @JsonKey(name: "package_inclusions") String? packageInclusions,
      @JsonKey(name: "package_exclusions") String? packageExclusions,
      @JsonKey(name: "package_must_knows") String? packageMustKnows,
      @JsonKey(name: "service_location") String? serviceLocation,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "package_keywords") List<String>? packageKeywords,
      @JsonKey(name: "package_tags") List<String>? packageTags,
      @JsonKey(name: "service_timing_availability")
      String? serviceTimingAvailability,
      @JsonKey(name: "package_cost") int? packageCost,
      @JsonKey(name: "transportation_cost") double? transportationCost,
      @JsonKey(name: "extra_allowance") double? extraAllowance,
      @JsonKey(name: "coupons_and_discounts") String? couponsAndDiscounts,
      @JsonKey(name: "upload_package_agreement") String? uploadPackageAgreement,
      @JsonKey(name: "most_booked_packages") bool? mostBookedPackages,
      @JsonKey(name: "trending_packages") bool? trendingPackages,
      @JsonKey(name: "best_seller_packages") bool? bestSellerPackages,
      @JsonKey(name: "promoted_packages") bool? promotedPackages,
      @JsonKey(name: "packageGallery")
      List<PackageGalleryModel>? packageGallery,
      @JsonKey(name: "created_on") DateTime? createdOn});
}

/// @nodoc
class __$$SelectedPackageModelImplCopyWithImpl<$Res>
    extends _$SelectedPackageModelCopyWithImpl<$Res, _$SelectedPackageModelImpl>
    implements _$$SelectedPackageModelImplCopyWith<$Res> {
  __$$SelectedPackageModelImplCopyWithImpl(_$SelectedPackageModelImpl _value,
      $Res Function(_$SelectedPackageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partnerUuid = freezed,
    Object? packageUuid = freezed,
    Object? packageName = freezed,
    Object? packageCoverImage = freezed,
    Object? parentBucket = freezed,
    Object? packageHeadline = freezed,
    Object? packageDescription = freezed,
    Object? packageInclusions = freezed,
    Object? packageExclusions = freezed,
    Object? packageMustKnows = freezed,
    Object? serviceLocation = freezed,
    Object? status = freezed,
    Object? packageKeywords = freezed,
    Object? packageTags = freezed,
    Object? serviceTimingAvailability = freezed,
    Object? packageCost = freezed,
    Object? transportationCost = freezed,
    Object? extraAllowance = freezed,
    Object? couponsAndDiscounts = freezed,
    Object? uploadPackageAgreement = freezed,
    Object? mostBookedPackages = freezed,
    Object? trendingPackages = freezed,
    Object? bestSellerPackages = freezed,
    Object? promotedPackages = freezed,
    Object? packageGallery = freezed,
    Object? createdOn = freezed,
  }) {
    return _then(_$SelectedPackageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerUuid: freezed == partnerUuid
          ? _value.partnerUuid
          : partnerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      packageUuid: freezed == packageUuid
          ? _value.packageUuid
          : packageUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      packageName: freezed == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String?,
      packageCoverImage: freezed == packageCoverImage
          ? _value.packageCoverImage
          : packageCoverImage // ignore: cast_nullable_to_non_nullable
              as String?,
      parentBucket: freezed == parentBucket
          ? _value.parentBucket
          : parentBucket // ignore: cast_nullable_to_non_nullable
              as String?,
      packageHeadline: freezed == packageHeadline
          ? _value.packageHeadline
          : packageHeadline // ignore: cast_nullable_to_non_nullable
              as String?,
      packageDescription: freezed == packageDescription
          ? _value.packageDescription
          : packageDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      packageInclusions: freezed == packageInclusions
          ? _value.packageInclusions
          : packageInclusions // ignore: cast_nullable_to_non_nullable
              as String?,
      packageExclusions: freezed == packageExclusions
          ? _value.packageExclusions
          : packageExclusions // ignore: cast_nullable_to_non_nullable
              as String?,
      packageMustKnows: freezed == packageMustKnows
          ? _value.packageMustKnows
          : packageMustKnows // ignore: cast_nullable_to_non_nullable
              as String?,
      serviceLocation: freezed == serviceLocation
          ? _value.serviceLocation
          : serviceLocation // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      packageKeywords: freezed == packageKeywords
          ? _value._packageKeywords
          : packageKeywords // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      packageTags: freezed == packageTags
          ? _value._packageTags
          : packageTags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      serviceTimingAvailability: freezed == serviceTimingAvailability
          ? _value.serviceTimingAvailability
          : serviceTimingAvailability // ignore: cast_nullable_to_non_nullable
              as String?,
      packageCost: freezed == packageCost
          ? _value.packageCost
          : packageCost // ignore: cast_nullable_to_non_nullable
              as int?,
      transportationCost: freezed == transportationCost
          ? _value.transportationCost
          : transportationCost // ignore: cast_nullable_to_non_nullable
              as double?,
      extraAllowance: freezed == extraAllowance
          ? _value.extraAllowance
          : extraAllowance // ignore: cast_nullable_to_non_nullable
              as double?,
      couponsAndDiscounts: freezed == couponsAndDiscounts
          ? _value.couponsAndDiscounts
          : couponsAndDiscounts // ignore: cast_nullable_to_non_nullable
              as String?,
      uploadPackageAgreement: freezed == uploadPackageAgreement
          ? _value.uploadPackageAgreement
          : uploadPackageAgreement // ignore: cast_nullable_to_non_nullable
              as String?,
      mostBookedPackages: freezed == mostBookedPackages
          ? _value.mostBookedPackages
          : mostBookedPackages // ignore: cast_nullable_to_non_nullable
              as bool?,
      trendingPackages: freezed == trendingPackages
          ? _value.trendingPackages
          : trendingPackages // ignore: cast_nullable_to_non_nullable
              as bool?,
      bestSellerPackages: freezed == bestSellerPackages
          ? _value.bestSellerPackages
          : bestSellerPackages // ignore: cast_nullable_to_non_nullable
              as bool?,
      promotedPackages: freezed == promotedPackages
          ? _value.promotedPackages
          : promotedPackages // ignore: cast_nullable_to_non_nullable
              as bool?,
      packageGallery: freezed == packageGallery
          ? _value._packageGallery
          : packageGallery // ignore: cast_nullable_to_non_nullable
              as List<PackageGalleryModel>?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SelectedPackageModelImpl implements _SelectedPackageModel {
  const _$SelectedPackageModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "partner_uuid") required this.partnerUuid,
      @JsonKey(name: "package_uuid") required this.packageUuid,
      @JsonKey(name: "package_name") required this.packageName,
      @JsonKey(name: "package_cover_image") required this.packageCoverImage,
      @JsonKey(name: "parent_bucket") required this.parentBucket,
      @JsonKey(name: "package_headline") required this.packageHeadline,
      @JsonKey(name: "package_description") required this.packageDescription,
      @JsonKey(name: "package_inclusions") required this.packageInclusions,
      @JsonKey(name: "package_exclusions") required this.packageExclusions,
      @JsonKey(name: "package_must_knows") required this.packageMustKnows,
      @JsonKey(name: "service_location") required this.serviceLocation,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "package_keywords")
      required final List<String>? packageKeywords,
      @JsonKey(name: "package_tags") required final List<String>? packageTags,
      @JsonKey(name: "service_timing_availability")
      required this.serviceTimingAvailability,
      @JsonKey(name: "package_cost") required this.packageCost,
      @JsonKey(name: "transportation_cost") required this.transportationCost,
      @JsonKey(name: "extra_allowance") required this.extraAllowance,
      @JsonKey(name: "coupons_and_discounts") required this.couponsAndDiscounts,
      @JsonKey(name: "upload_package_agreement")
      required this.uploadPackageAgreement,
      @JsonKey(name: "most_booked_packages") required this.mostBookedPackages,
      @JsonKey(name: "trending_packages") required this.trendingPackages,
      @JsonKey(name: "best_seller_packages") required this.bestSellerPackages,
      @JsonKey(name: "promoted_packages") required this.promotedPackages,
      @JsonKey(name: "packageGallery")
      required final List<PackageGalleryModel>? packageGallery,
      @JsonKey(name: "created_on") required this.createdOn})
      : _packageKeywords = packageKeywords,
        _packageTags = packageTags,
        _packageGallery = packageGallery;

  factory _$SelectedPackageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SelectedPackageModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "partner_uuid")
  final String? partnerUuid;
  @override
  @JsonKey(name: "package_uuid")
  final String? packageUuid;
  @override
  @JsonKey(name: "package_name")
  final String? packageName;
  @override
  @JsonKey(name: "package_cover_image")
  final String? packageCoverImage;
  @override
  @JsonKey(name: "parent_bucket")
  final String? parentBucket;
  @override
  @JsonKey(name: "package_headline")
  final String? packageHeadline;
  @override
  @JsonKey(name: "package_description")
  final String? packageDescription;
  @override
  @JsonKey(name: "package_inclusions")
  final String? packageInclusions;
  @override
  @JsonKey(name: "package_exclusions")
  final String? packageExclusions;
  @override
  @JsonKey(name: "package_must_knows")
  final String? packageMustKnows;
  @override
  @JsonKey(name: "service_location")
  final String? serviceLocation;
  @override
  @JsonKey(name: "status")
  final String? status;
  final List<String>? _packageKeywords;
  @override
  @JsonKey(name: "package_keywords")
  List<String>? get packageKeywords {
    final value = _packageKeywords;
    if (value == null) return null;
    if (_packageKeywords is EqualUnmodifiableListView) return _packageKeywords;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _packageTags;
  @override
  @JsonKey(name: "package_tags")
  List<String>? get packageTags {
    final value = _packageTags;
    if (value == null) return null;
    if (_packageTags is EqualUnmodifiableListView) return _packageTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "service_timing_availability")
  final String? serviceTimingAvailability;
  @override
  @JsonKey(name: "package_cost")
  final int? packageCost;
  @override
  @JsonKey(name: "transportation_cost")
  final double? transportationCost;
  @override
  @JsonKey(name: "extra_allowance")
  final double? extraAllowance;
  @override
  @JsonKey(name: "coupons_and_discounts")
  final String? couponsAndDiscounts;
  @override
  @JsonKey(name: "upload_package_agreement")
  final String? uploadPackageAgreement;
  @override
  @JsonKey(name: "most_booked_packages")
  final bool? mostBookedPackages;
  @override
  @JsonKey(name: "trending_packages")
  final bool? trendingPackages;
  @override
  @JsonKey(name: "best_seller_packages")
  final bool? bestSellerPackages;
  @override
  @JsonKey(name: "promoted_packages")
  final bool? promotedPackages;
  final List<PackageGalleryModel>? _packageGallery;
  @override
  @JsonKey(name: "packageGallery")
  List<PackageGalleryModel>? get packageGallery {
    final value = _packageGallery;
    if (value == null) return null;
    if (_packageGallery is EqualUnmodifiableListView) return _packageGallery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "created_on")
  final DateTime? createdOn;

  @override
  String toString() {
    return 'SelectedPackageModel(id: $id, partnerUuid: $partnerUuid, packageUuid: $packageUuid, packageName: $packageName, packageCoverImage: $packageCoverImage, parentBucket: $parentBucket, packageHeadline: $packageHeadline, packageDescription: $packageDescription, packageInclusions: $packageInclusions, packageExclusions: $packageExclusions, packageMustKnows: $packageMustKnows, serviceLocation: $serviceLocation, status: $status, packageKeywords: $packageKeywords, packageTags: $packageTags, serviceTimingAvailability: $serviceTimingAvailability, packageCost: $packageCost, transportationCost: $transportationCost, extraAllowance: $extraAllowance, couponsAndDiscounts: $couponsAndDiscounts, uploadPackageAgreement: $uploadPackageAgreement, mostBookedPackages: $mostBookedPackages, trendingPackages: $trendingPackages, bestSellerPackages: $bestSellerPackages, promotedPackages: $promotedPackages, packageGallery: $packageGallery, createdOn: $createdOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SelectedPackageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partnerUuid, partnerUuid) ||
                other.partnerUuid == partnerUuid) &&
            (identical(other.packageUuid, packageUuid) ||
                other.packageUuid == packageUuid) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.packageCoverImage, packageCoverImage) ||
                other.packageCoverImage == packageCoverImage) &&
            (identical(other.parentBucket, parentBucket) ||
                other.parentBucket == parentBucket) &&
            (identical(other.packageHeadline, packageHeadline) ||
                other.packageHeadline == packageHeadline) &&
            (identical(other.packageDescription, packageDescription) ||
                other.packageDescription == packageDescription) &&
            (identical(other.packageInclusions, packageInclusions) ||
                other.packageInclusions == packageInclusions) &&
            (identical(other.packageExclusions, packageExclusions) ||
                other.packageExclusions == packageExclusions) &&
            (identical(other.packageMustKnows, packageMustKnows) ||
                other.packageMustKnows == packageMustKnows) &&
            (identical(other.serviceLocation, serviceLocation) ||
                other.serviceLocation == serviceLocation) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._packageKeywords, _packageKeywords) &&
            const DeepCollectionEquality()
                .equals(other._packageTags, _packageTags) &&
            (identical(other.serviceTimingAvailability,
                    serviceTimingAvailability) ||
                other.serviceTimingAvailability == serviceTimingAvailability) &&
            (identical(other.packageCost, packageCost) ||
                other.packageCost == packageCost) &&
            (identical(other.transportationCost, transportationCost) ||
                other.transportationCost == transportationCost) &&
            (identical(other.extraAllowance, extraAllowance) ||
                other.extraAllowance == extraAllowance) &&
            (identical(other.couponsAndDiscounts, couponsAndDiscounts) ||
                other.couponsAndDiscounts == couponsAndDiscounts) &&
            (identical(other.uploadPackageAgreement, uploadPackageAgreement) ||
                other.uploadPackageAgreement == uploadPackageAgreement) &&
            (identical(other.mostBookedPackages, mostBookedPackages) ||
                other.mostBookedPackages == mostBookedPackages) &&
            (identical(other.trendingPackages, trendingPackages) ||
                other.trendingPackages == trendingPackages) &&
            (identical(other.bestSellerPackages, bestSellerPackages) ||
                other.bestSellerPackages == bestSellerPackages) &&
            (identical(other.promotedPackages, promotedPackages) ||
                other.promotedPackages == promotedPackages) &&
            const DeepCollectionEquality()
                .equals(other._packageGallery, _packageGallery) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        partnerUuid,
        packageUuid,
        packageName,
        packageCoverImage,
        parentBucket,
        packageHeadline,
        packageDescription,
        packageInclusions,
        packageExclusions,
        packageMustKnows,
        serviceLocation,
        status,
        const DeepCollectionEquality().hash(_packageKeywords),
        const DeepCollectionEquality().hash(_packageTags),
        serviceTimingAvailability,
        packageCost,
        transportationCost,
        extraAllowance,
        couponsAndDiscounts,
        uploadPackageAgreement,
        mostBookedPackages,
        trendingPackages,
        bestSellerPackages,
        promotedPackages,
        const DeepCollectionEquality().hash(_packageGallery),
        createdOn
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SelectedPackageModelImplCopyWith<_$SelectedPackageModelImpl>
      get copyWith =>
          __$$SelectedPackageModelImplCopyWithImpl<_$SelectedPackageModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SelectedPackageModelImplToJson(
      this,
    );
  }
}

abstract class _SelectedPackageModel implements SelectedPackageModel {
  const factory _SelectedPackageModel(
      {@JsonKey(name: "id") required final String? id,
      @JsonKey(name: "partner_uuid") required final String? partnerUuid,
      @JsonKey(name: "package_uuid") required final String? packageUuid,
      @JsonKey(name: "package_name") required final String? packageName,
      @JsonKey(name: "package_cover_image")
      required final String? packageCoverImage,
      @JsonKey(name: "parent_bucket") required final String? parentBucket,
      @JsonKey(name: "package_headline") required final String? packageHeadline,
      @JsonKey(name: "package_description")
      required final String? packageDescription,
      @JsonKey(name: "package_inclusions")
      required final String? packageInclusions,
      @JsonKey(name: "package_exclusions")
      required final String? packageExclusions,
      @JsonKey(name: "package_must_knows")
      required final String? packageMustKnows,
      @JsonKey(name: "service_location") required final String? serviceLocation,
      @JsonKey(name: "status") required final String? status,
      @JsonKey(name: "package_keywords")
      required final List<String>? packageKeywords,
      @JsonKey(name: "package_tags") required final List<String>? packageTags,
      @JsonKey(name: "service_timing_availability")
      required final String? serviceTimingAvailability,
      @JsonKey(name: "package_cost") required final int? packageCost,
      @JsonKey(name: "transportation_cost")
      required final double? transportationCost,
      @JsonKey(name: "extra_allowance") required final double? extraAllowance,
      @JsonKey(name: "coupons_and_discounts")
      required final String? couponsAndDiscounts,
      @JsonKey(name: "upload_package_agreement")
      required final String? uploadPackageAgreement,
      @JsonKey(name: "most_booked_packages")
      required final bool? mostBookedPackages,
      @JsonKey(name: "trending_packages") required final bool? trendingPackages,
      @JsonKey(name: "best_seller_packages")
      required final bool? bestSellerPackages,
      @JsonKey(name: "promoted_packages") required final bool? promotedPackages,
      @JsonKey(name: "packageGallery")
      required final List<PackageGalleryModel>? packageGallery,
      @JsonKey(name: "created_on")
      required final DateTime? createdOn}) = _$SelectedPackageModelImpl;

  factory _SelectedPackageModel.fromJson(Map<String, dynamic> json) =
      _$SelectedPackageModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "partner_uuid")
  String? get partnerUuid;
  @override
  @JsonKey(name: "package_uuid")
  String? get packageUuid;
  @override
  @JsonKey(name: "package_name")
  String? get packageName;
  @override
  @JsonKey(name: "package_cover_image")
  String? get packageCoverImage;
  @override
  @JsonKey(name: "parent_bucket")
  String? get parentBucket;
  @override
  @JsonKey(name: "package_headline")
  String? get packageHeadline;
  @override
  @JsonKey(name: "package_description")
  String? get packageDescription;
  @override
  @JsonKey(name: "package_inclusions")
  String? get packageInclusions;
  @override
  @JsonKey(name: "package_exclusions")
  String? get packageExclusions;
  @override
  @JsonKey(name: "package_must_knows")
  String? get packageMustKnows;
  @override
  @JsonKey(name: "service_location")
  String? get serviceLocation;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "package_keywords")
  List<String>? get packageKeywords;
  @override
  @JsonKey(name: "package_tags")
  List<String>? get packageTags;
  @override
  @JsonKey(name: "service_timing_availability")
  String? get serviceTimingAvailability;
  @override
  @JsonKey(name: "package_cost")
  int? get packageCost;
  @override
  @JsonKey(name: "transportation_cost")
  double? get transportationCost;
  @override
  @JsonKey(name: "extra_allowance")
  double? get extraAllowance;
  @override
  @JsonKey(name: "coupons_and_discounts")
  String? get couponsAndDiscounts;
  @override
  @JsonKey(name: "upload_package_agreement")
  String? get uploadPackageAgreement;
  @override
  @JsonKey(name: "most_booked_packages")
  bool? get mostBookedPackages;
  @override
  @JsonKey(name: "trending_packages")
  bool? get trendingPackages;
  @override
  @JsonKey(name: "best_seller_packages")
  bool? get bestSellerPackages;
  @override
  @JsonKey(name: "promoted_packages")
  bool? get promotedPackages;
  @override
  @JsonKey(name: "packageGallery")
  List<PackageGalleryModel>? get packageGallery;
  @override
  @JsonKey(name: "created_on")
  DateTime? get createdOn;
  @override
  @JsonKey(ignore: true)
  _$$SelectedPackageModelImplCopyWith<_$SelectedPackageModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PackageGalleryModel _$PackageGalleryModelFromJson(Map<String, dynamic> json) {
  return _PackageGalleryModel.fromJson(json);
}

/// @nodoc
mixin _$PackageGalleryModel {
  @JsonKey(name: "media")
  String? get media => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: "assigned_to")
  List<dynamic>? get assignedTo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageGalleryModelCopyWith<PackageGalleryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageGalleryModelCopyWith<$Res> {
  factory $PackageGalleryModelCopyWith(
          PackageGalleryModel value, $Res Function(PackageGalleryModel) then) =
      _$PackageGalleryModelCopyWithImpl<$Res, PackageGalleryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "media") String? media,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "assigned_to") List<dynamic>? assignedTo});
}

/// @nodoc
class _$PackageGalleryModelCopyWithImpl<$Res, $Val extends PackageGalleryModel>
    implements $PackageGalleryModelCopyWith<$Res> {
  _$PackageGalleryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = freezed,
    Object? description = freezed,
    Object? assignedTo = freezed,
  }) {
    return _then(_value.copyWith(
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedTo: freezed == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageGalleryModelImplCopyWith<$Res>
    implements $PackageGalleryModelCopyWith<$Res> {
  factory _$$PackageGalleryModelImplCopyWith(_$PackageGalleryModelImpl value,
          $Res Function(_$PackageGalleryModelImpl) then) =
      __$$PackageGalleryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "media") String? media,
      @JsonKey(name: "description") String? description,
      @JsonKey(name: "assigned_to") List<dynamic>? assignedTo});
}

/// @nodoc
class __$$PackageGalleryModelImplCopyWithImpl<$Res>
    extends _$PackageGalleryModelCopyWithImpl<$Res, _$PackageGalleryModelImpl>
    implements _$$PackageGalleryModelImplCopyWith<$Res> {
  __$$PackageGalleryModelImplCopyWithImpl(_$PackageGalleryModelImpl _value,
      $Res Function(_$PackageGalleryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = freezed,
    Object? description = freezed,
    Object? assignedTo = freezed,
  }) {
    return _then(_$PackageGalleryModelImpl(
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      assignedTo: freezed == assignedTo
          ? _value._assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageGalleryModelImpl implements _PackageGalleryModel {
  const _$PackageGalleryModelImpl(
      {@JsonKey(name: "media") required this.media,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "assigned_to") required final List<dynamic>? assignedTo})
      : _assignedTo = assignedTo;

  factory _$PackageGalleryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageGalleryModelImplFromJson(json);

  @override
  @JsonKey(name: "media")
  final String? media;
  @override
  @JsonKey(name: "description")
  final String? description;
  final List<dynamic>? _assignedTo;
  @override
  @JsonKey(name: "assigned_to")
  List<dynamic>? get assignedTo {
    final value = _assignedTo;
    if (value == null) return null;
    if (_assignedTo is EqualUnmodifiableListView) return _assignedTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'PackageGalleryModel(media: $media, description: $description, assignedTo: $assignedTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageGalleryModelImpl &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._assignedTo, _assignedTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, media, description,
      const DeepCollectionEquality().hash(_assignedTo));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageGalleryModelImplCopyWith<_$PackageGalleryModelImpl> get copyWith =>
      __$$PackageGalleryModelImplCopyWithImpl<_$PackageGalleryModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageGalleryModelImplToJson(
      this,
    );
  }
}

abstract class _PackageGalleryModel implements PackageGalleryModel {
  const factory _PackageGalleryModel(
      {@JsonKey(name: "media") required final String? media,
      @JsonKey(name: "description") required final String? description,
      @JsonKey(name: "assigned_to")
      required final List<dynamic>? assignedTo}) = _$PackageGalleryModelImpl;

  factory _PackageGalleryModel.fromJson(Map<String, dynamic> json) =
      _$PackageGalleryModelImpl.fromJson;

  @override
  @JsonKey(name: "media")
  String? get media;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(name: "assigned_to")
  List<dynamic>? get assignedTo;
  @override
  @JsonKey(ignore: true)
  _$$PackageGalleryModelImplCopyWith<_$PackageGalleryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageReviewAvgModel _$PackageReviewAvgModelFromJson(
    Map<String, dynamic> json) {
  return _PackageReviewAvgModel.fromJson(json);
}

/// @nodoc
mixin _$PackageReviewAvgModel {
  @JsonKey(name: "packageReviewAverage")
  double? get packageReviewAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "reviewCount")
  int? get reviewCount => throw _privateConstructorUsedError;
  @JsonKey(name: "packageUuid")
  String? get packageUuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageReviewAvgModelCopyWith<PackageReviewAvgModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageReviewAvgModelCopyWith<$Res> {
  factory $PackageReviewAvgModelCopyWith(PackageReviewAvgModel value,
          $Res Function(PackageReviewAvgModel) then) =
      _$PackageReviewAvgModelCopyWithImpl<$Res, PackageReviewAvgModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "packageReviewAverage") double? packageReviewAverage,
      @JsonKey(name: "reviewCount") int? reviewCount,
      @JsonKey(name: "packageUuid") String? packageUuid});
}

/// @nodoc
class _$PackageReviewAvgModelCopyWithImpl<$Res,
        $Val extends PackageReviewAvgModel>
    implements $PackageReviewAvgModelCopyWith<$Res> {
  _$PackageReviewAvgModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageReviewAverage = freezed,
    Object? reviewCount = freezed,
    Object? packageUuid = freezed,
  }) {
    return _then(_value.copyWith(
      packageReviewAverage: freezed == packageReviewAverage
          ? _value.packageReviewAverage
          : packageReviewAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      packageUuid: freezed == packageUuid
          ? _value.packageUuid
          : packageUuid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageReviewAvgModelImplCopyWith<$Res>
    implements $PackageReviewAvgModelCopyWith<$Res> {
  factory _$$PackageReviewAvgModelImplCopyWith(
          _$PackageReviewAvgModelImpl value,
          $Res Function(_$PackageReviewAvgModelImpl) then) =
      __$$PackageReviewAvgModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "packageReviewAverage") double? packageReviewAverage,
      @JsonKey(name: "reviewCount") int? reviewCount,
      @JsonKey(name: "packageUuid") String? packageUuid});
}

/// @nodoc
class __$$PackageReviewAvgModelImplCopyWithImpl<$Res>
    extends _$PackageReviewAvgModelCopyWithImpl<$Res,
        _$PackageReviewAvgModelImpl>
    implements _$$PackageReviewAvgModelImplCopyWith<$Res> {
  __$$PackageReviewAvgModelImplCopyWithImpl(_$PackageReviewAvgModelImpl _value,
      $Res Function(_$PackageReviewAvgModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageReviewAverage = freezed,
    Object? reviewCount = freezed,
    Object? packageUuid = freezed,
  }) {
    return _then(_$PackageReviewAvgModelImpl(
      packageReviewAverage: freezed == packageReviewAverage
          ? _value.packageReviewAverage
          : packageReviewAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      packageUuid: freezed == packageUuid
          ? _value.packageUuid
          : packageUuid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageReviewAvgModelImpl implements _PackageReviewAvgModel {
  const _$PackageReviewAvgModelImpl(
      {@JsonKey(name: "packageReviewAverage")
      required this.packageReviewAverage,
      @JsonKey(name: "reviewCount") required this.reviewCount,
      @JsonKey(name: "packageUuid") required this.packageUuid});

  factory _$PackageReviewAvgModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageReviewAvgModelImplFromJson(json);

  @override
  @JsonKey(name: "packageReviewAverage")
  final double? packageReviewAverage;
  @override
  @JsonKey(name: "reviewCount")
  final int? reviewCount;
  @override
  @JsonKey(name: "packageUuid")
  final String? packageUuid;

  @override
  String toString() {
    return 'PackageReviewAvgModel(packageReviewAverage: $packageReviewAverage, reviewCount: $reviewCount, packageUuid: $packageUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageReviewAvgModelImpl &&
            (identical(other.packageReviewAverage, packageReviewAverage) ||
                other.packageReviewAverage == packageReviewAverage) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.packageUuid, packageUuid) ||
                other.packageUuid == packageUuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, packageReviewAverage, reviewCount, packageUuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageReviewAvgModelImplCopyWith<_$PackageReviewAvgModelImpl>
      get copyWith => __$$PackageReviewAvgModelImplCopyWithImpl<
          _$PackageReviewAvgModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageReviewAvgModelImplToJson(
      this,
    );
  }
}

abstract class _PackageReviewAvgModel implements PackageReviewAvgModel {
  const factory _PackageReviewAvgModel(
          {@JsonKey(name: "packageReviewAverage")
          required final double? packageReviewAverage,
          @JsonKey(name: "reviewCount") required final int? reviewCount,
          @JsonKey(name: "packageUuid") required final String? packageUuid}) =
      _$PackageReviewAvgModelImpl;

  factory _PackageReviewAvgModel.fromJson(Map<String, dynamic> json) =
      _$PackageReviewAvgModelImpl.fromJson;

  @override
  @JsonKey(name: "packageReviewAverage")
  double? get packageReviewAverage;
  @override
  @JsonKey(name: "reviewCount")
  int? get reviewCount;
  @override
  @JsonKey(name: "packageUuid")
  String? get packageUuid;
  @override
  @JsonKey(ignore: true)
  _$$PackageReviewAvgModelImplCopyWith<_$PackageReviewAvgModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
