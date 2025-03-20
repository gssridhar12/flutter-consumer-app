// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'coupon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CouponModel _$CouponModelFromJson(Map<String, dynamic> json) {
  return _CouponModel.fromJson(json);
}

/// @nodoc
mixin _$CouponModel {
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
  $CouponModelCopyWith<CouponModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CouponModelCopyWith<$Res> {
  factory $CouponModelCopyWith(
          CouponModel value, $Res Function(CouponModel) then) =
      _$CouponModelCopyWithImpl<$Res, CouponModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataModel? data,
      @JsonKey(name: "success_status") bool? successStatus});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$CouponModelCopyWithImpl<$Res, $Val extends CouponModel>
    implements $CouponModelCopyWith<$Res> {
  _$CouponModelCopyWithImpl(this._value, this._then);

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
abstract class _$$CouponModelImplCopyWith<$Res>
    implements $CouponModelCopyWith<$Res> {
  factory _$$CouponModelImplCopyWith(
          _$CouponModelImpl value, $Res Function(_$CouponModelImpl) then) =
      __$$CouponModelImplCopyWithImpl<$Res>;
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
class __$$CouponModelImplCopyWithImpl<$Res>
    extends _$CouponModelCopyWithImpl<$Res, _$CouponModelImpl>
    implements _$$CouponModelImplCopyWith<$Res> {
  __$$CouponModelImplCopyWithImpl(
      _$CouponModelImpl _value, $Res Function(_$CouponModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? successStatus = freezed,
  }) {
    return _then(_$CouponModelImpl(
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
class _$CouponModelImpl implements _CouponModel {
  const _$CouponModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "success_status") this.successStatus});

  factory _$CouponModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CouponModelImplFromJson(json);

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
    return 'CouponModel(code: $code, message: $message, data: $data, successStatus: $successStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CouponModelImpl &&
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
  _$$CouponModelImplCopyWith<_$CouponModelImpl> get copyWith =>
      __$$CouponModelImplCopyWithImpl<_$CouponModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CouponModelImplToJson(
      this,
    );
  }
}

abstract class _CouponModel implements CouponModel {
  const factory _CouponModel(
          {@JsonKey(name: "code") final String? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final DataModel? data,
          @JsonKey(name: "success_status") final bool? successStatus}) =
      _$CouponModelImpl;

  factory _CouponModel.fromJson(Map<String, dynamic> json) =
      _$CouponModelImpl.fromJson;

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
  _$$CouponModelImplCopyWith<_$CouponModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: "packageCoupons")
  List<PackageCouponModel>? get packageCoupons =>
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
      {@JsonKey(name: "packageCoupons")
      List<PackageCouponModel>? packageCoupons});
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
    Object? packageCoupons = freezed,
  }) {
    return _then(_value.copyWith(
      packageCoupons: freezed == packageCoupons
          ? _value.packageCoupons
          : packageCoupons // ignore: cast_nullable_to_non_nullable
              as List<PackageCouponModel>?,
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
      {@JsonKey(name: "packageCoupons")
      List<PackageCouponModel>? packageCoupons});
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
    Object? packageCoupons = freezed,
  }) {
    return _then(_$DataModelImpl(
      packageCoupons: freezed == packageCoupons
          ? _value._packageCoupons
          : packageCoupons // ignore: cast_nullable_to_non_nullable
              as List<PackageCouponModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl implements _DataModel {
  const _$DataModelImpl(
      {@JsonKey(name: "packageCoupons")
      final List<PackageCouponModel>? packageCoupons})
      : _packageCoupons = packageCoupons;

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  final List<PackageCouponModel>? _packageCoupons;
  @override
  @JsonKey(name: "packageCoupons")
  List<PackageCouponModel>? get packageCoupons {
    final value = _packageCoupons;
    if (value == null) return null;
    if (_packageCoupons is EqualUnmodifiableListView) return _packageCoupons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataModel(packageCoupons: $packageCoupons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._packageCoupons, _packageCoupons));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_packageCoupons));

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
      {@JsonKey(name: "packageCoupons")
      final List<PackageCouponModel>? packageCoupons}) = _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @JsonKey(name: "packageCoupons")
  List<PackageCouponModel>? get packageCoupons;
  @override
  @JsonKey(ignore: true)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackageCouponModel _$PackageCouponModelFromJson(Map<String, dynamic> json) {
  return _PackageCouponModel.fromJson(json);
}

/// @nodoc
mixin _$PackageCouponModel {
  @JsonKey(name: "package_uuid")
  String? get packageUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_uuid")
  String? get couponUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "min_billing_total")
  double? get minBillingTotal => throw _privateConstructorUsedError;
  @JsonKey(name: "fixed_amount")
  double? get fixedAmount => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_name")
  String? get couponName => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_description")
  String? get couponDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "validator")
  List<String>? get validator => throw _privateConstructorUsedError;
  @JsonKey(name: "valid_days")
  List<String>? get validDays => throw _privateConstructorUsedError;
  @JsonKey(name: "valid_from")
  DateTime? get validFrom => throw _privateConstructorUsedError;
  @JsonKey(name: "valid_to")
  DateTime? get validTo => throw _privateConstructorUsedError;
  @JsonKey(name: "active_days")
  List<String>? get activeDays => throw _privateConstructorUsedError;
  @JsonKey(name: "coupon_code")
  String? get couponCode => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  bool? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "created_on")
  DateTime? get createdOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackageCouponModelCopyWith<PackageCouponModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackageCouponModelCopyWith<$Res> {
  factory $PackageCouponModelCopyWith(
          PackageCouponModel value, $Res Function(PackageCouponModel) then) =
      _$PackageCouponModelCopyWithImpl<$Res, PackageCouponModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "package_uuid") String? packageUuid,
      @JsonKey(name: "coupon_uuid") String? couponUuid,
      @JsonKey(name: "min_billing_total") double? minBillingTotal,
      @JsonKey(name: "fixed_amount") double? fixedAmount,
      @JsonKey(name: "coupon_name") String? couponName,
      @JsonKey(name: "coupon_description") String? couponDescription,
      @JsonKey(name: "validator") List<String>? validator,
      @JsonKey(name: "valid_days") List<String>? validDays,
      @JsonKey(name: "valid_from") DateTime? validFrom,
      @JsonKey(name: "valid_to") DateTime? validTo,
      @JsonKey(name: "active_days") List<String>? activeDays,
      @JsonKey(name: "coupon_code") String? couponCode,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "created_on") DateTime? createdOn});
}

/// @nodoc
class _$PackageCouponModelCopyWithImpl<$Res, $Val extends PackageCouponModel>
    implements $PackageCouponModelCopyWith<$Res> {
  _$PackageCouponModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageUuid = freezed,
    Object? couponUuid = freezed,
    Object? minBillingTotal = freezed,
    Object? fixedAmount = freezed,
    Object? couponName = freezed,
    Object? couponDescription = freezed,
    Object? validator = freezed,
    Object? validDays = freezed,
    Object? validFrom = freezed,
    Object? validTo = freezed,
    Object? activeDays = freezed,
    Object? couponCode = freezed,
    Object? status = freezed,
    Object? createdOn = freezed,
  }) {
    return _then(_value.copyWith(
      packageUuid: freezed == packageUuid
          ? _value.packageUuid
          : packageUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      couponUuid: freezed == couponUuid
          ? _value.couponUuid
          : couponUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      minBillingTotal: freezed == minBillingTotal
          ? _value.minBillingTotal
          : minBillingTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      fixedAmount: freezed == fixedAmount
          ? _value.fixedAmount
          : fixedAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      couponName: freezed == couponName
          ? _value.couponName
          : couponName // ignore: cast_nullable_to_non_nullable
              as String?,
      couponDescription: freezed == couponDescription
          ? _value.couponDescription
          : couponDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      validator: freezed == validator
          ? _value.validator
          : validator // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      validDays: freezed == validDays
          ? _value.validDays
          : validDays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      validFrom: freezed == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activeDays: freezed == activeDays
          ? _value.activeDays
          : activeDays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackageCouponModelImplCopyWith<$Res>
    implements $PackageCouponModelCopyWith<$Res> {
  factory _$$PackageCouponModelImplCopyWith(_$PackageCouponModelImpl value,
          $Res Function(_$PackageCouponModelImpl) then) =
      __$$PackageCouponModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "package_uuid") String? packageUuid,
      @JsonKey(name: "coupon_uuid") String? couponUuid,
      @JsonKey(name: "min_billing_total") double? minBillingTotal,
      @JsonKey(name: "fixed_amount") double? fixedAmount,
      @JsonKey(name: "coupon_name") String? couponName,
      @JsonKey(name: "coupon_description") String? couponDescription,
      @JsonKey(name: "validator") List<String>? validator,
      @JsonKey(name: "valid_days") List<String>? validDays,
      @JsonKey(name: "valid_from") DateTime? validFrom,
      @JsonKey(name: "valid_to") DateTime? validTo,
      @JsonKey(name: "active_days") List<String>? activeDays,
      @JsonKey(name: "coupon_code") String? couponCode,
      @JsonKey(name: "status") bool? status,
      @JsonKey(name: "created_on") DateTime? createdOn});
}

/// @nodoc
class __$$PackageCouponModelImplCopyWithImpl<$Res>
    extends _$PackageCouponModelCopyWithImpl<$Res, _$PackageCouponModelImpl>
    implements _$$PackageCouponModelImplCopyWith<$Res> {
  __$$PackageCouponModelImplCopyWithImpl(_$PackageCouponModelImpl _value,
      $Res Function(_$PackageCouponModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? packageUuid = freezed,
    Object? couponUuid = freezed,
    Object? minBillingTotal = freezed,
    Object? fixedAmount = freezed,
    Object? couponName = freezed,
    Object? couponDescription = freezed,
    Object? validator = freezed,
    Object? validDays = freezed,
    Object? validFrom = freezed,
    Object? validTo = freezed,
    Object? activeDays = freezed,
    Object? couponCode = freezed,
    Object? status = freezed,
    Object? createdOn = freezed,
  }) {
    return _then(_$PackageCouponModelImpl(
      packageUuid: freezed == packageUuid
          ? _value.packageUuid
          : packageUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      couponUuid: freezed == couponUuid
          ? _value.couponUuid
          : couponUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      minBillingTotal: freezed == minBillingTotal
          ? _value.minBillingTotal
          : minBillingTotal // ignore: cast_nullable_to_non_nullable
              as double?,
      fixedAmount: freezed == fixedAmount
          ? _value.fixedAmount
          : fixedAmount // ignore: cast_nullable_to_non_nullable
              as double?,
      couponName: freezed == couponName
          ? _value.couponName
          : couponName // ignore: cast_nullable_to_non_nullable
              as String?,
      couponDescription: freezed == couponDescription
          ? _value.couponDescription
          : couponDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      validator: freezed == validator
          ? _value._validator
          : validator // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      validDays: freezed == validDays
          ? _value._validDays
          : validDays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      validFrom: freezed == validFrom
          ? _value.validFrom
          : validFrom // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      validTo: freezed == validTo
          ? _value.validTo
          : validTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      activeDays: freezed == activeDays
          ? _value._activeDays
          : activeDays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      couponCode: freezed == couponCode
          ? _value.couponCode
          : couponCode // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$PackageCouponModelImpl implements _PackageCouponModel {
  const _$PackageCouponModelImpl(
      {@JsonKey(name: "package_uuid") this.packageUuid,
      @JsonKey(name: "coupon_uuid") this.couponUuid,
      @JsonKey(name: "min_billing_total") this.minBillingTotal,
      @JsonKey(name: "fixed_amount") this.fixedAmount,
      @JsonKey(name: "coupon_name") this.couponName,
      @JsonKey(name: "coupon_description") this.couponDescription,
      @JsonKey(name: "validator") final List<String>? validator,
      @JsonKey(name: "valid_days") final List<String>? validDays,
      @JsonKey(name: "valid_from") this.validFrom,
      @JsonKey(name: "valid_to") this.validTo,
      @JsonKey(name: "active_days") final List<String>? activeDays,
      @JsonKey(name: "coupon_code") this.couponCode,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "created_on") this.createdOn})
      : _validator = validator,
        _validDays = validDays,
        _activeDays = activeDays;

  factory _$PackageCouponModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackageCouponModelImplFromJson(json);

  @override
  @JsonKey(name: "package_uuid")
  final String? packageUuid;
  @override
  @JsonKey(name: "coupon_uuid")
  final String? couponUuid;
  @override
  @JsonKey(name: "min_billing_total")
  final double? minBillingTotal;
  @override
  @JsonKey(name: "fixed_amount")
  final double? fixedAmount;
  @override
  @JsonKey(name: "coupon_name")
  final String? couponName;
  @override
  @JsonKey(name: "coupon_description")
  final String? couponDescription;
  final List<String>? _validator;
  @override
  @JsonKey(name: "validator")
  List<String>? get validator {
    final value = _validator;
    if (value == null) return null;
    if (_validator is EqualUnmodifiableListView) return _validator;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _validDays;
  @override
  @JsonKey(name: "valid_days")
  List<String>? get validDays {
    final value = _validDays;
    if (value == null) return null;
    if (_validDays is EqualUnmodifiableListView) return _validDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "valid_from")
  final DateTime? validFrom;
  @override
  @JsonKey(name: "valid_to")
  final DateTime? validTo;
  final List<String>? _activeDays;
  @override
  @JsonKey(name: "active_days")
  List<String>? get activeDays {
    final value = _activeDays;
    if (value == null) return null;
    if (_activeDays is EqualUnmodifiableListView) return _activeDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "coupon_code")
  final String? couponCode;
  @override
  @JsonKey(name: "status")
  final bool? status;
  @override
  @JsonKey(name: "created_on")
  final DateTime? createdOn;

  @override
  String toString() {
    return 'PackageCouponModel(packageUuid: $packageUuid, couponUuid: $couponUuid, minBillingTotal: $minBillingTotal, fixedAmount: $fixedAmount, couponName: $couponName, couponDescription: $couponDescription, validator: $validator, validDays: $validDays, validFrom: $validFrom, validTo: $validTo, activeDays: $activeDays, couponCode: $couponCode, status: $status, createdOn: $createdOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackageCouponModelImpl &&
            (identical(other.packageUuid, packageUuid) ||
                other.packageUuid == packageUuid) &&
            (identical(other.couponUuid, couponUuid) ||
                other.couponUuid == couponUuid) &&
            (identical(other.minBillingTotal, minBillingTotal) ||
                other.minBillingTotal == minBillingTotal) &&
            (identical(other.fixedAmount, fixedAmount) ||
                other.fixedAmount == fixedAmount) &&
            (identical(other.couponName, couponName) ||
                other.couponName == couponName) &&
            (identical(other.couponDescription, couponDescription) ||
                other.couponDescription == couponDescription) &&
            const DeepCollectionEquality()
                .equals(other._validator, _validator) &&
            const DeepCollectionEquality()
                .equals(other._validDays, _validDays) &&
            (identical(other.validFrom, validFrom) ||
                other.validFrom == validFrom) &&
            (identical(other.validTo, validTo) || other.validTo == validTo) &&
            const DeepCollectionEquality()
                .equals(other._activeDays, _activeDays) &&
            (identical(other.couponCode, couponCode) ||
                other.couponCode == couponCode) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      packageUuid,
      couponUuid,
      minBillingTotal,
      fixedAmount,
      couponName,
      couponDescription,
      const DeepCollectionEquality().hash(_validator),
      const DeepCollectionEquality().hash(_validDays),
      validFrom,
      validTo,
      const DeepCollectionEquality().hash(_activeDays),
      couponCode,
      status,
      createdOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackageCouponModelImplCopyWith<_$PackageCouponModelImpl> get copyWith =>
      __$$PackageCouponModelImplCopyWithImpl<_$PackageCouponModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackageCouponModelImplToJson(
      this,
    );
  }
}

abstract class _PackageCouponModel implements PackageCouponModel {
  const factory _PackageCouponModel(
          {@JsonKey(name: "package_uuid") final String? packageUuid,
          @JsonKey(name: "coupon_uuid") final String? couponUuid,
          @JsonKey(name: "min_billing_total") final double? minBillingTotal,
          @JsonKey(name: "fixed_amount") final double? fixedAmount,
          @JsonKey(name: "coupon_name") final String? couponName,
          @JsonKey(name: "coupon_description") final String? couponDescription,
          @JsonKey(name: "validator") final List<String>? validator,
          @JsonKey(name: "valid_days") final List<String>? validDays,
          @JsonKey(name: "valid_from") final DateTime? validFrom,
          @JsonKey(name: "valid_to") final DateTime? validTo,
          @JsonKey(name: "active_days") final List<String>? activeDays,
          @JsonKey(name: "coupon_code") final String? couponCode,
          @JsonKey(name: "status") final bool? status,
          @JsonKey(name: "created_on") final DateTime? createdOn}) =
      _$PackageCouponModelImpl;

  factory _PackageCouponModel.fromJson(Map<String, dynamic> json) =
      _$PackageCouponModelImpl.fromJson;

  @override
  @JsonKey(name: "package_uuid")
  String? get packageUuid;
  @override
  @JsonKey(name: "coupon_uuid")
  String? get couponUuid;
  @override
  @JsonKey(name: "min_billing_total")
  double? get minBillingTotal;
  @override
  @JsonKey(name: "fixed_amount")
  double? get fixedAmount;
  @override
  @JsonKey(name: "coupon_name")
  String? get couponName;
  @override
  @JsonKey(name: "coupon_description")
  String? get couponDescription;
  @override
  @JsonKey(name: "validator")
  List<String>? get validator;
  @override
  @JsonKey(name: "valid_days")
  List<String>? get validDays;
  @override
  @JsonKey(name: "valid_from")
  DateTime? get validFrom;
  @override
  @JsonKey(name: "valid_to")
  DateTime? get validTo;
  @override
  @JsonKey(name: "active_days")
  List<String>? get activeDays;
  @override
  @JsonKey(name: "coupon_code")
  String? get couponCode;
  @override
  @JsonKey(name: "status")
  bool? get status;
  @override
  @JsonKey(name: "created_on")
  DateTime? get createdOn;
  @override
  @JsonKey(ignore: true)
  _$$PackageCouponModelImplCopyWith<_$PackageCouponModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
