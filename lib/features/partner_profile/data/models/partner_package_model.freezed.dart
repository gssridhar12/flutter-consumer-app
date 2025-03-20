// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partner_package_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PartnerPackageModel _$PartnerPackageModelFromJson(Map<String, dynamic> json) {
  return _PartnerPackageModel.fromJson(json);
}

/// @nodoc
mixin _$PartnerPackageModel {
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
  $PartnerPackageModelCopyWith<PartnerPackageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerPackageModelCopyWith<$Res> {
  factory $PartnerPackageModelCopyWith(
          PartnerPackageModel value, $Res Function(PartnerPackageModel) then) =
      _$PartnerPackageModelCopyWithImpl<$Res, PartnerPackageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataModel? data,
      @JsonKey(name: "success_status") bool? successStatus});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$PartnerPackageModelCopyWithImpl<$Res, $Val extends PartnerPackageModel>
    implements $PartnerPackageModelCopyWith<$Res> {
  _$PartnerPackageModelCopyWithImpl(this._value, this._then);

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
abstract class _$$PartnerPackageModelImplCopyWith<$Res>
    implements $PartnerPackageModelCopyWith<$Res> {
  factory _$$PartnerPackageModelImplCopyWith(_$PartnerPackageModelImpl value,
          $Res Function(_$PartnerPackageModelImpl) then) =
      __$$PartnerPackageModelImplCopyWithImpl<$Res>;
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
class __$$PartnerPackageModelImplCopyWithImpl<$Res>
    extends _$PartnerPackageModelCopyWithImpl<$Res, _$PartnerPackageModelImpl>
    implements _$$PartnerPackageModelImplCopyWith<$Res> {
  __$$PartnerPackageModelImplCopyWithImpl(_$PartnerPackageModelImpl _value,
      $Res Function(_$PartnerPackageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? successStatus = freezed,
  }) {
    return _then(_$PartnerPackageModelImpl(
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
class _$PartnerPackageModelImpl implements _PartnerPackageModel {
  const _$PartnerPackageModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "success_status") this.successStatus});

  factory _$PartnerPackageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartnerPackageModelImplFromJson(json);

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
    return 'PartnerPackageModel(code: $code, message: $message, data: $data, successStatus: $successStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnerPackageModelImpl &&
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
  _$$PartnerPackageModelImplCopyWith<_$PartnerPackageModelImpl> get copyWith =>
      __$$PartnerPackageModelImplCopyWithImpl<_$PartnerPackageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartnerPackageModelImplToJson(
      this,
    );
  }
}

abstract class _PartnerPackageModel implements PartnerPackageModel {
  const factory _PartnerPackageModel(
          {@JsonKey(name: "code") final String? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final DataModel? data,
          @JsonKey(name: "success_status") final bool? successStatus}) =
      _$PartnerPackageModelImpl;

  factory _PartnerPackageModel.fromJson(Map<String, dynamic> json) =
      _$PartnerPackageModelImpl.fromJson;

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
  _$$PartnerPackageModelImplCopyWith<_$PartnerPackageModelImpl> get copyWith =>
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
  @JsonKey(name: "packages")
  List<PackageElementModel>? get packages => throw _privateConstructorUsedError;

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
      @JsonKey(name: "packages") List<PackageElementModel>? packages});
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
    Object? packages = freezed,
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
      packages: freezed == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PackageElementModel>?,
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
      @JsonKey(name: "packages") List<PackageElementModel>? packages});
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
    Object? packages = freezed,
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
      packages: freezed == packages
          ? _value._packages
          : packages // ignore: cast_nullable_to_non_nullable
              as List<PackageElementModel>?,
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
      @JsonKey(name: "packages") final List<PackageElementModel>? packages})
      : _packages = packages;

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
  final List<PackageElementModel>? _packages;
  @override
  @JsonKey(name: "packages")
  List<PackageElementModel>? get packages {
    final value = _packages;
    if (value == null) return null;
    if (_packages is EqualUnmodifiableListView) return _packages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataModel(count: $count, page: $page, size: $size, packages: $packages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality().equals(other._packages, _packages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, page, size,
      const DeepCollectionEquality().hash(_packages));

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
      @JsonKey(name: "packages")
      final List<PackageElementModel>? packages}) = _$DataModelImpl;

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
  @JsonKey(name: "packages")
  List<PackageElementModel>? get packages;
  @override
  @JsonKey(ignore: true)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageElementModel _$PackageElementModelFromJson(Map<String, dynamic> json) {
  return _PackageElementModel.fromJson(json);
}

/// @nodoc
mixin _$PackageElementModel {
  @JsonKey(name: "package")
  PackagePackageModel? get package => throw _privateConstructorUsedError;
  @JsonKey(name: "reviewAverage")
  ReviewAverageModel? get reviewAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageElementModelCopyWith<PackageElementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageElementModelCopyWith<$Res> {
  factory $PackageElementModelCopyWith(
          PackageElementModel value, $Res Function(PackageElementModel) then) =
      _$PackageElementModelCopyWithImpl<$Res, PackageElementModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "package") PackagePackageModel? package,
      @JsonKey(name: "reviewAverage") ReviewAverageModel? reviewAverage});

  $PackagePackageModelCopyWith<$Res>? get package;
  $ReviewAverageModelCopyWith<$Res>? get reviewAverage;
}

/// @nodoc
class _$PackageElementModelCopyWithImpl<$Res, $Val extends PackageElementModel>
    implements $PackageElementModelCopyWith<$Res> {
  _$PackageElementModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = freezed,
    Object? reviewAverage = freezed,
  }) {
    return _then(_value.copyWith(
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackagePackageModel?,
      reviewAverage: freezed == reviewAverage
          ? _value.reviewAverage
          : reviewAverage // ignore: cast_nullable_to_non_nullable
              as ReviewAverageModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PackagePackageModelCopyWith<$Res>? get package {
    if (_value.package == null) {
      return null;
    }

    return $PackagePackageModelCopyWith<$Res>(_value.package!, (value) {
      return _then(_value.copyWith(package: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewAverageModelCopyWith<$Res>? get reviewAverage {
    if (_value.reviewAverage == null) {
      return null;
    }

    return $ReviewAverageModelCopyWith<$Res>(_value.reviewAverage!, (value) {
      return _then(_value.copyWith(reviewAverage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PackageElementModelImplCopyWith<$Res>
    implements $PackageElementModelCopyWith<$Res> {
  factory _$$PackageElementModelImplCopyWith(_$PackageElementModelImpl value,
          $Res Function(_$PackageElementModelImpl) then) =
      __$$PackageElementModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "package") PackagePackageModel? package,
      @JsonKey(name: "reviewAverage") ReviewAverageModel? reviewAverage});

  @override
  $PackagePackageModelCopyWith<$Res>? get package;
  @override
  $ReviewAverageModelCopyWith<$Res>? get reviewAverage;
}

/// @nodoc
class __$$PackageElementModelImplCopyWithImpl<$Res>
    extends _$PackageElementModelCopyWithImpl<$Res, _$PackageElementModelImpl>
    implements _$$PackageElementModelImplCopyWith<$Res> {
  __$$PackageElementModelImplCopyWithImpl(_$PackageElementModelImpl _value,
      $Res Function(_$PackageElementModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? package = freezed,
    Object? reviewAverage = freezed,
  }) {
    return _then(_$PackageElementModelImpl(
      package: freezed == package
          ? _value.package
          : package // ignore: cast_nullable_to_non_nullable
              as PackagePackageModel?,
      reviewAverage: freezed == reviewAverage
          ? _value.reviewAverage
          : reviewAverage // ignore: cast_nullable_to_non_nullable
              as ReviewAverageModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackageElementModelImpl implements _PackageElementModel {
  const _$PackageElementModelImpl(
      {@JsonKey(name: "package") this.package,
      @JsonKey(name: "reviewAverage") this.reviewAverage});

  factory _$PackageElementModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageElementModelImplFromJson(json);

  @override
  @JsonKey(name: "package")
  final PackagePackageModel? package;
  @override
  @JsonKey(name: "reviewAverage")
  final ReviewAverageModel? reviewAverage;

  @override
  String toString() {
    return 'PackageElementModel(package: $package, reviewAverage: $reviewAverage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageElementModelImpl &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.reviewAverage, reviewAverage) ||
                other.reviewAverage == reviewAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, package, reviewAverage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageElementModelImplCopyWith<_$PackageElementModelImpl> get copyWith =>
      __$$PackageElementModelImplCopyWithImpl<_$PackageElementModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageElementModelImplToJson(
      this,
    );
  }
}

abstract class _PackageElementModel implements PackageElementModel {
  const factory _PackageElementModel(
      {@JsonKey(name: "package") final PackagePackageModel? package,
      @JsonKey(name: "reviewAverage")
      final ReviewAverageModel? reviewAverage}) = _$PackageElementModelImpl;

  factory _PackageElementModel.fromJson(Map<String, dynamic> json) =
      _$PackageElementModelImpl.fromJson;

  @override
  @JsonKey(name: "package")
  PackagePackageModel? get package;
  @override
  @JsonKey(name: "reviewAverage")
  ReviewAverageModel? get reviewAverage;
  @override
  @JsonKey(ignore: true)
  _$$PackageElementModelImplCopyWith<_$PackageElementModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackagePackageModel _$PackagePackageModelFromJson(Map<String, dynamic> json) {
  return _PackagePackageModel.fromJson(json);
}

/// @nodoc
mixin _$PackagePackageModel {
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
  List<String>? get packageInclusions => throw _privateConstructorUsedError;
  @JsonKey(name: "package_exclusions")
  List<String>? get packageExclusions => throw _privateConstructorUsedError;
  @JsonKey(name: "package_must_knows")
  List<String>? get packageMustKnows => throw _privateConstructorUsedError;
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
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "created_on")
  DateTime? get createdOn => throw _privateConstructorUsedError;
  @JsonKey(name: "service_type")
  List<ServiceTypeModel>? get serviceType => throw _privateConstructorUsedError;
  @JsonKey(name: "selected_buckets")
  List<String>? get selectedBuckets => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackagePackageModelCopyWith<PackagePackageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagePackageModelCopyWith<$Res> {
  factory $PackagePackageModelCopyWith(
          PackagePackageModel value, $Res Function(PackagePackageModel) then) =
      _$PackagePackageModelCopyWithImpl<$Res, PackagePackageModel>;
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
      @JsonKey(name: "package_inclusions") List<String>? packageInclusions,
      @JsonKey(name: "package_exclusions") List<String>? packageExclusions,
      @JsonKey(name: "package_must_knows") List<String>? packageMustKnows,
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
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "created_on") DateTime? createdOn,
      @JsonKey(name: "service_type") List<ServiceTypeModel>? serviceType,
      @JsonKey(name: "selected_buckets") List<String>? selectedBuckets});
}

/// @nodoc
class _$PackagePackageModelCopyWithImpl<$Res, $Val extends PackagePackageModel>
    implements $PackagePackageModelCopyWith<$Res> {
  _$PackagePackageModelCopyWithImpl(this._value, this._then);

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
    Object? isActive = freezed,
    Object? createdOn = freezed,
    Object? serviceType = freezed,
    Object? selectedBuckets = freezed,
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
              as List<String>?,
      packageExclusions: freezed == packageExclusions
          ? _value.packageExclusions
          : packageExclusions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      packageMustKnows: freezed == packageMustKnows
          ? _value.packageMustKnows
          : packageMustKnows // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      serviceType: freezed == serviceType
          ? _value.serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as List<ServiceTypeModel>?,
      selectedBuckets: freezed == selectedBuckets
          ? _value.selectedBuckets
          : selectedBuckets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackagePackageModelImplCopyWith<$Res>
    implements $PackagePackageModelCopyWith<$Res> {
  factory _$$PackagePackageModelImplCopyWith(_$PackagePackageModelImpl value,
          $Res Function(_$PackagePackageModelImpl) then) =
      __$$PackagePackageModelImplCopyWithImpl<$Res>;
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
      @JsonKey(name: "package_inclusions") List<String>? packageInclusions,
      @JsonKey(name: "package_exclusions") List<String>? packageExclusions,
      @JsonKey(name: "package_must_knows") List<String>? packageMustKnows,
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
      @JsonKey(name: "is_active") bool? isActive,
      @JsonKey(name: "created_on") DateTime? createdOn,
      @JsonKey(name: "service_type") List<ServiceTypeModel>? serviceType,
      @JsonKey(name: "selected_buckets") List<String>? selectedBuckets});
}

/// @nodoc
class __$$PackagePackageModelImplCopyWithImpl<$Res>
    extends _$PackagePackageModelCopyWithImpl<$Res, _$PackagePackageModelImpl>
    implements _$$PackagePackageModelImplCopyWith<$Res> {
  __$$PackagePackageModelImplCopyWithImpl(_$PackagePackageModelImpl _value,
      $Res Function(_$PackagePackageModelImpl) _then)
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
    Object? isActive = freezed,
    Object? createdOn = freezed,
    Object? serviceType = freezed,
    Object? selectedBuckets = freezed,
  }) {
    return _then(_$PackagePackageModelImpl(
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
          ? _value._packageInclusions
          : packageInclusions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      packageExclusions: freezed == packageExclusions
          ? _value._packageExclusions
          : packageExclusions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      packageMustKnows: freezed == packageMustKnows
          ? _value._packageMustKnows
          : packageMustKnows // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      serviceType: freezed == serviceType
          ? _value._serviceType
          : serviceType // ignore: cast_nullable_to_non_nullable
              as List<ServiceTypeModel>?,
      selectedBuckets: freezed == selectedBuckets
          ? _value._selectedBuckets
          : selectedBuckets // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackagePackageModelImpl implements _PackagePackageModel {
  const _$PackagePackageModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "partner_uuid") this.partnerUuid,
      @JsonKey(name: "package_uuid") this.packageUuid,
      @JsonKey(name: "package_name") this.packageName,
      @JsonKey(name: "package_cover_image") this.packageCoverImage,
      @JsonKey(name: "parent_bucket") this.parentBucket,
      @JsonKey(name: "package_headline") this.packageHeadline,
      @JsonKey(name: "package_description") this.packageDescription,
      @JsonKey(name: "package_inclusions")
      final List<String>? packageInclusions,
      @JsonKey(name: "package_exclusions")
      final List<String>? packageExclusions,
      @JsonKey(name: "package_must_knows") final List<String>? packageMustKnows,
      @JsonKey(name: "service_location") this.serviceLocation,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "package_keywords") final List<String>? packageKeywords,
      @JsonKey(name: "package_tags") final List<String>? packageTags,
      @JsonKey(name: "service_timing_availability")
      this.serviceTimingAvailability,
      @JsonKey(name: "package_cost") this.packageCost,
      @JsonKey(name: "transportation_cost") this.transportationCost,
      @JsonKey(name: "extra_allowance") this.extraAllowance,
      @JsonKey(name: "coupons_and_discounts") this.couponsAndDiscounts,
      @JsonKey(name: "upload_package_agreement") this.uploadPackageAgreement,
      @JsonKey(name: "most_booked_packages") this.mostBookedPackages,
      @JsonKey(name: "trending_packages") this.trendingPackages,
      @JsonKey(name: "best_seller_packages") this.bestSellerPackages,
      @JsonKey(name: "promoted_packages") this.promotedPackages,
      @JsonKey(name: "packageGallery")
      final List<PackageGalleryModel>? packageGallery,
      @JsonKey(name: "is_active") this.isActive,
      @JsonKey(name: "created_on") this.createdOn,
      @JsonKey(name: "service_type") final List<ServiceTypeModel>? serviceType,
      @JsonKey(name: "selected_buckets") final List<String>? selectedBuckets})
      : _packageInclusions = packageInclusions,
        _packageExclusions = packageExclusions,
        _packageMustKnows = packageMustKnows,
        _packageKeywords = packageKeywords,
        _packageTags = packageTags,
        _packageGallery = packageGallery,
        _serviceType = serviceType,
        _selectedBuckets = selectedBuckets;

  factory _$PackagePackageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackagePackageModelImplFromJson(json);

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
  final List<String>? _packageInclusions;
  @override
  @JsonKey(name: "package_inclusions")
  List<String>? get packageInclusions {
    final value = _packageInclusions;
    if (value == null) return null;
    if (_packageInclusions is EqualUnmodifiableListView)
      return _packageInclusions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _packageExclusions;
  @override
  @JsonKey(name: "package_exclusions")
  List<String>? get packageExclusions {
    final value = _packageExclusions;
    if (value == null) return null;
    if (_packageExclusions is EqualUnmodifiableListView)
      return _packageExclusions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _packageMustKnows;
  @override
  @JsonKey(name: "package_must_knows")
  List<String>? get packageMustKnows {
    final value = _packageMustKnows;
    if (value == null) return null;
    if (_packageMustKnows is EqualUnmodifiableListView)
      return _packageMustKnows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
  @JsonKey(name: "is_active")
  final bool? isActive;
  @override
  @JsonKey(name: "created_on")
  final DateTime? createdOn;
  final List<ServiceTypeModel>? _serviceType;
  @override
  @JsonKey(name: "service_type")
  List<ServiceTypeModel>? get serviceType {
    final value = _serviceType;
    if (value == null) return null;
    if (_serviceType is EqualUnmodifiableListView) return _serviceType;
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
  String toString() {
    return 'PackagePackageModel(id: $id, partnerUuid: $partnerUuid, packageUuid: $packageUuid, packageName: $packageName, packageCoverImage: $packageCoverImage, parentBucket: $parentBucket, packageHeadline: $packageHeadline, packageDescription: $packageDescription, packageInclusions: $packageInclusions, packageExclusions: $packageExclusions, packageMustKnows: $packageMustKnows, serviceLocation: $serviceLocation, status: $status, packageKeywords: $packageKeywords, packageTags: $packageTags, serviceTimingAvailability: $serviceTimingAvailability, packageCost: $packageCost, transportationCost: $transportationCost, extraAllowance: $extraAllowance, couponsAndDiscounts: $couponsAndDiscounts, uploadPackageAgreement: $uploadPackageAgreement, mostBookedPackages: $mostBookedPackages, trendingPackages: $trendingPackages, bestSellerPackages: $bestSellerPackages, promotedPackages: $promotedPackages, packageGallery: $packageGallery, isActive: $isActive, createdOn: $createdOn, serviceType: $serviceType, selectedBuckets: $selectedBuckets)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackagePackageModelImpl &&
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
            const DeepCollectionEquality()
                .equals(other._packageInclusions, _packageInclusions) &&
            const DeepCollectionEquality()
                .equals(other._packageExclusions, _packageExclusions) &&
            const DeepCollectionEquality()
                .equals(other._packageMustKnows, _packageMustKnows) &&
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
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            const DeepCollectionEquality()
                .equals(other._serviceType, _serviceType) &&
            const DeepCollectionEquality()
                .equals(other._selectedBuckets, _selectedBuckets));
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
        const DeepCollectionEquality().hash(_packageInclusions),
        const DeepCollectionEquality().hash(_packageExclusions),
        const DeepCollectionEquality().hash(_packageMustKnows),
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
        isActive,
        createdOn,
        const DeepCollectionEquality().hash(_serviceType),
        const DeepCollectionEquality().hash(_selectedBuckets)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackagePackageModelImplCopyWith<_$PackagePackageModelImpl> get copyWith =>
      __$$PackagePackageModelImplCopyWithImpl<_$PackagePackageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackagePackageModelImplToJson(
      this,
    );
  }
}

abstract class _PackagePackageModel implements PackagePackageModel {
  const factory _PackagePackageModel(
      {@JsonKey(name: "id") final String? id,
      @JsonKey(name: "partner_uuid") final String? partnerUuid,
      @JsonKey(name: "package_uuid") final String? packageUuid,
      @JsonKey(name: "package_name") final String? packageName,
      @JsonKey(name: "package_cover_image") final String? packageCoverImage,
      @JsonKey(name: "parent_bucket") final String? parentBucket,
      @JsonKey(name: "package_headline") final String? packageHeadline,
      @JsonKey(name: "package_description") final String? packageDescription,
      @JsonKey(name: "package_inclusions")
      final List<String>? packageInclusions,
      @JsonKey(name: "package_exclusions")
      final List<String>? packageExclusions,
      @JsonKey(name: "package_must_knows") final List<String>? packageMustKnows,
      @JsonKey(name: "service_location") final String? serviceLocation,
      @JsonKey(name: "status") final String? status,
      @JsonKey(name: "package_keywords") final List<String>? packageKeywords,
      @JsonKey(name: "package_tags") final List<String>? packageTags,
      @JsonKey(name: "service_timing_availability")
      final String? serviceTimingAvailability,
      @JsonKey(name: "package_cost") final int? packageCost,
      @JsonKey(name: "transportation_cost") final double? transportationCost,
      @JsonKey(name: "extra_allowance") final double? extraAllowance,
      @JsonKey(name: "coupons_and_discounts") final String? couponsAndDiscounts,
      @JsonKey(name: "upload_package_agreement")
      final String? uploadPackageAgreement,
      @JsonKey(name: "most_booked_packages") final bool? mostBookedPackages,
      @JsonKey(name: "trending_packages") final bool? trendingPackages,
      @JsonKey(name: "best_seller_packages") final bool? bestSellerPackages,
      @JsonKey(name: "promoted_packages") final bool? promotedPackages,
      @JsonKey(name: "packageGallery")
      final List<PackageGalleryModel>? packageGallery,
      @JsonKey(name: "is_active") final bool? isActive,
      @JsonKey(name: "created_on") final DateTime? createdOn,
      @JsonKey(name: "service_type") final List<ServiceTypeModel>? serviceType,
      @JsonKey(name: "selected_buckets")
      final List<String>? selectedBuckets}) = _$PackagePackageModelImpl;

  factory _PackagePackageModel.fromJson(Map<String, dynamic> json) =
      _$PackagePackageModelImpl.fromJson;

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
  List<String>? get packageInclusions;
  @override
  @JsonKey(name: "package_exclusions")
  List<String>? get packageExclusions;
  @override
  @JsonKey(name: "package_must_knows")
  List<String>? get packageMustKnows;
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
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(name: "created_on")
  DateTime? get createdOn;
  @override
  @JsonKey(name: "service_type")
  List<ServiceTypeModel>? get serviceType;
  @override
  @JsonKey(name: "selected_buckets")
  List<String>? get selectedBuckets;
  @override
  @JsonKey(ignore: true)
  _$$PackagePackageModelImplCopyWith<_$PackagePackageModelImpl> get copyWith =>
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

ServiceTypeModel _$ServiceTypeModelFromJson(Map<String, dynamic> json) {
  return _ServiceTypeModel.fromJson(json);
}

/// @nodoc
mixin _$ServiceTypeModel {
  @JsonKey(name: "door_step")
  bool? get doorStep => throw _privateConstructorUsedError;
  @JsonKey(name: "in_premise")
  bool? get inPremise => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ServiceTypeModelCopyWith<ServiceTypeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceTypeModelCopyWith<$Res> {
  factory $ServiceTypeModelCopyWith(
          ServiceTypeModel value, $Res Function(ServiceTypeModel) then) =
      _$ServiceTypeModelCopyWithImpl<$Res, ServiceTypeModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "door_step") bool? doorStep,
      @JsonKey(name: "in_premise") bool? inPremise});
}

/// @nodoc
class _$ServiceTypeModelCopyWithImpl<$Res, $Val extends ServiceTypeModel>
    implements $ServiceTypeModelCopyWith<$Res> {
  _$ServiceTypeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doorStep = freezed,
    Object? inPremise = freezed,
  }) {
    return _then(_value.copyWith(
      doorStep: freezed == doorStep
          ? _value.doorStep
          : doorStep // ignore: cast_nullable_to_non_nullable
              as bool?,
      inPremise: freezed == inPremise
          ? _value.inPremise
          : inPremise // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServiceTypeModelImplCopyWith<$Res>
    implements $ServiceTypeModelCopyWith<$Res> {
  factory _$$ServiceTypeModelImplCopyWith(_$ServiceTypeModelImpl value,
          $Res Function(_$ServiceTypeModelImpl) then) =
      __$$ServiceTypeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "door_step") bool? doorStep,
      @JsonKey(name: "in_premise") bool? inPremise});
}

/// @nodoc
class __$$ServiceTypeModelImplCopyWithImpl<$Res>
    extends _$ServiceTypeModelCopyWithImpl<$Res, _$ServiceTypeModelImpl>
    implements _$$ServiceTypeModelImplCopyWith<$Res> {
  __$$ServiceTypeModelImplCopyWithImpl(_$ServiceTypeModelImpl _value,
      $Res Function(_$ServiceTypeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doorStep = freezed,
    Object? inPremise = freezed,
  }) {
    return _then(_$ServiceTypeModelImpl(
      doorStep: freezed == doorStep
          ? _value.doorStep
          : doorStep // ignore: cast_nullable_to_non_nullable
              as bool?,
      inPremise: freezed == inPremise
          ? _value.inPremise
          : inPremise // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ServiceTypeModelImpl implements _ServiceTypeModel {
  const _$ServiceTypeModelImpl(
      {@JsonKey(name: "door_step") this.doorStep,
      @JsonKey(name: "in_premise") this.inPremise});

  factory _$ServiceTypeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ServiceTypeModelImplFromJson(json);

  @override
  @JsonKey(name: "door_step")
  final bool? doorStep;
  @override
  @JsonKey(name: "in_premise")
  final bool? inPremise;

  @override
  String toString() {
    return 'ServiceTypeModel(doorStep: $doorStep, inPremise: $inPremise)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServiceTypeModelImpl &&
            (identical(other.doorStep, doorStep) ||
                other.doorStep == doorStep) &&
            (identical(other.inPremise, inPremise) ||
                other.inPremise == inPremise));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, doorStep, inPremise);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServiceTypeModelImplCopyWith<_$ServiceTypeModelImpl> get copyWith =>
      __$$ServiceTypeModelImplCopyWithImpl<_$ServiceTypeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ServiceTypeModelImplToJson(
      this,
    );
  }
}

abstract class _ServiceTypeModel implements ServiceTypeModel {
  const factory _ServiceTypeModel(
          {@JsonKey(name: "door_step") final bool? doorStep,
          @JsonKey(name: "in_premise") final bool? inPremise}) =
      _$ServiceTypeModelImpl;

  factory _ServiceTypeModel.fromJson(Map<String, dynamic> json) =
      _$ServiceTypeModelImpl.fromJson;

  @override
  @JsonKey(name: "door_step")
  bool? get doorStep;
  @override
  @JsonKey(name: "in_premise")
  bool? get inPremise;
  @override
  @JsonKey(ignore: true)
  _$$ServiceTypeModelImplCopyWith<_$ServiceTypeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewAverageModel _$ReviewAverageModelFromJson(Map<String, dynamic> json) {
  return _ReviewAverageModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewAverageModel {
  @JsonKey(name: "_id")
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: "Communication")
  double? get communication => throw _privateConstructorUsedError;
  @JsonKey(name: "ServiceDescribed")
  double? get serviceDescribed => throw _privateConstructorUsedError;
  @JsonKey(name: "Recommended")
  double? get recommended => throw _privateConstructorUsedError;
  @JsonKey(name: "overallAverage")
  double? get overallAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewAverageModelCopyWith<ReviewAverageModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewAverageModelCopyWith<$Res> {
  factory $ReviewAverageModelCopyWith(
          ReviewAverageModel value, $Res Function(ReviewAverageModel) then) =
      _$ReviewAverageModelCopyWithImpl<$Res, ReviewAverageModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") dynamic id,
      @JsonKey(name: "Communication") double? communication,
      @JsonKey(name: "ServiceDescribed") double? serviceDescribed,
      @JsonKey(name: "Recommended") double? recommended,
      @JsonKey(name: "overallAverage") double? overallAverage});
}

/// @nodoc
class _$ReviewAverageModelCopyWithImpl<$Res, $Val extends ReviewAverageModel>
    implements $ReviewAverageModelCopyWith<$Res> {
  _$ReviewAverageModelCopyWithImpl(this._value, this._then);

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
    Object? overallAverage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      overallAverage: freezed == overallAverage
          ? _value.overallAverage
          : overallAverage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewAverageModelImplCopyWith<$Res>
    implements $ReviewAverageModelCopyWith<$Res> {
  factory _$$ReviewAverageModelImplCopyWith(_$ReviewAverageModelImpl value,
          $Res Function(_$ReviewAverageModelImpl) then) =
      __$$ReviewAverageModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") dynamic id,
      @JsonKey(name: "Communication") double? communication,
      @JsonKey(name: "ServiceDescribed") double? serviceDescribed,
      @JsonKey(name: "Recommended") double? recommended,
      @JsonKey(name: "overallAverage") double? overallAverage});
}

/// @nodoc
class __$$ReviewAverageModelImplCopyWithImpl<$Res>
    extends _$ReviewAverageModelCopyWithImpl<$Res, _$ReviewAverageModelImpl>
    implements _$$ReviewAverageModelImplCopyWith<$Res> {
  __$$ReviewAverageModelImplCopyWithImpl(_$ReviewAverageModelImpl _value,
      $Res Function(_$ReviewAverageModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? communication = freezed,
    Object? serviceDescribed = freezed,
    Object? recommended = freezed,
    Object? overallAverage = freezed,
  }) {
    return _then(_$ReviewAverageModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      overallAverage: freezed == overallAverage
          ? _value.overallAverage
          : overallAverage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewAverageModelImpl implements _ReviewAverageModel {
  const _$ReviewAverageModelImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "Communication") this.communication,
      @JsonKey(name: "ServiceDescribed") this.serviceDescribed,
      @JsonKey(name: "Recommended") this.recommended,
      @JsonKey(name: "overallAverage") this.overallAverage});

  factory _$ReviewAverageModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewAverageModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final dynamic id;
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
  @JsonKey(name: "overallAverage")
  final double? overallAverage;

  @override
  String toString() {
    return 'ReviewAverageModel(id: $id, communication: $communication, serviceDescribed: $serviceDescribed, recommended: $recommended, overallAverage: $overallAverage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewAverageModelImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.communication, communication) ||
                other.communication == communication) &&
            (identical(other.serviceDescribed, serviceDescribed) ||
                other.serviceDescribed == serviceDescribed) &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended) &&
            (identical(other.overallAverage, overallAverage) ||
                other.overallAverage == overallAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      communication,
      serviceDescribed,
      recommended,
      overallAverage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewAverageModelImplCopyWith<_$ReviewAverageModelImpl> get copyWith =>
      __$$ReviewAverageModelImplCopyWithImpl<_$ReviewAverageModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewAverageModelImplToJson(
      this,
    );
  }
}

abstract class _ReviewAverageModel implements ReviewAverageModel {
  const factory _ReviewAverageModel(
          {@JsonKey(name: "_id") final dynamic id,
          @JsonKey(name: "Communication") final double? communication,
          @JsonKey(name: "ServiceDescribed") final double? serviceDescribed,
          @JsonKey(name: "Recommended") final double? recommended,
          @JsonKey(name: "overallAverage") final double? overallAverage}) =
      _$ReviewAverageModelImpl;

  factory _ReviewAverageModel.fromJson(Map<String, dynamic> json) =
      _$ReviewAverageModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  dynamic get id;
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
  @JsonKey(name: "overallAverage")
  double? get overallAverage;
  @override
  @JsonKey(ignore: true)
  _$$ReviewAverageModelImplCopyWith<_$ReviewAverageModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
