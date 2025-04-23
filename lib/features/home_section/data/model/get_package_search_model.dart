// To parse this JSON data, do
//
//     final getPackageSearchModel = getPackageSearchModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_package_search_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_package_search_model.freezed.dart';
part 'get_package_search_model.g.dart';

@freezed
class GetPackageSearchModel extends GetPackageSearchEntity
    with _$GetPackageSearchModel {
  const factory GetPackageSearchModel({
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") DataModel? data,
    @JsonKey(name: "success_status") bool? successStatus,
  }) = _GetPackageSearchModel;

  factory GetPackageSearchModel.fromJson(Map<String, dynamic> json) =>
      _$GetPackageSearchModelFromJson(json);
}

@freezed
class DataModel extends Data with _$DataModel {
  const factory DataModel({
    @JsonKey(name: "count") int? count,
    @JsonKey(name: "page") int? page,
    @JsonKey(name: "size") int? size,
    @JsonKey(name: "packages") List<PackageModel>? packages,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}

@freezed
class PackageModel extends Package with _$PackageModel {
  const factory PackageModel({
    @JsonKey(name: "id") String? id,
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
    @JsonKey(name: "coupons_and_discounts") String? couponsAndDiscounts,
    @JsonKey(name: "upload_package_agreement") String? uploadPackageAgreement,
    @JsonKey(name: "most_booked_packages") bool? mostBookedPackages,
    @JsonKey(name: "trending_packages") bool? trendingPackages,
    @JsonKey(name: "best_seller_packages") bool? bestSellerPackages,
    @JsonKey(name: "promoted_packages") bool? promotedPackages,
    @JsonKey(name: "packageGallery") List<PackageGalleryModel>? packageGallery,
    @JsonKey(name: "created_on") DateTime? createdOn,
    @JsonKey(name: "bucket_uuid") String? bucketUuid,
    @JsonKey(name: "selected_buckets") List<String>? selectedBuckets,
    @JsonKey(name: "extra_allowance") double? extraAllowance,
  }) = _PackageModel;

  factory PackageModel.fromJson(Map<String, dynamic> json) =>
      _$PackageModelFromJson(json);
}

@freezed
class PackageGalleryModel extends PackageGallery with _$PackageGalleryModel {
  const factory PackageGalleryModel({
    @JsonKey(name: "media") String? media,
    @JsonKey(name: "description") String? description,
    @JsonKey(name: "assigned_to") List<String>? assignedTo,
  }) = _PackageGalleryModel;

  factory PackageGalleryModel.fromJson(Map<String, dynamic> json) =>
      _$PackageGalleryModelFromJson(json);
}
