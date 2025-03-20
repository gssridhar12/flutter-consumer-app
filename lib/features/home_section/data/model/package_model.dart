// To parse this JSON data, do
//
//     final packageModel = packageModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:flutter_consumer_app/features/home_section/domain/entities/response/package_enitity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'package_model.freezed.dart';
part 'package_model.g.dart';

PackageModel packageModelFromJson(String str) => PackageModel.fromJson(json.decode(str));

String packageModelToJson(PackageModel data) => json.encode(data.toJson());

@freezed
class PackageModel extends PackageEntity with _$PackageModel {
    const factory PackageModel({
        @JsonKey(name: "code") String? code,
        @JsonKey(name: "message") String? message,
        @JsonKey(name: "data") DataModel? data,
        @JsonKey(name: "success_status") bool? successStatus,
    }) = _PackageModel;

    factory PackageModel.fromJson(Map<String, dynamic> json) => _$PackageModelFromJson(json);
}

@freezed
class DataModel extends Data with _$DataModel {
    const factory DataModel({
        @JsonKey(name: "size") int? size,
        @JsonKey(name: "count") int? count,
        @JsonKey(name: "page") int? page,
        @JsonKey(name: "packages") List<PackageElementModel>? packages,
    }) = _DataModel;

    factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
}

@freezed
class PackageElementModel extends PackageElement with _$PackageElementModel {
    const factory PackageElementModel({
        @JsonKey(name: "packageReviewAverage") double? packageReviewAverage,
        @JsonKey(name: "package") PackagePackageModel? package,
        @JsonKey(name: "profileReviewAverage") double? profileReviewAverage,
        @JsonKey(name: "megmoGigsCount") int? megmoGigsCount,
        @JsonKey(name: "packageBookingCount") int? packageBookingCount,
        @JsonKey(name: "profileName") String? profileName,
        @JsonKey(name: "profileImage") String? profileImage,
    }) = _PackageElementModel;

    factory PackageElementModel.fromJson(Map<String, dynamic> json) => _$PackageElementModelFromJson(json);
}

@freezed
class PackagePackageModel extends PackagePackage with _$PackagePackageModel {
    const factory PackagePackageModel({
        @JsonKey(name: "id") String? id,
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
        @JsonKey(name: "service_timing_availability") String? serviceTimingAvailability,
        @JsonKey(name: "package_cost") int? packageCost,
        @JsonKey(name: "transportation_cost") double? transportationCost,
        @JsonKey(name: "coupons_and_discounts") String? couponsAndDiscounts,
        @JsonKey(name: "upload_package_agreement") String? uploadPackageAgreement,
        @JsonKey(name: "most_booked_packages") bool? mostBookedPackages,
        @JsonKey(name: "trending_packages") bool? trendingPackages,
        @JsonKey(name: "best_seller_packages") bool? bestSellerPackages,
        @JsonKey(name: "promoted_packages") bool? promotedPackages,
        @JsonKey(name: "packageGallery") List<PackageGalleryModel>? packageGallery,
        @JsonKey(name: "selected_buckets") List<String>? selectedBuckets,
        @JsonKey(name: "created_on") DateTime? createdOn,
        @JsonKey(name: "extra_allowance") double? extraAllowance,
    }) = _PackagePackageModel;

    factory PackagePackageModel.fromJson(Map<String, dynamic> json) => _$PackagePackageModelFromJson(json);
}

@freezed
class PackageGalleryModel extends PackageGallery with _$PackageGalleryModel {
    const factory PackageGalleryModel({
        @JsonKey(name: "media") String? media,
        @JsonKey(name: "description") String? description,
        @JsonKey(name: "assigned_to") List<dynamic>? assignedTo,
    }) = _PackageGalleryModel;

    factory PackageGalleryModel.fromJson(Map<String, dynamic> json) => _$PackageGalleryModelFromJson(json);
}