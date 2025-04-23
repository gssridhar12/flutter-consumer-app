// ignore_for_file: invalid_annotation_target

import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/coupon_entity.dart';

// To parse this JSON data, do
//
//     final couponModel = couponModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon_model.freezed.dart';
part 'coupon_model.g.dart';

@freezed
class CouponModel extends CouponEntity with _$CouponModel {
  const factory CouponModel({
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") DataModel? data,
    @JsonKey(name: "success_status") bool? successStatus,
  }) = _CouponModel;

  factory CouponModel.fromJson(Map<String, dynamic> json) =>
      _$CouponModelFromJson(json);
}

@freezed
class DataModel extends Data with _$DataModel {
  const factory DataModel({
    @JsonKey(name: "packageCoupons") List<PackageCouponModel>? packageCoupons,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}

@freezed
class PackageCouponModel extends PackageCoupon with _$PackageCouponModel {
  const factory PackageCouponModel({
    @JsonKey(name: "package_uuid") String? packageUuid,
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
    @JsonKey(name: "created_on") DateTime? createdOn,
  }) = _PackageCouponModel;

  factory PackageCouponModel.fromJson(Map<String, dynamic> json) =>
      _$PackageCouponModelFromJson(json);
}
