// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'package_details_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PackageDetailsModel _$PackageDetailsModelFromJson(Map<String, dynamic> json) {
  return _PackageDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$PackageDetailsModel {
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
  $PackageDetailsModelCopyWith<PackageDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageDetailsModelCopyWith<$Res> {
  factory $PackageDetailsModelCopyWith(
          PackageDetailsModel value, $Res Function(PackageDetailsModel) then) =
      _$PackageDetailsModelCopyWithImpl<$Res, PackageDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataModel? data,
      @JsonKey(name: "success_status") bool? successStatus});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$PackageDetailsModelCopyWithImpl<$Res, $Val extends PackageDetailsModel>
    implements $PackageDetailsModelCopyWith<$Res> {
  _$PackageDetailsModelCopyWithImpl(this._value, this._then);

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
abstract class _$$PackageDetailsModelImplCopyWith<$Res>
    implements $PackageDetailsModelCopyWith<$Res> {
  factory _$$PackageDetailsModelImplCopyWith(_$PackageDetailsModelImpl value,
          $Res Function(_$PackageDetailsModelImpl) then) =
      __$$PackageDetailsModelImplCopyWithImpl<$Res>;
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
class __$$PackageDetailsModelImplCopyWithImpl<$Res>
    extends _$PackageDetailsModelCopyWithImpl<$Res, _$PackageDetailsModelImpl>
    implements _$$PackageDetailsModelImplCopyWith<$Res> {
  __$$PackageDetailsModelImplCopyWithImpl(_$PackageDetailsModelImpl _value,
      $Res Function(_$PackageDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? successStatus = freezed,
  }) {
    return _then(_$PackageDetailsModelImpl(
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
class _$PackageDetailsModelImpl implements _PackageDetailsModel {
  const _$PackageDetailsModelImpl(
      {@JsonKey(name: "code") required this.code,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required this.data,
      @JsonKey(name: "success_status") required this.successStatus});

  factory _$PackageDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageDetailsModelImplFromJson(json);

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
    return 'PackageDetailsModel(code: $code, message: $message, data: $data, successStatus: $successStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageDetailsModelImpl &&
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
  _$$PackageDetailsModelImplCopyWith<_$PackageDetailsModelImpl> get copyWith =>
      __$$PackageDetailsModelImplCopyWithImpl<_$PackageDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _PackageDetailsModel implements PackageDetailsModel {
  const factory _PackageDetailsModel(
      {@JsonKey(name: "code") required final String? code,
      @JsonKey(name: "message") required final String? message,
      @JsonKey(name: "data") required final DataModel? data,
      @JsonKey(name: "success_status")
      required final bool? successStatus}) = _$PackageDetailsModelImpl;

  factory _PackageDetailsModel.fromJson(Map<String, dynamic> json) =
      _$PackageDetailsModelImpl.fromJson;

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
  _$$PackageDetailsModelImplCopyWith<_$PackageDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: "packageDetails")
  PackageDetailsModels? get packageDetails =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "partnerName")
  String? get partnerName => throw _privateConstructorUsedError;
  @JsonKey(name: "packageReviews")
  List<PackageReviewModel>? get packageReviews =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "reviewAverages")
  ReviewAveragesModel? get reviewAverages => throw _privateConstructorUsedError;
  @JsonKey(name: "ProfileImage")
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: "bookingCount")
  int? get bookingCount => throw _privateConstructorUsedError;
  @JsonKey(name: "partnerLocation")
  List<dynamic>? get partnerLocation => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "packageDetails") PackageDetailsModels? packageDetails,
      @JsonKey(name: "partnerName") String? partnerName,
      @JsonKey(name: "packageReviews") List<PackageReviewModel>? packageReviews,
      @JsonKey(name: "reviewAverages") ReviewAveragesModel? reviewAverages,
      @JsonKey(name: "ProfileImage") String? profileImage,
      @JsonKey(name: "bookingCount") int? bookingCount,
      @JsonKey(name: "partnerLocation") List<dynamic>? partnerLocation});

  $PackageDetailsModelsCopyWith<$Res>? get packageDetails;
  $ReviewAveragesModelCopyWith<$Res>? get reviewAverages;
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
    Object? packageDetails = freezed,
    Object? partnerName = freezed,
    Object? packageReviews = freezed,
    Object? reviewAverages = freezed,
    Object? profileImage = freezed,
    Object? bookingCount = freezed,
    Object? partnerLocation = freezed,
  }) {
    return _then(_value.copyWith(
      packageDetails: freezed == packageDetails
          ? _value.packageDetails
          : packageDetails // ignore: cast_nullable_to_non_nullable
              as PackageDetailsModels?,
      partnerName: freezed == partnerName
          ? _value.partnerName
          : partnerName // ignore: cast_nullable_to_non_nullable
              as String?,
      packageReviews: freezed == packageReviews
          ? _value.packageReviews
          : packageReviews // ignore: cast_nullable_to_non_nullable
              as List<PackageReviewModel>?,
      reviewAverages: freezed == reviewAverages
          ? _value.reviewAverages
          : reviewAverages // ignore: cast_nullable_to_non_nullable
              as ReviewAveragesModel?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingCount: freezed == bookingCount
          ? _value.bookingCount
          : bookingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerLocation: freezed == partnerLocation
          ? _value.partnerLocation
          : partnerLocation // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PackageDetailsModelsCopyWith<$Res>? get packageDetails {
    if (_value.packageDetails == null) {
      return null;
    }

    return $PackageDetailsModelsCopyWith<$Res>(_value.packageDetails!, (value) {
      return _then(_value.copyWith(packageDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewAveragesModelCopyWith<$Res>? get reviewAverages {
    if (_value.reviewAverages == null) {
      return null;
    }

    return $ReviewAveragesModelCopyWith<$Res>(_value.reviewAverages!, (value) {
      return _then(_value.copyWith(reviewAverages: value) as $Val);
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
      {@JsonKey(name: "packageDetails") PackageDetailsModels? packageDetails,
      @JsonKey(name: "partnerName") String? partnerName,
      @JsonKey(name: "packageReviews") List<PackageReviewModel>? packageReviews,
      @JsonKey(name: "reviewAverages") ReviewAveragesModel? reviewAverages,
      @JsonKey(name: "ProfileImage") String? profileImage,
      @JsonKey(name: "bookingCount") int? bookingCount,
      @JsonKey(name: "partnerLocation") List<dynamic>? partnerLocation});

  @override
  $PackageDetailsModelsCopyWith<$Res>? get packageDetails;
  @override
  $ReviewAveragesModelCopyWith<$Res>? get reviewAverages;
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
    Object? packageDetails = freezed,
    Object? partnerName = freezed,
    Object? packageReviews = freezed,
    Object? reviewAverages = freezed,
    Object? profileImage = freezed,
    Object? bookingCount = freezed,
    Object? partnerLocation = freezed,
  }) {
    return _then(_$DataModelImpl(
      packageDetails: freezed == packageDetails
          ? _value.packageDetails
          : packageDetails // ignore: cast_nullable_to_non_nullable
              as PackageDetailsModels?,
      partnerName: freezed == partnerName
          ? _value.partnerName
          : partnerName // ignore: cast_nullable_to_non_nullable
              as String?,
      packageReviews: freezed == packageReviews
          ? _value._packageReviews
          : packageReviews // ignore: cast_nullable_to_non_nullable
              as List<PackageReviewModel>?,
      reviewAverages: freezed == reviewAverages
          ? _value.reviewAverages
          : reviewAverages // ignore: cast_nullable_to_non_nullable
              as ReviewAveragesModel?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingCount: freezed == bookingCount
          ? _value.bookingCount
          : bookingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      partnerLocation: freezed == partnerLocation
          ? _value._partnerLocation
          : partnerLocation // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl implements _DataModel {
  const _$DataModelImpl(
      {@JsonKey(name: "packageDetails") required this.packageDetails,
      @JsonKey(name: "partnerName") required this.partnerName,
      @JsonKey(name: "packageReviews")
      required final List<PackageReviewModel>? packageReviews,
      @JsonKey(name: "reviewAverages") required this.reviewAverages,
      @JsonKey(name: "ProfileImage") required this.profileImage,
      @JsonKey(name: "bookingCount") required this.bookingCount,
      @JsonKey(name: "partnerLocation")
      required final List<dynamic>? partnerLocation})
      : _packageReviews = packageReviews,
        _partnerLocation = partnerLocation;

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  @override
  @JsonKey(name: "packageDetails")
  final PackageDetailsModels? packageDetails;
  @override
  @JsonKey(name: "partnerName")
  final String? partnerName;
  final List<PackageReviewModel>? _packageReviews;
  @override
  @JsonKey(name: "packageReviews")
  List<PackageReviewModel>? get packageReviews {
    final value = _packageReviews;
    if (value == null) return null;
    if (_packageReviews is EqualUnmodifiableListView) return _packageReviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "reviewAverages")
  final ReviewAveragesModel? reviewAverages;
  @override
  @JsonKey(name: "ProfileImage")
  final String? profileImage;
  @override
  @JsonKey(name: "bookingCount")
  final int? bookingCount;
  final List<dynamic>? _partnerLocation;
  @override
  @JsonKey(name: "partnerLocation")
  List<dynamic>? get partnerLocation {
    final value = _partnerLocation;
    if (value == null) return null;
    if (_partnerLocation is EqualUnmodifiableListView) return _partnerLocation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataModel(packageDetails: $packageDetails, partnerName: $partnerName, packageReviews: $packageReviews, reviewAverages: $reviewAverages, profileImage: $profileImage, bookingCount: $bookingCount, partnerLocation: $partnerLocation)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            (identical(other.packageDetails, packageDetails) ||
                other.packageDetails == packageDetails) &&
            (identical(other.partnerName, partnerName) ||
                other.partnerName == partnerName) &&
            const DeepCollectionEquality()
                .equals(other._packageReviews, _packageReviews) &&
            (identical(other.reviewAverages, reviewAverages) ||
                other.reviewAverages == reviewAverages) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.bookingCount, bookingCount) ||
                other.bookingCount == bookingCount) &&
            const DeepCollectionEquality()
                .equals(other._partnerLocation, _partnerLocation));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      packageDetails,
      partnerName,
      const DeepCollectionEquality().hash(_packageReviews),
      reviewAverages,
      profileImage,
      bookingCount,
      const DeepCollectionEquality().hash(_partnerLocation));

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
      {@JsonKey(name: "packageDetails")
      required final PackageDetailsModels? packageDetails,
      @JsonKey(name: "partnerName") required final String? partnerName,
      @JsonKey(name: "packageReviews")
      required final List<PackageReviewModel>? packageReviews,
      @JsonKey(name: "reviewAverages")
      required final ReviewAveragesModel? reviewAverages,
      @JsonKey(name: "ProfileImage") required final String? profileImage,
      @JsonKey(name: "bookingCount") required final int? bookingCount,
      @JsonKey(name: "partnerLocation")
      required final List<dynamic>? partnerLocation}) = _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @JsonKey(name: "packageDetails")
  PackageDetailsModels? get packageDetails;
  @override
  @JsonKey(name: "partnerName")
  String? get partnerName;
  @override
  @JsonKey(name: "packageReviews")
  List<PackageReviewModel>? get packageReviews;
  @override
  @JsonKey(name: "reviewAverages")
  ReviewAveragesModel? get reviewAverages;
  @override
  @JsonKey(name: "ProfileImage")
  String? get profileImage;
  @override
  @JsonKey(name: "bookingCount")
  int? get bookingCount;
  @override
  @JsonKey(name: "partnerLocation")
  List<dynamic>? get partnerLocation;
  @override
  @JsonKey(ignore: true)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageDetailsModels _$PackageDetailsModelsFromJson(Map<String, dynamic> json) {
  return _PackageDetailsModels.fromJson(json);
}

/// @nodoc
mixin _$PackageDetailsModels {
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
  List<ServiceLocationModel>? get serviceLocation =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "package_keywords")
  List<String>? get packageKeywords => throw _privateConstructorUsedError;
  @JsonKey(name: "package_tags")
  List<String>? get packageTags => throw _privateConstructorUsedError;
  @JsonKey(name: "service_timing_availability")
  String? get serviceTimingAvailability => throw _privateConstructorUsedError;
  @JsonKey(name: "service_slot_duration")
  String? get serviceSlotDuration => throw _privateConstructorUsedError;
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
  @JsonKey(name: "selected_buckets")
  List<dynamic>? get selectedBuckets => throw _privateConstructorUsedError;
  @JsonKey(name: "created_on")
  DateTime? get createdOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageDetailsModelsCopyWith<PackageDetailsModels> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageDetailsModelsCopyWith<$Res> {
  factory $PackageDetailsModelsCopyWith(PackageDetailsModels value,
          $Res Function(PackageDetailsModels) then) =
      _$PackageDetailsModelsCopyWithImpl<$Res, PackageDetailsModels>;
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
      @JsonKey(name: "service_location")
      List<ServiceLocationModel>? serviceLocation,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "package_keywords") List<String>? packageKeywords,
      @JsonKey(name: "package_tags") List<String>? packageTags,
      @JsonKey(name: "service_timing_availability")
      String? serviceTimingAvailability,
      @JsonKey(name: "service_slot_duration") String? serviceSlotDuration,
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
      @JsonKey(name: "selected_buckets") List<dynamic>? selectedBuckets,
      @JsonKey(name: "created_on") DateTime? createdOn});
}

/// @nodoc
class _$PackageDetailsModelsCopyWithImpl<$Res,
        $Val extends PackageDetailsModels>
    implements $PackageDetailsModelsCopyWith<$Res> {
  _$PackageDetailsModelsCopyWithImpl(this._value, this._then);

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
    Object? serviceSlotDuration = freezed,
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
              as List<ServiceLocationModel>?,
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
      serviceSlotDuration: freezed == serviceSlotDuration
          ? _value.serviceSlotDuration
          : serviceSlotDuration // ignore: cast_nullable_to_non_nullable
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
      selectedBuckets: freezed == selectedBuckets
          ? _value.selectedBuckets
          : selectedBuckets // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageDetailsModelsImplCopyWith<$Res>
    implements $PackageDetailsModelsCopyWith<$Res> {
  factory _$$PackageDetailsModelsImplCopyWith(_$PackageDetailsModelsImpl value,
          $Res Function(_$PackageDetailsModelsImpl) then) =
      __$$PackageDetailsModelsImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "service_location")
      List<ServiceLocationModel>? serviceLocation,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "package_keywords") List<String>? packageKeywords,
      @JsonKey(name: "package_tags") List<String>? packageTags,
      @JsonKey(name: "service_timing_availability")
      String? serviceTimingAvailability,
      @JsonKey(name: "service_slot_duration") String? serviceSlotDuration,
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
      @JsonKey(name: "selected_buckets") List<dynamic>? selectedBuckets,
      @JsonKey(name: "created_on") DateTime? createdOn});
}

/// @nodoc
class __$$PackageDetailsModelsImplCopyWithImpl<$Res>
    extends _$PackageDetailsModelsCopyWithImpl<$Res, _$PackageDetailsModelsImpl>
    implements _$$PackageDetailsModelsImplCopyWith<$Res> {
  __$$PackageDetailsModelsImplCopyWithImpl(_$PackageDetailsModelsImpl _value,
      $Res Function(_$PackageDetailsModelsImpl) _then)
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
    Object? serviceSlotDuration = freezed,
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
    Object? selectedBuckets = freezed,
    Object? createdOn = freezed,
  }) {
    return _then(_$PackageDetailsModelsImpl(
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
          ? _value._serviceLocation
          : serviceLocation // ignore: cast_nullable_to_non_nullable
              as List<ServiceLocationModel>?,
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
      serviceSlotDuration: freezed == serviceSlotDuration
          ? _value.serviceSlotDuration
          : serviceSlotDuration // ignore: cast_nullable_to_non_nullable
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
      selectedBuckets: freezed == selectedBuckets
          ? _value._selectedBuckets
          : selectedBuckets // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageDetailsModelsImpl implements _PackageDetailsModels {
  const _$PackageDetailsModelsImpl(
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
      @JsonKey(name: "service_location")
      required final List<ServiceLocationModel>? serviceLocation,
      @JsonKey(name: "status") required this.status,
      @JsonKey(name: "package_keywords")
      required final List<String>? packageKeywords,
      @JsonKey(name: "package_tags") required final List<String>? packageTags,
      @JsonKey(name: "service_timing_availability")
      required this.serviceTimingAvailability,
      @JsonKey(name: "service_slot_duration") required this.serviceSlotDuration,
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
      @JsonKey(name: "selected_buckets")
      required final List<dynamic>? selectedBuckets,
      @JsonKey(name: "created_on") required this.createdOn})
      : _serviceLocation = serviceLocation,
        _packageKeywords = packageKeywords,
        _packageTags = packageTags,
        _packageGallery = packageGallery,
        _selectedBuckets = selectedBuckets;

  factory _$PackageDetailsModelsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageDetailsModelsImplFromJson(json);

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
  final List<ServiceLocationModel>? _serviceLocation;
  @override
  @JsonKey(name: "service_location")
  List<ServiceLocationModel>? get serviceLocation {
    final value = _serviceLocation;
    if (value == null) return null;
    if (_serviceLocation is EqualUnmodifiableListView) return _serviceLocation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  @JsonKey(name: "service_slot_duration")
  final String? serviceSlotDuration;
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

  final List<dynamic>? _selectedBuckets;
  @override
  @JsonKey(name: "selected_buckets")
  List<dynamic>? get selectedBuckets {
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
    return 'PackageDetailsModels(id: $id, partnerUuid: $partnerUuid, packageUuid: $packageUuid, packageName: $packageName, packageCoverImage: $packageCoverImage, parentBucket: $parentBucket, packageHeadline: $packageHeadline, packageDescription: $packageDescription, packageInclusions: $packageInclusions, packageExclusions: $packageExclusions, packageMustKnows: $packageMustKnows, serviceLocation: $serviceLocation, status: $status, packageKeywords: $packageKeywords, packageTags: $packageTags, serviceTimingAvailability: $serviceTimingAvailability, serviceSlotDuration: $serviceSlotDuration, packageCost: $packageCost, transportationCost: $transportationCost, extraAllowance: $extraAllowance, couponsAndDiscounts: $couponsAndDiscounts, uploadPackageAgreement: $uploadPackageAgreement, mostBookedPackages: $mostBookedPackages, trendingPackages: $trendingPackages, bestSellerPackages: $bestSellerPackages, promotedPackages: $promotedPackages, packageGallery: $packageGallery, selectedBuckets: $selectedBuckets, createdOn: $createdOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageDetailsModelsImpl &&
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
            const DeepCollectionEquality()
                .equals(other._serviceLocation, _serviceLocation) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._packageKeywords, _packageKeywords) &&
            const DeepCollectionEquality()
                .equals(other._packageTags, _packageTags) &&
            (identical(other.serviceTimingAvailability,
                    serviceTimingAvailability) ||
                other.serviceTimingAvailability == serviceTimingAvailability) &&
            (identical(other.serviceSlotDuration, serviceSlotDuration) ||
                other.serviceSlotDuration == serviceSlotDuration) &&
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
        packageName,
        packageCoverImage,
        parentBucket,
        packageHeadline,
        packageDescription,
        packageInclusions,
        packageExclusions,
        packageMustKnows,
        const DeepCollectionEquality().hash(_serviceLocation),
        status,
        const DeepCollectionEquality().hash(_packageKeywords),
        const DeepCollectionEquality().hash(_packageTags),
        serviceTimingAvailability,
        serviceSlotDuration,
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
        const DeepCollectionEquality().hash(_selectedBuckets),
        createdOn
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageDetailsModelsImplCopyWith<_$PackageDetailsModelsImpl>
      get copyWith =>
          __$$PackageDetailsModelsImplCopyWithImpl<_$PackageDetailsModelsImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageDetailsModelsImplToJson(
      this,
    );
  }
}

abstract class _PackageDetailsModels implements PackageDetailsModels {
  const factory _PackageDetailsModels(
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
      @JsonKey(name: "service_location")
      required final List<ServiceLocationModel>? serviceLocation,
      @JsonKey(name: "status") required final String? status,
      @JsonKey(name: "package_keywords")
      required final List<String>? packageKeywords,
      @JsonKey(name: "package_tags") required final List<String>? packageTags,
      @JsonKey(name: "service_timing_availability")
      required final String? serviceTimingAvailability,
      @JsonKey(name: "service_slot_duration")
      required final String? serviceSlotDuration,
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
      @JsonKey(name: "selected_buckets")
      required final List<dynamic>? selectedBuckets,
      @JsonKey(name: "created_on")
      required final DateTime? createdOn}) = _$PackageDetailsModelsImpl;

  factory _PackageDetailsModels.fromJson(Map<String, dynamic> json) =
      _$PackageDetailsModelsImpl.fromJson;

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
  List<ServiceLocationModel>? get serviceLocation;
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
  @JsonKey(name: "service_slot_duration")
  String? get serviceSlotDuration;
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
  @JsonKey(name: "selected_buckets")
  List<dynamic>? get selectedBuckets;
  @override
  @JsonKey(name: "created_on")
  DateTime? get createdOn;
  @override
  @JsonKey(ignore: true)
  _$$PackageDetailsModelsImplCopyWith<_$PackageDetailsModelsImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PackageGalleryModel _$PackageGalleryModelFromJson(Map<String, dynamic> json) {
  return _PackageGalleryModel.fromJson(json);
}

/// @nodoc
mixin _$PackageGalleryModel {
  @JsonKey(name: "media_type")
  String? get mediatype => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "media_type") String? mediatype,
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
    Object? mediatype = freezed,
    Object? description = freezed,
    Object? assignedTo = freezed,
  }) {
    return _then(_value.copyWith(
      mediatype: freezed == mediatype
          ? _value.mediatype
          : mediatype // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "media_type") String? mediatype,
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
    Object? mediatype = freezed,
    Object? description = freezed,
    Object? assignedTo = freezed,
  }) {
    return _then(_$PackageGalleryModelImpl(
      mediatype: freezed == mediatype
          ? _value.mediatype
          : mediatype // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "media_type") required this.mediatype,
      @JsonKey(name: "description") required this.description,
      @JsonKey(name: "assigned_to") required final List<dynamic>? assignedTo})
      : _assignedTo = assignedTo;

  factory _$PackageGalleryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageGalleryModelImplFromJson(json);

  @override
  @JsonKey(name: "media_type")
  final String? mediatype;
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
    return 'PackageGalleryModel(mediatype: $mediatype, description: $description, assignedTo: $assignedTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageGalleryModelImpl &&
            (identical(other.mediatype, mediatype) ||
                other.mediatype == mediatype) &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._assignedTo, _assignedTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mediatype, description,
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
      {@JsonKey(name: "media_type") required final String? mediatype,
      @JsonKey(name: "description") required final String? description,
      @JsonKey(name: "assigned_to")
      required final List<dynamic>? assignedTo}) = _$PackageGalleryModelImpl;

  factory _PackageGalleryModel.fromJson(Map<String, dynamic> json) =
      _$PackageGalleryModelImpl.fromJson;

  @override
  @JsonKey(name: "media_type")
  String? get mediatype;
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

PackageReviewModel _$PackageReviewModelFromJson(Map<String, dynamic> json) {
  return _PackageReviewModel.fromJson(json);
}

/// @nodoc
mixin _$PackageReviewModel {
  @JsonKey(name: "fullName")
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "profileImage")
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: "reviewDetails")
  ReviewDetailsModel? get reviewDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "patron_level")
  int? get patronLevel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageReviewModelCopyWith<PackageReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageReviewModelCopyWith<$Res> {
  factory $PackageReviewModelCopyWith(
          PackageReviewModel value, $Res Function(PackageReviewModel) then) =
      _$PackageReviewModelCopyWithImpl<$Res, PackageReviewModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "profileImage") String? profileImage,
      @JsonKey(name: "reviewDetails") ReviewDetailsModel? reviewDetails,
      @JsonKey(name: "patron_level") int? patronLevel});

  $ReviewDetailsModelCopyWith<$Res>? get reviewDetails;
}

/// @nodoc
class _$PackageReviewModelCopyWithImpl<$Res, $Val extends PackageReviewModel>
    implements $PackageReviewModelCopyWith<$Res> {
  _$PackageReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? city = freezed,
    Object? profileImage = freezed,
    Object? reviewDetails = freezed,
    Object? patronLevel = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewDetails: freezed == reviewDetails
          ? _value.reviewDetails
          : reviewDetails // ignore: cast_nullable_to_non_nullable
              as ReviewDetailsModel?,
      patronLevel: freezed == patronLevel
          ? _value.patronLevel
          : patronLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewDetailsModelCopyWith<$Res>? get reviewDetails {
    if (_value.reviewDetails == null) {
      return null;
    }

    return $ReviewDetailsModelCopyWith<$Res>(_value.reviewDetails!, (value) {
      return _then(_value.copyWith(reviewDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackageReviewModelImplCopyWith<$Res>
    implements $PackageReviewModelCopyWith<$Res> {
  factory _$$PackageReviewModelImplCopyWith(_$PackageReviewModelImpl value,
          $Res Function(_$PackageReviewModelImpl) then) =
      __$$PackageReviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "profileImage") String? profileImage,
      @JsonKey(name: "reviewDetails") ReviewDetailsModel? reviewDetails,
      @JsonKey(name: "patron_level") int? patronLevel});

  @override
  $ReviewDetailsModelCopyWith<$Res>? get reviewDetails;
}

/// @nodoc
class __$$PackageReviewModelImplCopyWithImpl<$Res>
    extends _$PackageReviewModelCopyWithImpl<$Res, _$PackageReviewModelImpl>
    implements _$$PackageReviewModelImplCopyWith<$Res> {
  __$$PackageReviewModelImplCopyWithImpl(_$PackageReviewModelImpl _value,
      $Res Function(_$PackageReviewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? city = freezed,
    Object? profileImage = freezed,
    Object? reviewDetails = freezed,
    Object? patronLevel = freezed,
  }) {
    return _then(_$PackageReviewModelImpl(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewDetails: freezed == reviewDetails
          ? _value.reviewDetails
          : reviewDetails // ignore: cast_nullable_to_non_nullable
              as ReviewDetailsModel?,
      patronLevel: freezed == patronLevel
          ? _value.patronLevel
          : patronLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageReviewModelImpl implements _PackageReviewModel {
  const _$PackageReviewModelImpl(
      {@JsonKey(name: "fullName") required this.fullName,
      @JsonKey(name: "city") required this.city,
      @JsonKey(name: "profileImage") required this.profileImage,
      @JsonKey(name: "reviewDetails") required this.reviewDetails,
      @JsonKey(name: "patron_level") required this.patronLevel});

  factory _$PackageReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageReviewModelImplFromJson(json);

  @override
  @JsonKey(name: "fullName")
  final String? fullName;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "profileImage")
  final String? profileImage;
  @override
  @JsonKey(name: "reviewDetails")
  final ReviewDetailsModel? reviewDetails;
  @override
  @JsonKey(name: "patron_level")
  final int? patronLevel;

  @override
  String toString() {
    return 'PackageReviewModel(fullName: $fullName, city: $city, profileImage: $profileImage, reviewDetails: $reviewDetails, patronLevel: $patronLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageReviewModelImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.reviewDetails, reviewDetails) ||
                other.reviewDetails == reviewDetails) &&
            (identical(other.patronLevel, patronLevel) ||
                other.patronLevel == patronLevel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fullName, city, profileImage, reviewDetails, patronLevel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageReviewModelImplCopyWith<_$PackageReviewModelImpl> get copyWith =>
      __$$PackageReviewModelImplCopyWithImpl<_$PackageReviewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageReviewModelImplToJson(
      this,
    );
  }
}

abstract class _PackageReviewModel implements PackageReviewModel {
  const factory _PackageReviewModel(
          {@JsonKey(name: "fullName") required final String? fullName,
          @JsonKey(name: "city") required final String? city,
          @JsonKey(name: "profileImage") required final String? profileImage,
          @JsonKey(name: "reviewDetails")
          required final ReviewDetailsModel? reviewDetails,
          @JsonKey(name: "patron_level") required final int? patronLevel}) =
      _$PackageReviewModelImpl;

  factory _PackageReviewModel.fromJson(Map<String, dynamic> json) =
      _$PackageReviewModelImpl.fromJson;

  @override
  @JsonKey(name: "fullName")
  String? get fullName;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "profileImage")
  String? get profileImage;
  @override
  @JsonKey(name: "reviewDetails")
  ReviewDetailsModel? get reviewDetails;
  @override
  @JsonKey(name: "patron_level")
  int? get patronLevel;
  @override
  @JsonKey(ignore: true)
  _$$PackageReviewModelImplCopyWith<_$PackageReviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewDetailsModel _$ReviewDetailsModelFromJson(Map<String, dynamic> json) {
  return _ReviewDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewDetailsModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_uuid")
  String? get userUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "package_uuid")
  String? get packageUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "review_uuid")
  String? get reviewUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "communication")
  double? get communication => throw _privateConstructorUsedError;
  @JsonKey(name: "service_described")
  double? get serviceDescribed => throw _privateConstructorUsedError;
  @JsonKey(name: "recommended")
  double? get recommended => throw _privateConstructorUsedError;
  @JsonKey(name: "source")
  String? get source => throw _privateConstructorUsedError;
  @JsonKey(name: "review")
  String? get review => throw _privateConstructorUsedError;
  @JsonKey(name: "media")
  List<String>? get media => throw _privateConstructorUsedError;
  @JsonKey(name: "created_on")
  DateTime? get createdOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewDetailsModelCopyWith<ReviewDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDetailsModelCopyWith<$Res> {
  factory $ReviewDetailsModelCopyWith(
          ReviewDetailsModel value, $Res Function(ReviewDetailsModel) then) =
      _$ReviewDetailsModelCopyWithImpl<$Res, ReviewDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_uuid") String? userUuid,
      @JsonKey(name: "package_uuid") String? packageUuid,
      @JsonKey(name: "review_uuid") String? reviewUuid,
      @JsonKey(name: "communication") double? communication,
      @JsonKey(name: "service_described") double? serviceDescribed,
      @JsonKey(name: "recommended") double? recommended,
      @JsonKey(name: "source") String? source,
      @JsonKey(name: "review") String? review,
      @JsonKey(name: "media") List<String>? media,
      @JsonKey(name: "created_on") DateTime? createdOn});
}

/// @nodoc
class _$ReviewDetailsModelCopyWithImpl<$Res, $Val extends ReviewDetailsModel>
    implements $ReviewDetailsModelCopyWith<$Res> {
  _$ReviewDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userUuid = freezed,
    Object? packageUuid = freezed,
    Object? reviewUuid = freezed,
    Object? communication = freezed,
    Object? serviceDescribed = freezed,
    Object? recommended = freezed,
    Object? source = freezed,
    Object? review = freezed,
    Object? media = freezed,
    Object? createdOn = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      packageUuid: freezed == packageUuid
          ? _value.packageUuid
          : packageUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewUuid: freezed == reviewUuid
          ? _value.reviewUuid
          : reviewUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      communication: freezed == communication
          ? _value.communication
          : communication // ignore: cast_nullable_to_non_nullable
              as double?,
      serviceDescribed: freezed == serviceDescribed
          ? _value.serviceDescribed
          : serviceDescribed // ignore: cast_nullable_to_non_nullable
              as double?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as double?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewDetailsModelImplCopyWith<$Res>
    implements $ReviewDetailsModelCopyWith<$Res> {
  factory _$$ReviewDetailsModelImplCopyWith(_$ReviewDetailsModelImpl value,
          $Res Function(_$ReviewDetailsModelImpl) then) =
      __$$ReviewDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_uuid") String? userUuid,
      @JsonKey(name: "package_uuid") String? packageUuid,
      @JsonKey(name: "review_uuid") String? reviewUuid,
      @JsonKey(name: "communication") double? communication,
      @JsonKey(name: "service_described") double? serviceDescribed,
      @JsonKey(name: "recommended") double? recommended,
      @JsonKey(name: "source") String? source,
      @JsonKey(name: "review") String? review,
      @JsonKey(name: "media") List<String>? media,
      @JsonKey(name: "created_on") DateTime? createdOn});
}

/// @nodoc
class __$$ReviewDetailsModelImplCopyWithImpl<$Res>
    extends _$ReviewDetailsModelCopyWithImpl<$Res, _$ReviewDetailsModelImpl>
    implements _$$ReviewDetailsModelImplCopyWith<$Res> {
  __$$ReviewDetailsModelImplCopyWithImpl(_$ReviewDetailsModelImpl _value,
      $Res Function(_$ReviewDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userUuid = freezed,
    Object? packageUuid = freezed,
    Object? reviewUuid = freezed,
    Object? communication = freezed,
    Object? serviceDescribed = freezed,
    Object? recommended = freezed,
    Object? source = freezed,
    Object? review = freezed,
    Object? media = freezed,
    Object? createdOn = freezed,
  }) {
    return _then(_$ReviewDetailsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      packageUuid: freezed == packageUuid
          ? _value.packageUuid
          : packageUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewUuid: freezed == reviewUuid
          ? _value.reviewUuid
          : reviewUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      communication: freezed == communication
          ? _value.communication
          : communication // ignore: cast_nullable_to_non_nullable
              as double?,
      serviceDescribed: freezed == serviceDescribed
          ? _value.serviceDescribed
          : serviceDescribed // ignore: cast_nullable_to_non_nullable
              as double?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as double?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
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
class _$ReviewDetailsModelImpl implements _ReviewDetailsModel {
  const _$ReviewDetailsModelImpl(
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "user_uuid") required this.userUuid,
      @JsonKey(name: "package_uuid") required this.packageUuid,
      @JsonKey(name: "review_uuid") required this.reviewUuid,
      @JsonKey(name: "communication") required this.communication,
      @JsonKey(name: "service_described") required this.serviceDescribed,
      @JsonKey(name: "recommended") required this.recommended,
      @JsonKey(name: "source") required this.source,
      @JsonKey(name: "review") required this.review,
      @JsonKey(name: "media") required final List<String>? media,
      @JsonKey(name: "created_on") required this.createdOn})
      : _media = media;

  factory _$ReviewDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "user_uuid")
  final String? userUuid;
  @override
  @JsonKey(name: "package_uuid")
  final String? packageUuid;
  @override
  @JsonKey(name: "review_uuid")
  final String? reviewUuid;
  @override
  @JsonKey(name: "communication")
  final double? communication;
  @override
  @JsonKey(name: "service_described")
  final double? serviceDescribed;
  @override
  @JsonKey(name: "recommended")
  final double? recommended;
  @override
  @JsonKey(name: "source")
  final String? source;
  @override
  @JsonKey(name: "review")
  final String? review;
  final List<String>? _media;
  @override
  @JsonKey(name: "media")
  List<String>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "created_on")
  final DateTime? createdOn;

  @override
  String toString() {
    return 'ReviewDetailsModel(id: $id, userUuid: $userUuid, packageUuid: $packageUuid, reviewUuid: $reviewUuid, communication: $communication, serviceDescribed: $serviceDescribed, recommended: $recommended, source: $source, review: $review, media: $media, createdOn: $createdOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userUuid, userUuid) ||
                other.userUuid == userUuid) &&
            (identical(other.packageUuid, packageUuid) ||
                other.packageUuid == packageUuid) &&
            (identical(other.reviewUuid, reviewUuid) ||
                other.reviewUuid == reviewUuid) &&
            (identical(other.communication, communication) ||
                other.communication == communication) &&
            (identical(other.serviceDescribed, serviceDescribed) ||
                other.serviceDescribed == serviceDescribed) &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.review, review) || other.review == review) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userUuid,
      packageUuid,
      reviewUuid,
      communication,
      serviceDescribed,
      recommended,
      source,
      review,
      const DeepCollectionEquality().hash(_media),
      createdOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewDetailsModelImplCopyWith<_$ReviewDetailsModelImpl> get copyWith =>
      __$$ReviewDetailsModelImplCopyWithImpl<_$ReviewDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ReviewDetailsModel implements ReviewDetailsModel {
  const factory _ReviewDetailsModel(
          {@JsonKey(name: "id") required final String? id,
          @JsonKey(name: "user_uuid") required final String? userUuid,
          @JsonKey(name: "package_uuid") required final String? packageUuid,
          @JsonKey(name: "review_uuid") required final String? reviewUuid,
          @JsonKey(name: "communication") required final double? communication,
          @JsonKey(name: "service_described")
          required final double? serviceDescribed,
          @JsonKey(name: "recommended") required final double? recommended,
          @JsonKey(name: "source") required final String? source,
          @JsonKey(name: "review") required final String? review,
          @JsonKey(name: "media") required final List<String>? media,
          @JsonKey(name: "created_on") required final DateTime? createdOn}) =
      _$ReviewDetailsModelImpl;

  factory _ReviewDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ReviewDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "user_uuid")
  String? get userUuid;
  @override
  @JsonKey(name: "package_uuid")
  String? get packageUuid;
  @override
  @JsonKey(name: "review_uuid")
  String? get reviewUuid;
  @override
  @JsonKey(name: "communication")
  double? get communication;
  @override
  @JsonKey(name: "service_described")
  double? get serviceDescribed;
  @override
  @JsonKey(name: "recommended")
  double? get recommended;
  @override
  @JsonKey(name: "source")
  String? get source;
  @override
  @JsonKey(name: "review")
  String? get review;
  @override
  @JsonKey(name: "media")
  List<String>? get media;
  @override
  @JsonKey(name: "created_on")
  DateTime? get createdOn;
  @override
  @JsonKey(ignore: true)
  _$$ReviewDetailsModelImplCopyWith<_$ReviewDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewAveragesModel _$ReviewAveragesModelFromJson(Map<String, dynamic> json) {
  return _ReviewAveragesModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewAveragesModel {
  @JsonKey(name: "_id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "Communication")
  double? get communication => throw _privateConstructorUsedError;
  @JsonKey(name: "ServiceDescribed")
  double? get serviceDescribed => throw _privateConstructorUsedError;
  @JsonKey(name: "Recommended")
  double? get recommended => throw _privateConstructorUsedError;
  @JsonKey(name: "reviewcount")
  int? get reviewCount => throw _privateConstructorUsedError;
  @JsonKey(name: "overallAverage")
  double? get overallAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewAveragesModelCopyWith<ReviewAveragesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewAveragesModelCopyWith<$Res> {
  factory $ReviewAveragesModelCopyWith(
          ReviewAveragesModel value, $Res Function(ReviewAveragesModel) then) =
      _$ReviewAveragesModelCopyWithImpl<$Res, ReviewAveragesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "Communication") double? communication,
      @JsonKey(name: "ServiceDescribed") double? serviceDescribed,
      @JsonKey(name: "Recommended") double? recommended,
      @JsonKey(name: "reviewcount") int? reviewCount,
      @JsonKey(name: "overallAverage") double? overallAverage});
}

/// @nodoc
class _$ReviewAveragesModelCopyWithImpl<$Res, $Val extends ReviewAveragesModel>
    implements $ReviewAveragesModelCopyWith<$Res> {
  _$ReviewAveragesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? communication = freezed,
    Object? serviceDescribed = freezed,
    Object? recommended = freezed,
    Object? reviewCount = freezed,
    Object? overallAverage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      communication: freezed == communication
          ? _value.communication
          : communication // ignore: cast_nullable_to_non_nullable
              as double?,
      serviceDescribed: freezed == serviceDescribed
          ? _value.serviceDescribed
          : serviceDescribed // ignore: cast_nullable_to_non_nullable
              as double?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      overallAverage: freezed == overallAverage
          ? _value.overallAverage
          : overallAverage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewAveragesModelImplCopyWith<$Res>
    implements $ReviewAveragesModelCopyWith<$Res> {
  factory _$$ReviewAveragesModelImplCopyWith(_$ReviewAveragesModelImpl value,
          $Res Function(_$ReviewAveragesModelImpl) then) =
      __$$ReviewAveragesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") String? id,
      @JsonKey(name: "Communication") double? communication,
      @JsonKey(name: "ServiceDescribed") double? serviceDescribed,
      @JsonKey(name: "Recommended") double? recommended,
      @JsonKey(name: "reviewcount") int? reviewCount,
      @JsonKey(name: "overallAverage") double? overallAverage});
}

/// @nodoc
class __$$ReviewAveragesModelImplCopyWithImpl<$Res>
    extends _$ReviewAveragesModelCopyWithImpl<$Res, _$ReviewAveragesModelImpl>
    implements _$$ReviewAveragesModelImplCopyWith<$Res> {
  __$$ReviewAveragesModelImplCopyWithImpl(_$ReviewAveragesModelImpl _value,
      $Res Function(_$ReviewAveragesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? communication = freezed,
    Object? serviceDescribed = freezed,
    Object? recommended = freezed,
    Object? reviewCount = freezed,
    Object? overallAverage = freezed,
  }) {
    return _then(_$ReviewAveragesModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      communication: freezed == communication
          ? _value.communication
          : communication // ignore: cast_nullable_to_non_nullable
              as double?,
      serviceDescribed: freezed == serviceDescribed
          ? _value.serviceDescribed
          : serviceDescribed // ignore: cast_nullable_to_non_nullable
              as double?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      overallAverage: freezed == overallAverage
          ? _value.overallAverage
          : overallAverage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewAveragesModelImpl implements _ReviewAveragesModel {
  const _$ReviewAveragesModelImpl(
      {@JsonKey(name: "_id") required this.id,
      @JsonKey(name: "Communication") required this.communication,
      @JsonKey(name: "ServiceDescribed") required this.serviceDescribed,
      @JsonKey(name: "Recommended") required this.recommended,
      @JsonKey(name: "reviewcount") required this.reviewCount,
      @JsonKey(name: "overallAverage") required this.overallAverage});

  factory _$ReviewAveragesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewAveragesModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final String? id;
  @override
  @JsonKey(name: "Communication")
  final double? communication;
  @override
  @JsonKey(name: "ServiceDescribed")
  final double? serviceDescribed;
  @override
  @JsonKey(name: "Recommended")
  final double? recommended;
  @override
  @JsonKey(name: "reviewcount")
  final int? reviewCount;
  @override
  @JsonKey(name: "overallAverage")
  final double? overallAverage;

  @override
  String toString() {
    return 'ReviewAveragesModel(id: $id, communication: $communication, serviceDescribed: $serviceDescribed, recommended: $recommended, reviewCount: $reviewCount, overallAverage: $overallAverage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewAveragesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.communication, communication) ||
                other.communication == communication) &&
            (identical(other.serviceDescribed, serviceDescribed) ||
                other.serviceDescribed == serviceDescribed) &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            (identical(other.overallAverage, overallAverage) ||
                other.overallAverage == overallAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, communication,
      serviceDescribed, recommended, reviewCount, overallAverage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewAveragesModelImplCopyWith<_$ReviewAveragesModelImpl> get copyWith =>
      __$$ReviewAveragesModelImplCopyWithImpl<_$ReviewAveragesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewAveragesModelImplToJson(
      this,
    );
  }
}

abstract class _ReviewAveragesModel implements ReviewAveragesModel {
  const factory _ReviewAveragesModel(
      {@JsonKey(name: "_id") required final String? id,
      @JsonKey(name: "Communication") required final double? communication,
      @JsonKey(name: "ServiceDescribed")
      required final double? serviceDescribed,
      @JsonKey(name: "Recommended") required final double? recommended,
      @JsonKey(name: "reviewcount") required final int? reviewCount,
      @JsonKey(name: "overallAverage")
      required final double? overallAverage}) = _$ReviewAveragesModelImpl;

  factory _ReviewAveragesModel.fromJson(Map<String, dynamic> json) =
      _$ReviewAveragesModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  String? get id;
  @override
  @JsonKey(name: "Communication")
  double? get communication;
  @override
  @JsonKey(name: "ServiceDescribed")
  double? get serviceDescribed;
  @override
  @JsonKey(name: "Recommended")
  double? get recommended;
  @override
  @JsonKey(name: "reviewcount")
  int? get reviewCount;
  @override
  @JsonKey(name: "overallAverage")
  double? get overallAverage;
  @override
  @JsonKey(ignore: true)
  _$$ReviewAveragesModelImplCopyWith<_$ReviewAveragesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ServiceLocationModel _$ServiceLocationModelFromJson(Map<String, dynamic> json) {
  return _ServiceLocationModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceLocationModel {
  @JsonKey(name: "address_type")
  String? get addressType => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceLocationModelCopyWith<ServiceLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceLocationModelCopyWith<$Res> {
  factory $ServiceLocationModelCopyWith(ServiceLocationModel value,
          $Res Function(ServiceLocationModel) then) =
      _$ServiceLocationModelCopyWithImpl<$Res, ServiceLocationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "address_type") String? addressType,
      @JsonKey(name: "city") String? city});
}

/// @nodoc
class _$ServiceLocationModelCopyWithImpl<$Res,
        $Val extends ServiceLocationModel>
    implements $ServiceLocationModelCopyWith<$Res> {
  _$ServiceLocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressType = freezed,
    Object? city = freezed,
  }) {
    return _then(_value.copyWith(
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceLocationModelImplCopyWith<$Res>
    implements $ServiceLocationModelCopyWith<$Res> {
  factory _$$ServiceLocationModelImplCopyWith(_$ServiceLocationModelImpl value,
          $Res Function(_$ServiceLocationModelImpl) then) =
      __$$ServiceLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "address_type") String? addressType,
      @JsonKey(name: "city") String? city});
}

/// @nodoc
class __$$ServiceLocationModelImplCopyWithImpl<$Res>
    extends _$ServiceLocationModelCopyWithImpl<$Res, _$ServiceLocationModelImpl>
    implements _$$ServiceLocationModelImplCopyWith<$Res> {
  __$$ServiceLocationModelImplCopyWithImpl(_$ServiceLocationModelImpl _value,
      $Res Function(_$ServiceLocationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressType = freezed,
    Object? city = freezed,
  }) {
    return _then(_$ServiceLocationModelImpl(
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceLocationModelImpl implements _ServiceLocationModel {
  const _$ServiceLocationModelImpl(
      {@JsonKey(name: "address_type") required this.addressType,
      @JsonKey(name: "city") required this.city});

  factory _$ServiceLocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceLocationModelImplFromJson(json);

  @override
  @JsonKey(name: "address_type")
  final String? addressType;
  @override
  @JsonKey(name: "city")
  final String? city;

  @override
  String toString() {
    return 'ServiceLocationModel(addressType: $addressType, city: $city)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceLocationModelImpl &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.city, city) || other.city == city));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, addressType, city);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceLocationModelImplCopyWith<_$ServiceLocationModelImpl>
      get copyWith =>
          __$$ServiceLocationModelImplCopyWithImpl<_$ServiceLocationModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceLocationModelImplToJson(
      this,
    );
  }
}

abstract class _ServiceLocationModel implements ServiceLocationModel {
  const factory _ServiceLocationModel(
          {@JsonKey(name: "address_type") required final String? addressType,
          @JsonKey(name: "city") required final String? city}) =
      _$ServiceLocationModelImpl;

  factory _ServiceLocationModel.fromJson(Map<String, dynamic> json) =
      _$ServiceLocationModelImpl.fromJson;

  @override
  @JsonKey(name: "address_type")
  String? get addressType;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(ignore: true)
  _$$ServiceLocationModelImplCopyWith<_$ServiceLocationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
