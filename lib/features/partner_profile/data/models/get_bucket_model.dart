// ignore_for_file: invalid_annotation_target

import 'package:flutter_consumer_app/features/partner_profile/domain/entities/get_bucket_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_bucket_model.freezed.dart';
part 'get_bucket_model.g.dart';

@freezed
class GetBucketModel extends GetBucketEntity with _$GetBucketModel {
  const factory GetBucketModel({
    @JsonKey(name: "code") required String? code,
    @JsonKey(name: "message") required String? message,
    @JsonKey(name: "data") required DataModel? data,
    @JsonKey(name: "success_status") required bool? successStatus,
  }) = _GetBucketModel;

  factory GetBucketModel.fromJson(Map<String, dynamic> json) =>
      _$GetBucketModelFromJson(json);
}

@freezed
class DataModel extends Data with _$DataModel {
  const factory DataModel({
    @JsonKey(name: "bucket") required BucketModel? bucket,
    @JsonKey(name: "packageReviewAvg")
    required List<PackageReviewAvgModel>? packageReviewAvg,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}

@freezed
class BucketModel extends Bucket with _$BucketModel {
  const factory BucketModel({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "partner_uuid") required String? partnerUuid,
    @JsonKey(name: "bucket_uuid") required String? bucketUuid,
    @JsonKey(name: "bucket_name") required String? bucketName,
    @JsonKey(name: "bucket_cover_image") required String? bucketCoverImage,
    @JsonKey(name: "status") required String? status,
    @JsonKey(name: "parent_service_category")
    required List<dynamic>? parentServiceCategory,
    @JsonKey(name: "child_service_category")
    required List<dynamic>? childServiceCategory,
    @JsonKey(name: "package_keywords") required List<String>? packageKeywords,
    @JsonKey(name: "package_tags") required List<String>? packageTags,
    @JsonKey(name: "service_location") required String? serviceLocation,
    @JsonKey(name: "coupons_and_discounts")
    required List<dynamic>? couponsAndDiscounts,
    @JsonKey(name: "selected_packages")
    required List<SelectedPackageModel>? selectedPackages,
    @JsonKey(name: "created_on") required DateTime? createdOn,
  }) = _BucketModel;

  factory BucketModel.fromJson(Map<String, dynamic> json) =>
      _$BucketModelFromJson(json);
}

@freezed
class SelectedPackageModel extends SelectedPackage with _$SelectedPackageModel {
  const factory SelectedPackageModel({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "partner_uuid") required String? partnerUuid,
    @JsonKey(name: "package_uuid") required String? packageUuid,
    @JsonKey(name: "package_name") required String? packageName,
    @JsonKey(name: "package_cover_image") required String? packageCoverImage,
    @JsonKey(name: "parent_bucket") required String? parentBucket,
    @JsonKey(name: "package_headline") required String? packageHeadline,
    @JsonKey(name: "package_description") required String? packageDescription,
    @JsonKey(name: "package_inclusions") required String? packageInclusions,
    @JsonKey(name: "package_exclusions") required String? packageExclusions,
    @JsonKey(name: "package_must_knows") required String? packageMustKnows,
    @JsonKey(name: "service_location") required String? serviceLocation,
    @JsonKey(name: "status") required String? status,
    @JsonKey(name: "package_keywords") required List<String>? packageKeywords,
    @JsonKey(name: "package_tags") required List<String>? packageTags,
    @JsonKey(name: "service_timing_availability")
    required String? serviceTimingAvailability,
    @JsonKey(name: "package_cost") required int? packageCost,
    @JsonKey(name: "transportation_cost") required double? transportationCost,
    @JsonKey(name: "extra_allowance") required double? extraAllowance,
    @JsonKey(name: "coupons_and_discounts")
    required String? couponsAndDiscounts,
    @JsonKey(name: "upload_package_agreement")
    required String? uploadPackageAgreement,
    @JsonKey(name: "most_booked_packages") required bool? mostBookedPackages,
    @JsonKey(name: "trending_packages") required bool? trendingPackages,
    @JsonKey(name: "best_seller_packages") required bool? bestSellerPackages,
    @JsonKey(name: "promoted_packages") required bool? promotedPackages,
    @JsonKey(name: "packageGallery")
    required List<PackageGalleryModel>? packageGallery,
    @JsonKey(name: "created_on") required DateTime? createdOn,
  }) = _SelectedPackageModel;

  factory SelectedPackageModel.fromJson(Map<String, dynamic> json) =>
      _$SelectedPackageModelFromJson(json);
}

@freezed
class PackageGalleryModel extends PackageGallery with _$PackageGalleryModel {
  const factory PackageGalleryModel({
    @JsonKey(name: "media") required String? media,
    @JsonKey(name: "description") required String? description,
    @JsonKey(name: "assigned_to") required List<dynamic>? assignedTo,
  }) = _PackageGalleryModel;

  factory PackageGalleryModel.fromJson(Map<String, dynamic> json) =>
      _$PackageGalleryModelFromJson(json);
}

@freezed
class PackageReviewAvgModel extends PackageReviewAvg
    with _$PackageReviewAvgModel {
  const factory PackageReviewAvgModel({
    @JsonKey(name: "packageReviewAverage")
    required double? packageReviewAverage,
    @JsonKey(name: "reviewCount") required int? reviewCount,
    @JsonKey(name: "packageUuid") required String? packageUuid,
  }) = _PackageReviewAvgModel;

  factory PackageReviewAvgModel.fromJson(Map<String, dynamic> json) =>
      _$PackageReviewAvgModelFromJson(json);
}
