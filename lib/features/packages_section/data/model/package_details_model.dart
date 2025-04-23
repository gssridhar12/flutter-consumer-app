// To parse this JSON data, do
//
//     final packageDetailsModel = packageDetailsModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:flutter_consumer_app/features/packages_section/domain/entities/package_details_entitiy.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'package_details_model.freezed.dart';
part 'package_details_model.g.dart';

PackageDetailsModel packageDetailsModelFromJson(String str) =>
    PackageDetailsModel.fromJson(json.decode(str));

String packageDetailsModelToJson(PackageDetailsModel data) =>
    json.encode(data.toJson());

@freezed
class PackageDetailsModel extends PackageDetailsEntity
    with _$PackageDetailsModel {
  const factory PackageDetailsModel({
    @JsonKey(name: "code") required String? code,
    @JsonKey(name: "message") required String? message,
    @JsonKey(name: "data") required DataModel? data,
    @JsonKey(name: "success_status") required bool? successStatus,
  }) = _PackageDetailsModel;

  factory PackageDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$PackageDetailsModelFromJson(json);
}

@freezed
class DataModel extends Data with _$DataModel {
  const factory DataModel({
    @JsonKey(name: "packageDetails")
    required PackageDetailsModels? packageDetails,
    @JsonKey(name: "partnerName") required String? partnerName,
    @JsonKey(name: "packageReviews")
    required List<PackageReviewModel>? packageReviews,
    @JsonKey(name: "reviewAverages")
    required ReviewAveragesModel? reviewAverages,
    @JsonKey(name: "partnerLocation") required List<dynamic>? partnerLocation,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}

@freezed
class PackageDetailsModels extends PackageDetails with _$PackageDetailsModels {
  const factory PackageDetailsModels({
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
    @JsonKey(name: "selected_buckets") required List<dynamic>? selectedBuckets,
    @JsonKey(name: "created_on") required DateTime? createdOn,
  }) = _PackageDetailsModels;

  factory PackageDetailsModels.fromJson(Map<String, dynamic> json) =>
      _$PackageDetailsModelsFromJson(json);
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
class PackageReviewModel extends PackageReview with _$PackageReviewModel {
  const factory PackageReviewModel({
    @JsonKey(name: "fullName") required String? fullName,
    @JsonKey(name: "profileImage") required String? profileImage,
    @JsonKey(name: "reviewDetails") required ReviewDetailsModel? reviewDetails,
    @JsonKey(name: "patron_level") required int? patronLevel,
  }) = _PackageReviewModel;

  factory PackageReviewModel.fromJson(Map<String, dynamic> json) =>
      _$PackageReviewModelFromJson(json);
}

@freezed
class ReviewDetailsModel extends ReviewDetails with _$ReviewDetailsModel {
  const factory ReviewDetailsModel({
    @JsonKey(name: "id") required String? id,
    @JsonKey(name: "user_uuid") required String? userUuid,
    @JsonKey(name: "package_uuid") required String? packageUuid,
    @JsonKey(name: "review_uuid") required String? reviewUuid,
    @JsonKey(name: "communication") required double? communication,
    @JsonKey(name: "service_described") required double? serviceDescribed,
    @JsonKey(name: "recommended") required double? recommended,
    @JsonKey(name: "source") required String? source,
    @JsonKey(name: "review") required String? review,
    @JsonKey(name: "media") required List<String>? media,
    @JsonKey(name: "created_on") required DateTime? createdOn,
  }) = _ReviewDetailsModel;

  factory ReviewDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewDetailsModelFromJson(json);
}

@freezed
class ReviewAveragesModel extends ReviewAverages with _$ReviewAveragesModel {
  const factory ReviewAveragesModel({
    @JsonKey(name: "_id") required String? id,
    @JsonKey(name: "Communication") required double? communication,
    @JsonKey(name: "ServiceDescribed") required double? serviceDescribed,
    @JsonKey(name: "Recommended") required double? recommended,
    @JsonKey(name: "reviewcount") required int? reviewCount,
    @JsonKey(name: "overallAverage") required double? overallAverage,
  }) = _ReviewAveragesModel;

  factory ReviewAveragesModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewAveragesModelFromJson(json);
}
