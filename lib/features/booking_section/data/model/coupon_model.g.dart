// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CouponModelImpl _$$CouponModelImplFromJson(Map<String, dynamic> json) =>
    _$CouponModelImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      successStatus: json['success_status'] as bool?,
    );

Map<String, dynamic> _$$CouponModelImplToJson(_$CouponModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'success_status': instance.successStatus,
    };

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      packageCoupons: (json['packageCoupons'] as List<dynamic>?)
          ?.map((e) => PackageCouponModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'packageCoupons': instance.packageCoupons,
    };

_$PackageCouponModelImpl _$$PackageCouponModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageCouponModelImpl(
      packageUuid: json['package_uuid'] as String?,
      couponUuid: json['coupon_uuid'] as String?,
      minBillingTotal: (json['min_billing_total'] as num?)?.toDouble(),
      fixedAmount: (json['fixed_amount'] as num?)?.toDouble(),
      couponName: json['coupon_name'] as String?,
      couponDescription: json['coupon_description'] as String?,
      validator: (json['validator'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      validDays: (json['valid_days'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      validFrom: json['valid_from'] == null
          ? null
          : DateTime.parse(json['valid_from'] as String),
      validTo: json['valid_to'] == null
          ? null
          : DateTime.parse(json['valid_to'] as String),
      activeDays: (json['active_days'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      couponCode: json['coupon_code'] as String?,
      status: json['status'] as bool?,
      createdOn: json['created_on'] == null
          ? null
          : DateTime.parse(json['created_on'] as String),
    );

Map<String, dynamic> _$$PackageCouponModelImplToJson(
        _$PackageCouponModelImpl instance) =>
    <String, dynamic>{
      'package_uuid': instance.packageUuid,
      'coupon_uuid': instance.couponUuid,
      'min_billing_total': instance.minBillingTotal,
      'fixed_amount': instance.fixedAmount,
      'coupon_name': instance.couponName,
      'coupon_description': instance.couponDescription,
      'validator': instance.validator,
      'valid_days': instance.validDays,
      'valid_from': instance.validFrom?.toIso8601String(),
      'valid_to': instance.validTo?.toIso8601String(),
      'active_days': instance.activeDays,
      'coupon_code': instance.couponCode,
      'status': instance.status,
      'created_on': instance.createdOn?.toIso8601String(),
    };
