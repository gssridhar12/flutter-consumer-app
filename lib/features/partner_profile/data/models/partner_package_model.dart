// To parse this JSON data, do
//
//     final partnerPackageModel = partnerPackageModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_package_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'partner_package_model.freezed.dart';
part 'partner_package_model.g.dart';


@freezed
class PartnerPackageModel extends PartnerPackageEntity with _$PartnerPackageModel {
    const factory PartnerPackageModel({
        @JsonKey(name: "code")
        String? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "data")
        DataModel? data,
        @JsonKey(name: "success_status")
        bool? successStatus,
    }) = _PartnerPackageModel;

    factory PartnerPackageModel.fromJson(Map<String, dynamic> json) => _$PartnerPackageModelFromJson(json);
}

@freezed
class DataModel extends Data with _$DataModel {
    const factory DataModel({
        @JsonKey(name: "count")
        int? count,
        @JsonKey(name: "page")
        int? page,
        @JsonKey(name: "size")
        int? size,
        @JsonKey(name: "packages")
        List<PackageElementModel>? packages,
    }) = _DataModel;

    factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
}

@freezed
class PackageElementModel extends PackageElement with _$PackageElementModel {
    const factory PackageElementModel({
        @JsonKey(name: "package")
        PackagePackageModel? package,
        @JsonKey(name: "reviewAverage")
        ReviewAverageModel? reviewAverage,
    }) = _PackageElementModel;

    factory PackageElementModel.fromJson(Map<String, dynamic> json) => _$PackageElementModelFromJson(json);
}

@freezed
class PackagePackageModel extends PackagePackage with _$PackagePackageModel {
    const factory PackagePackageModel({
        @JsonKey(name: "id")
        String? id,
        @JsonKey(name: "partner_uuid")
        String? partnerUuid,
        @JsonKey(name: "package_uuid")
        String? packageUuid,
        @JsonKey(name: "package_name")
        String? packageName,
        @JsonKey(name: "package_cover_image")
        String? packageCoverImage,
        @JsonKey(name: "parent_bucket")
        String? parentBucket,
        @JsonKey(name: "package_headline")
        String? packageHeadline,
        @JsonKey(name: "package_description")
        String? packageDescription,
        @JsonKey(name: "package_inclusions")
        List<String>? packageInclusions,
        @JsonKey(name: "package_exclusions")
        List<String>? packageExclusions,
        @JsonKey(name: "package_must_knows")
        List<String>? packageMustKnows,
        @JsonKey(name: "service_location")
        String? serviceLocation,
        @JsonKey(name: "status")
        String? status,
        @JsonKey(name: "package_keywords")
        List<String>? packageKeywords,
        @JsonKey(name: "package_tags")
        List<String>? packageTags,
        @JsonKey(name: "service_timing_availability")
        String? serviceTimingAvailability,
        @JsonKey(name: "package_cost")
        int? packageCost,
        @JsonKey(name: "transportation_cost")
        double? transportationCost,
        @JsonKey(name: "extra_allowance")
        double? extraAllowance,
        @JsonKey(name: "coupons_and_discounts")
        String? couponsAndDiscounts,
        @JsonKey(name: "upload_package_agreement")
        String? uploadPackageAgreement,
        @JsonKey(name: "most_booked_packages")
        bool? mostBookedPackages,
        @JsonKey(name: "trending_packages")
        bool? trendingPackages,
        @JsonKey(name: "best_seller_packages")
        bool? bestSellerPackages,
        @JsonKey(name: "promoted_packages")
        bool? promotedPackages,
        @JsonKey(name: "packageGallery")
        List<PackageGalleryModel>? packageGallery,
        @JsonKey(name: "is_active")
        bool? isActive,
        @JsonKey(name: "created_on")
        DateTime? createdOn,
        @JsonKey(name: "service_type")
        List<ServiceTypeModel>? serviceType,
        @JsonKey(name: "selected_buckets")
        List<String>? selectedBuckets,
    }) = _PackagePackageModel;

    factory PackagePackageModel.fromJson(Map<String, dynamic> json) => _$PackagePackageModelFromJson(json);
}

@freezed
class PackageGalleryModel extends PackageGallery with _$PackageGalleryModel {
    const factory PackageGalleryModel({
        @JsonKey(name: "media")
        String? media,
        @JsonKey(name: "description")
        String? description,
        @JsonKey(name: "assigned_to")
        List<String>? assignedTo,
    }) = _PackageGalleryModel;

    factory PackageGalleryModel.fromJson(Map<String, dynamic> json) => _$PackageGalleryModelFromJson(json);
}

@freezed
class ServiceTypeModel extends ServiceType with _$ServiceTypeModel {
    const factory ServiceTypeModel({
        @JsonKey(name: "door_step")
        bool? doorStep,
        @JsonKey(name: "in_premise")
        bool? inPremise,
    }) = _ServiceTypeModel;

    factory ServiceTypeModel.fromJson(Map<String, dynamic> json) => _$ServiceTypeModelFromJson(json);
}

@freezed
class ReviewAverageModel extends ReviewAverage with _$ReviewAverageModel  {
    const factory ReviewAverageModel ({
        @JsonKey(name: "_id")
        dynamic id,
        @JsonKey(name: "Communication")
        double? communication,
        @JsonKey(name: "ServiceDescribed")
        double? serviceDescribed,
        @JsonKey(name: "Recommended")
        double? recommended,
        @JsonKey(name: "overallAverage")
        double? overallAverage,
    }) = _ReviewAverageModel ;

    factory ReviewAverageModel .fromJson(Map<String, dynamic> json) => _$ReviewAverageModelFromJson(json);
}
