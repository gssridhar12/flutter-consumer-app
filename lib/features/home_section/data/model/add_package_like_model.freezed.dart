// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_package_like_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddPackageLikeModel _$AddPackageLikeModelFromJson(Map<String, dynamic> json) {
  return _AddPackageLikeModel.fromJson(json);
}

/// @nodoc
mixin _$AddPackageLikeModel {
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
  $AddPackageLikeModelCopyWith<AddPackageLikeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPackageLikeModelCopyWith<$Res> {
  factory $AddPackageLikeModelCopyWith(
          AddPackageLikeModel value, $Res Function(AddPackageLikeModel) then) =
      _$AddPackageLikeModelCopyWithImpl<$Res, AddPackageLikeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataModel? data,
      @JsonKey(name: "success_status") bool? successStatus});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddPackageLikeModelCopyWithImpl<$Res, $Val extends AddPackageLikeModel>
    implements $AddPackageLikeModelCopyWith<$Res> {
  _$AddPackageLikeModelCopyWithImpl(this._value, this._then);

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
abstract class _$$AddPackageLikeModelImplCopyWith<$Res>
    implements $AddPackageLikeModelCopyWith<$Res> {
  factory _$$AddPackageLikeModelImplCopyWith(_$AddPackageLikeModelImpl value,
          $Res Function(_$AddPackageLikeModelImpl) then) =
      __$$AddPackageLikeModelImplCopyWithImpl<$Res>;
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
class __$$AddPackageLikeModelImplCopyWithImpl<$Res>
    extends _$AddPackageLikeModelCopyWithImpl<$Res, _$AddPackageLikeModelImpl>
    implements _$$AddPackageLikeModelImplCopyWith<$Res> {
  __$$AddPackageLikeModelImplCopyWithImpl(_$AddPackageLikeModelImpl _value,
      $Res Function(_$AddPackageLikeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? successStatus = freezed,
  }) {
    return _then(_$AddPackageLikeModelImpl(
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
class _$AddPackageLikeModelImpl implements _AddPackageLikeModel {
  const _$AddPackageLikeModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "success_status") this.successStatus});

  factory _$AddPackageLikeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddPackageLikeModelImplFromJson(json);

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
    return 'AddPackageLikeModel(code: $code, message: $message, data: $data, successStatus: $successStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPackageLikeModelImpl &&
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
  _$$AddPackageLikeModelImplCopyWith<_$AddPackageLikeModelImpl> get copyWith =>
      __$$AddPackageLikeModelImplCopyWithImpl<_$AddPackageLikeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddPackageLikeModelImplToJson(
      this,
    );
  }
}

abstract class _AddPackageLikeModel implements AddPackageLikeModel {
  const factory _AddPackageLikeModel(
          {@JsonKey(name: "code") final String? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final DataModel? data,
          @JsonKey(name: "success_status") final bool? successStatus}) =
      _$AddPackageLikeModelImpl;

  factory _AddPackageLikeModel.fromJson(Map<String, dynamic> json) =
      _$AddPackageLikeModelImpl.fromJson;

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
  _$$AddPackageLikeModelImplCopyWith<_$AddPackageLikeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: "likedPackages")
  List<LikedPackageModel>? get likedPackages =>
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
      {@JsonKey(name: "likedPackages") List<LikedPackageModel>? likedPackages});
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
    Object? likedPackages = freezed,
  }) {
    return _then(_value.copyWith(
      likedPackages: freezed == likedPackages
          ? _value.likedPackages
          : likedPackages // ignore: cast_nullable_to_non_nullable
              as List<LikedPackageModel>?,
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
      {@JsonKey(name: "likedPackages") List<LikedPackageModel>? likedPackages});
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
    Object? likedPackages = freezed,
  }) {
    return _then(_$DataModelImpl(
      likedPackages: freezed == likedPackages
          ? _value._likedPackages
          : likedPackages // ignore: cast_nullable_to_non_nullable
              as List<LikedPackageModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl implements _DataModel {
  const _$DataModelImpl(
      {@JsonKey(name: "likedPackages")
      final List<LikedPackageModel>? likedPackages})
      : _likedPackages = likedPackages;

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  final List<LikedPackageModel>? _likedPackages;
  @override
  @JsonKey(name: "likedPackages")
  List<LikedPackageModel>? get likedPackages {
    final value = _likedPackages;
    if (value == null) return null;
    if (_likedPackages is EqualUnmodifiableListView) return _likedPackages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataModel(likedPackages: $likedPackages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._likedPackages, _likedPackages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_likedPackages));

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
      {@JsonKey(name: "likedPackages")
      final List<LikedPackageModel>? likedPackages}) = _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @JsonKey(name: "likedPackages")
  List<LikedPackageModel>? get likedPackages;
  @override
  @JsonKey(ignore: true)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LikedPackageModel _$LikedPackageModelFromJson(Map<String, dynamic> json) {
  return _LikedPackageModel.fromJson(json);
}

/// @nodoc
mixin _$LikedPackageModel {
  @JsonKey(name: "user_uuid")
  String? get userUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "Package")
  PackageModel? get package => throw _privateConstructorUsedError;
  @JsonKey(name: "is_liked")
  bool? get isLiked => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LikedPackageModelCopyWith<LikedPackageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikedPackageModelCopyWith<$Res> {
  factory $LikedPackageModelCopyWith(
          LikedPackageModel value, $Res Function(LikedPackageModel) then) =
      _$LikedPackageModelCopyWithImpl<$Res, LikedPackageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "user_uuid") String? userUuid,
      @JsonKey(name: "Package") PackageModel? package,
      @JsonKey(name: "is_liked") bool? isLiked});

  $PackageModelCopyWith<$Res>? get package;
}

/// @nodoc
class _$LikedPackageModelCopyWithImpl<$Res, $Val extends LikedPackageModel>
    implements $LikedPackageModelCopyWith<$Res> {
  _$LikedPackageModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUuid = freezed,
    Object? package = freezed,
    Object? isLiked = freezed,
  }) {
    return _then(_value.copyWith(
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackageModel?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PackageModelCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $PackageModelCopyWith<$Res>(_value.package!, (value) {
      return _then(_value.copyWith(package: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LikedPackageModelImplCopyWith<$Res>
    implements $LikedPackageModelCopyWith<$Res> {
  factory _$$LikedPackageModelImplCopyWith(_$LikedPackageModelImpl value,
          $Res Function(_$LikedPackageModelImpl) then) =
      __$$LikedPackageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user_uuid") String? userUuid,
      @JsonKey(name: "Package") PackageModel? package,
      @JsonKey(name: "is_liked") bool? isLiked});

  @override
  $PackageModelCopyWith<$Res>? get package;
}

/// @nodoc
class __$$LikedPackageModelImplCopyWithImpl<$Res>
    extends _$LikedPackageModelCopyWithImpl<$Res, _$LikedPackageModelImpl>
    implements _$$LikedPackageModelImplCopyWith<$Res> {
  __$$LikedPackageModelImplCopyWithImpl(_$LikedPackageModelImpl _value,
      $Res Function(_$LikedPackageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUuid = freezed,
    Object? package = freezed,
    Object? isLiked = freezed,
  }) {
    return _then(_$LikedPackageModelImpl(
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackageModel?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LikedPackageModelImpl implements _LikedPackageModel {
  const _$LikedPackageModelImpl(
      {@JsonKey(name: "user_uuid") this.userUuid,
      @JsonKey(name: "Package") this.package,
      @JsonKey(name: "is_liked") this.isLiked});

  factory _$LikedPackageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikedPackageModelImplFromJson(json);

  @override
  @JsonKey(name: "user_uuid")
  final String? userUuid;
  @override
  @JsonKey(name: "Package")
  final PackageModel? package;
  @override
  @JsonKey(name: "is_liked")
  final bool? isLiked;

  @override
  String toString() {
    return 'LikedPackageModel(userUuid: $userUuid, package: $package, isLiked: $isLiked)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikedPackageModelImpl &&
            (identical(other.userUuid, userUuid) ||
                other.userUuid == userUuid) &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userUuid, package, isLiked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LikedPackageModelImplCopyWith<_$LikedPackageModelImpl> get copyWith =>
      __$$LikedPackageModelImplCopyWithImpl<_$LikedPackageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikedPackageModelImplToJson(
      this,
    );
  }
}

abstract class _LikedPackageModel implements LikedPackageModel {
  const factory _LikedPackageModel(
          {@JsonKey(name: "user_uuid") final String? userUuid,
          @JsonKey(name: "Package") final PackageModel? package,
          @JsonKey(name: "is_liked") final bool? isLiked}) =
      _$LikedPackageModelImpl;

  factory _LikedPackageModel.fromJson(Map<String, dynamic> json) =
      _$LikedPackageModelImpl.fromJson;

  @override
  @JsonKey(name: "user_uuid")
  String? get userUuid;
  @override
  @JsonKey(name: "Package")
  PackageModel? get package;
  @override
  @JsonKey(name: "is_liked")
  bool? get isLiked;
  @override
  @JsonKey(ignore: true)
  _$$LikedPackageModelImplCopyWith<_$LikedPackageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageModel _$PackageModelFromJson(Map<String, dynamic> json) {
  return _PackageModel.fromJson(json);
}

/// @nodoc
mixin _$PackageModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_uuid")
  String? get partnerUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "package_uuid")
  String? get packageUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "bucket_uuid")
  String? get bucketUuid => throw _privateConstructorUsedError;
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
  int? get transportationCost => throw _privateConstructorUsedError;
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
  @JsonKey(name: "selected_buckets")
  List<String>? get selectedBuckets => throw _privateConstructorUsedError;
  @JsonKey(name: "created_on")
  DateTime? get createdOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageModelCopyWith<PackageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageModelCopyWith<$Res> {
  factory $PackageModelCopyWith(
          PackageModel value, $Res Function(PackageModel) then) =
      _$PackageModelCopyWithImpl<$Res, PackageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "partner_uuid") String? partnerUuid,
      @JsonKey(name: "package_uuid") String? packageUuid,
      @JsonKey(name: "bucket_uuid") String? bucketUuid,
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
      @JsonKey(name: "transportation_cost") int? transportationCost,
      @JsonKey(name: "coupons_and_discounts") String? couponsAndDiscounts,
      @JsonKey(name: "upload_package_agreement") String? uploadPackageAgreement,
      @JsonKey(name: "most_booked_packages") bool? mostBookedPackages,
      @JsonKey(name: "trending_packages") bool? trendingPackages,
      @JsonKey(name: "best_seller_packages") bool? bestSellerPackages,
      @JsonKey(name: "promoted_packages") bool? promotedPackages,
      @JsonKey(name: "packageGallery")
      List<PackageGalleryModel>? packageGallery,
      @JsonKey(name: "selected_buckets") List<String>? selectedBuckets,
      @JsonKey(name: "created_on") DateTime? createdOn});
}

/// @nodoc
class _$PackageModelCopyWithImpl<$Res, $Val extends PackageModel>
    implements $PackageModelCopyWith<$Res> {
  _$PackageModelCopyWithImpl(this._value, this._then);

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
    Object? bucketUuid = freezed,
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
    Object? couponsAndDiscounts = freezed,
    Object? uploadPackageAgreement = freezed,
    Object? mostBookedPackages = freezed,
    Object? trendingPackages = freezed,
    Object? bestSellerPackages = freezed,
    Object? promotedPackages = freezed,
    Object? packageGallery = freezed,
    Object? selectedBuckets = freezed,
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
      bucketUuid: freezed == bucketUuid
          ? _value.bucketUuid
          : bucketUuid // ignore: cast_nullable_to_non_nullable
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
              as int?,
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
      selectedBuckets: freezed == selectedBuckets
          ? _value.selectedBuckets
          : selectedBuckets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageModelImplCopyWith<$Res>
    implements $PackageModelCopyWith<$Res> {
  factory _$$PackageModelImplCopyWith(
          _$PackageModelImpl value, $Res Function(_$PackageModelImpl) then) =
      __$$PackageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "partner_uuid") String? partnerUuid,
      @JsonKey(name: "package_uuid") String? packageUuid,
      @JsonKey(name: "bucket_uuid") String? bucketUuid,
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
      @JsonKey(name: "transportation_cost") int? transportationCost,
      @JsonKey(name: "coupons_and_discounts") String? couponsAndDiscounts,
      @JsonKey(name: "upload_package_agreement") String? uploadPackageAgreement,
      @JsonKey(name: "most_booked_packages") bool? mostBookedPackages,
      @JsonKey(name: "trending_packages") bool? trendingPackages,
      @JsonKey(name: "best_seller_packages") bool? bestSellerPackages,
      @JsonKey(name: "promoted_packages") bool? promotedPackages,
      @JsonKey(name: "packageGallery")
      List<PackageGalleryModel>? packageGallery,
      @JsonKey(name: "selected_buckets") List<String>? selectedBuckets,
      @JsonKey(name: "created_on") DateTime? createdOn});
}

/// @nodoc
class __$$PackageModelImplCopyWithImpl<$Res>
    extends _$PackageModelCopyWithImpl<$Res, _$PackageModelImpl>
    implements _$$PackageModelImplCopyWith<$Res> {
  __$$PackageModelImplCopyWithImpl(
      _$PackageModelImpl _value, $Res Function(_$PackageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partnerUuid = freezed,
    Object? packageUuid = freezed,
    Object? bucketUuid = freezed,
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
    Object? couponsAndDiscounts = freezed,
    Object? uploadPackageAgreement = freezed,
    Object? mostBookedPackages = freezed,
    Object? trendingPackages = freezed,
    Object? bestSellerPackages = freezed,
    Object? promotedPackages = freezed,
    Object? packageGallery = freezed,
    Object? selectedBuckets = freezed,
    Object? createdOn = freezed,
  }) {
    return _then(_$PackageModelImpl(
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
      bucketUuid: freezed == bucketUuid
          ? _value.bucketUuid
          : bucketUuid // ignore: cast_nullable_to_non_nullable
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
              as int?,
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
      selectedBuckets: freezed == selectedBuckets
          ? _value._selectedBuckets
          : selectedBuckets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageModelImpl implements _PackageModel {
  const _$PackageModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "partner_uuid") this.partnerUuid,
      @JsonKey(name: "package_uuid") this.packageUuid,
      @JsonKey(name: "bucket_uuid") this.bucketUuid,
      @JsonKey(name: "package_name") this.packageName,
      @JsonKey(name: "package_cover_image") this.packageCoverImage,
      @JsonKey(name: "parent_bucket") this.parentBucket,
      @JsonKey(name: "package_headline") this.packageHeadline,
      @JsonKey(name: "package_description") this.packageDescription,
      @JsonKey(name: "package_inclusions") this.packageInclusions,
      @JsonKey(name: "package_exclusions") this.packageExclusions,
      @JsonKey(name: "package_must_knows") this.packageMustKnows,
      @JsonKey(name: "service_location") this.serviceLocation,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "package_keywords") final List<String>? packageKeywords,
      @JsonKey(name: "package_tags") final List<String>? packageTags,
      @JsonKey(name: "service_timing_availability")
      this.serviceTimingAvailability,
      @JsonKey(name: "package_cost") this.packageCost,
      @JsonKey(name: "transportation_cost") this.transportationCost,
      @JsonKey(name: "coupons_and_discounts") this.couponsAndDiscounts,
      @JsonKey(name: "upload_package_agreement") this.uploadPackageAgreement,
      @JsonKey(name: "most_booked_packages") this.mostBookedPackages,
      @JsonKey(name: "trending_packages") this.trendingPackages,
      @JsonKey(name: "best_seller_packages") this.bestSellerPackages,
      @JsonKey(name: "promoted_packages") this.promotedPackages,
      @JsonKey(name: "packageGallery")
      final List<PackageGalleryModel>? packageGallery,
      @JsonKey(name: "selected_buckets") final List<String>? selectedBuckets,
      @JsonKey(name: "created_on") this.createdOn})
      : _packageKeywords = packageKeywords,
        _packageTags = packageTags,
        _packageGallery = packageGallery,
        _selectedBuckets = selectedBuckets;

  factory _$PackageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageModelImplFromJson(json);

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
  @JsonKey(name: "bucket_uuid")
  final String? bucketUuid;
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
  final int? transportationCost;
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

  final List<String>? _selectedBuckets;
  @override
  @JsonKey(name: "selected_buckets")
  List<String>? get selectedBuckets {
    final value = _selectedBuckets;
    if (value == null) return null;
    if (_selectedBuckets is EqualUnmodifiableListView) return _selectedBuckets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "created_on")
  final DateTime? createdOn;

  @override
  String toString() {
    return 'PackageModel(id: $id, partnerUuid: $partnerUuid, packageUuid: $packageUuid, bucketUuid: $bucketUuid, packageName: $packageName, packageCoverImage: $packageCoverImage, parentBucket: $parentBucket, packageHeadline: $packageHeadline, packageDescription: $packageDescription, packageInclusions: $packageInclusions, packageExclusions: $packageExclusions, packageMustKnows: $packageMustKnows, serviceLocation: $serviceLocation, status: $status, packageKeywords: $packageKeywords, packageTags: $packageTags, serviceTimingAvailability: $serviceTimingAvailability, packageCost: $packageCost, transportationCost: $transportationCost, couponsAndDiscounts: $couponsAndDiscounts, uploadPackageAgreement: $uploadPackageAgreement, mostBookedPackages: $mostBookedPackages, trendingPackages: $trendingPackages, bestSellerPackages: $bestSellerPackages, promotedPackages: $promotedPackages, packageGallery: $packageGallery, selectedBuckets: $selectedBuckets, createdOn: $createdOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partnerUuid, partnerUuid) ||
                other.partnerUuid == partnerUuid) &&
            (identical(other.packageUuid, packageUuid) ||
                other.packageUuid == packageUuid) &&
            (identical(other.bucketUuid, bucketUuid) ||
                other.bucketUuid == bucketUuid) &&
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
            const DeepCollectionEquality()
                .equals(other._selectedBuckets, _selectedBuckets) &&
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
        bucketUuid,
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
        couponsAndDiscounts,
        uploadPackageAgreement,
        mostBookedPackages,
        trendingPackages,
        bestSellerPackages,
        promotedPackages,
        const DeepCollectionEquality().hash(_packageGallery),
        const DeepCollectionEquality().hash(_selectedBuckets),
        createdOn
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageModelImplCopyWith<_$PackageModelImpl> get copyWith =>
      __$$PackageModelImplCopyWithImpl<_$PackageModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageModelImplToJson(
      this,
    );
  }
}

abstract class _PackageModel implements PackageModel {
  const factory _PackageModel(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "partner_uuid") final String? partnerUuid,
      @JsonKey(name: "package_uuid") final String? packageUuid,
      @JsonKey(name: "bucket_uuid") final String? bucketUuid,
      @JsonKey(name: "package_name") final String? packageName,
      @JsonKey(name: "package_cover_image") final String? packageCoverImage,
      @JsonKey(name: "parent_bucket") final String? parentBucket,
      @JsonKey(name: "package_headline") final String? packageHeadline,
      @JsonKey(name: "package_description") final String? packageDescription,
      @JsonKey(name: "package_inclusions") final String? packageInclusions,
      @JsonKey(name: "package_exclusions") final String? packageExclusions,
      @JsonKey(name: "package_must_knows") final String? packageMustKnows,
      @JsonKey(name: "service_location") final String? serviceLocation,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "package_keywords") final List<String>? packageKeywords,
      @JsonKey(name: "package_tags") final List<String>? packageTags,
      @JsonKey(name: "service_timing_availability")
      final String? serviceTimingAvailability,
      @JsonKey(name: "package_cost") final int? packageCost,
      @JsonKey(name: "transportation_cost") final int? transportationCost,
      @JsonKey(name: "coupons_and_discounts") final String? couponsAndDiscounts,
      @JsonKey(name: "upload_package_agreement")
      final String? uploadPackageAgreement,
      @JsonKey(name: "most_booked_packages") final bool? mostBookedPackages,
      @JsonKey(name: "trending_packages") final bool? trendingPackages,
      @JsonKey(name: "best_seller_packages") final bool? bestSellerPackages,
      @JsonKey(name: "promoted_packages") final bool? promotedPackages,
      @JsonKey(name: "packageGallery")
      final List<PackageGalleryModel>? packageGallery,
      @JsonKey(name: "selected_buckets") final List<String>? selectedBuckets,
      @JsonKey(name: "created_on")
      final DateTime? createdOn}) = _$PackageModelImpl;

  factory _PackageModel.fromJson(Map<String, dynamic> json) =
      _$PackageModelImpl.fromJson;

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
  @JsonKey(name: "bucket_uuid")
  String? get bucketUuid;
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
  int? get transportationCost;
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
  @JsonKey(name: "selected_buckets")
  List<String>? get selectedBuckets;
  @override
  @JsonKey(name: "created_on")
  DateTime? get createdOn;
  @override
  @JsonKey(ignore: true)
  _$$PackageModelImplCopyWith<_$PackageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
  List<String>? get assignedTo => throw _privateConstructorUsedError;

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
      @JsonKey(name: "assigned_to") List<String>? assignedTo});
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
              as List<String>?,
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
      @JsonKey(name: "assigned_to") List<String>? assignedTo});
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
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageGalleryModelImpl implements _PackageGalleryModel {
  const _$PackageGalleryModelImpl(
      {@JsonKey(name: "media") this.media,
      @JsonKey(name: "description") this.description,
      @JsonKey(name: "assigned_to") final List<String>? assignedTo})
      : _assignedTo = assignedTo;

  factory _$PackageGalleryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageGalleryModelImplFromJson(json);

  @override
  @JsonKey(name: "media")
  final String? media;
  @override
  @JsonKey(name: "description")
  final String? description;
  final List<String>? _assignedTo;
  @override
  @JsonKey(name: "assigned_to")
  List<String>? get assignedTo {
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
          {@JsonKey(name: "media") final String? media,
          @JsonKey(name: "description") final String? description,
          @JsonKey(name: "assigned_to") final List<String>? assignedTo}) =
      _$PackageGalleryModelImpl;

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
  List<String>? get assignedTo;
  @override
  @JsonKey(ignore: true)
  _$$PackageGalleryModelImplCopyWith<_$PackageGalleryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
