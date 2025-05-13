// To parse this JSON data, do
//
//     final getPackageLikeModel = getPackageLikeModelFromJson(jsonString);

import 'dart:convert';

GetPackageLikeModel getPackageLikeModelFromJson(String str) =>
    GetPackageLikeModel.fromJson(json.decode(str));

String getPackageLikeModelToJson(GetPackageLikeModel data) =>
    json.encode(data.toJson());

class GetPackageLikeModel {
  String? code;
  String? message;
  Data? data;
  bool? successStatus;

  GetPackageLikeModel({
    this.code,
    this.message,
    this.data,
    this.successStatus,
  });

  factory GetPackageLikeModel.fromJson(Map<String, dynamic> json) =>
      GetPackageLikeModel(
        code: json["code"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        successStatus: json["success_status"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data?.toJson(),
        "success_status": successStatus,
      };
}

class Data {
  List<LikedPackage>? likedPackages;

  Data({
    this.likedPackages,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        likedPackages: json["likedPackages"] == null
            ? []
            : List<LikedPackage>.from(
                json["likedPackages"]!.map((x) => LikedPackage.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "likedPackages": likedPackages == null
            ? []
            : List<dynamic>.from(likedPackages!.map((x) => x.toJson())),
      };
}

class LikedPackage {
  String? userUuid;
  Package? package;
  bool? isLiked;

  LikedPackage({
    this.userUuid,
    this.package,
    this.isLiked,
  });

  factory LikedPackage.fromJson(Map<String, dynamic> json) => LikedPackage(
        userUuid: json["user_uuid"],
        package:
            json["Package"] == null ? null : Package.fromJson(json["Package"]),
        isLiked: json["is_liked"],
      );

  Map<String, dynamic> toJson() => {
        "user_uuid": userUuid,
        "Package": package?.toJson(),
        "is_liked": isLiked,
      };
}

class Package {
  String? id;
  String? partnerUuid;
  String? packageUuid;
  String? packageName;
  String? packageCoverImage;
  String? packageHeadline;
  String? packageDescription;
  String? packageInclusions;
  String? packageExclusions;
  String? packageMustKnows;
  List<ServiceLocation>? serviceLocation;
  String? status;
  List<String>? packageKeywords;
  List<String>? flatCoupon;
  List<String>? discountCoupon;
  List<String>? packageTags;
  DateTime? serviceAvailabilityStartTime;
  DateTime? serviceAvailabilityEndTime;
  String? serviceSlotDuration;
  double? packageCost;
  double? transportationCost;
  double? extraAllowance;
  String? couponsAndDiscounts;
  String? uploadPackageAgreement;
  bool? mostBookedPackages;
  bool? trendingPackages;
  bool? bestSellerPackages;
  bool? promotedPackages;
  List<PackageGallery>? packageGallery;
  List<SelectedBucket>? selectedBuckets;
  List<ServiceType>? serviceType;
  DateTime? createdOn;

  Package({
    this.id,
    this.partnerUuid,
    this.packageUuid,
    this.packageName,
    this.packageCoverImage,
    this.packageHeadline,
    this.packageDescription,
    this.packageInclusions,
    this.packageExclusions,
    this.packageMustKnows,
    this.serviceLocation,
    this.status,
    this.packageKeywords,
    this.flatCoupon,
    this.discountCoupon,
    this.packageTags,
    this.serviceAvailabilityStartTime,
    this.serviceAvailabilityEndTime,
    this.serviceSlotDuration,
    this.packageCost,
    this.transportationCost,
    this.extraAllowance,
    this.couponsAndDiscounts,
    this.uploadPackageAgreement,
    this.mostBookedPackages,
    this.trendingPackages,
    this.bestSellerPackages,
    this.promotedPackages,
    this.packageGallery,
    this.selectedBuckets,
    this.serviceType,
    this.createdOn,
  });

  factory Package.fromJson(Map<String, dynamic> json) => Package(
        id: json["id"],
        partnerUuid: json["partner_uuid"],
        packageUuid: json["package_uuid"],
        packageName: json["package_name"],
        packageCoverImage: json["package_cover_image"],
        packageHeadline: json["package_headline"],
        packageDescription: json["package_description"],
        packageInclusions: json["package_inclusions"],
        packageExclusions: json["package_exclusions"],
        packageMustKnows: json["package_must_knows"],
        serviceLocation: json["service_location"] == null
            ? []
            : List<ServiceLocation>.from(json["service_location"]!
                .map((x) => ServiceLocation.fromJson(x))),
        status: json["status"],
        packageKeywords: json["package_keywords"] == null
            ? []
            : List<String>.from(json["package_keywords"]!.map((x) => x)),
        flatCoupon: json["flat_coupon"] == null
            ? []
            : List<String>.from(json["flat_coupon"]!.map((x) => x)),
        discountCoupon: json["discount_coupon"] == null
            ? []
            : List<String>.from(json["discount_coupon"]!.map((x) => x)),
        packageTags: json["package_tags"] == null
            ? []
            : List<String>.from(json["package_tags"]!.map((x) => x)),
        serviceAvailabilityStartTime:
            json["service_availability_start_time"] == null
                ? null
                : DateTime.parse(json["service_availability_start_time"]),
        serviceAvailabilityEndTime:
            json["service_availability_end_time"] == null
                ? null
                : DateTime.parse(json["service_availability_end_time"]),
        serviceSlotDuration: json["service_slot_duration"] ?? '',
        packageCost: double.tryParse(json["package_cost"].toString()) ?? 0,
        transportationCost:
            double.tryParse(json["transportation_cost"].toString()) ?? 0,
        extraAllowance:
            double.tryParse(json["extra_allowance"].toString()) ?? 0,
        couponsAndDiscounts: json["coupons_and_discounts"],
        uploadPackageAgreement: json["upload_package_agreement"],
        mostBookedPackages: json["most_booked_packages"],
        trendingPackages: json["trending_packages"],
        bestSellerPackages: json["best_seller_packages"],
        promotedPackages: json["promoted_packages"],
        packageGallery: json["packageGallery"] == null
            ? []
            : List<PackageGallery>.from(
                json["packageGallery"]!.map((x) => PackageGallery.fromJson(x))),
        selectedBuckets: json["selected_buckets"] == null
            ? []
            : List<SelectedBucket>.from(json["selected_buckets"]!
                .map((x) => SelectedBucket.fromJson(x))),
        serviceType: json["service_type"] == null
            ? []
            : List<ServiceType>.from(
                json["service_type"]!.map((x) => ServiceType.fromJson(x))),
        createdOn: json["created_on"] == null
            ? null
            : DateTime.parse(json["created_on"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "partner_uuid": partnerUuid,
        "package_uuid": packageUuid,
        "package_name": packageName,
        "package_cover_image": packageCoverImage,
        "package_headline": packageHeadline,
        "package_description": packageDescription,
        "package_inclusions": packageInclusions,
        "package_exclusions": packageExclusions,
        "package_must_knows": packageMustKnows,
        "service_location": serviceLocation == null
            ? []
            : List<dynamic>.from(serviceLocation!.map((x) => x.toJson())),
        "status": status,
        "package_keywords": packageKeywords == null
            ? []
            : List<dynamic>.from(packageKeywords!.map((x) => x)),
        "flat_coupon": flatCoupon == null
            ? []
            : List<dynamic>.from(flatCoupon!.map((x) => x)),
        "discount_coupon": discountCoupon == null
            ? []
            : List<dynamic>.from(discountCoupon!.map((x) => x)),
        "package_tags": packageTags == null
            ? []
            : List<dynamic>.from(packageTags!.map((x) => x)),
        "service_availability_start_time":
            serviceAvailabilityStartTime?.toIso8601String(),
        "service_availability_end_time":
            serviceAvailabilityEndTime?.toIso8601String(),
        "service_slot_duration": serviceSlotDuration,
        "package_cost": packageCost,
        "transportation_cost": transportationCost?.toDouble(),
        "extra_allowance": extraAllowance,
        "coupons_and_discounts": couponsAndDiscounts,
        "upload_package_agreement": uploadPackageAgreement,
        "most_booked_packages": mostBookedPackages,
        "trending_packages": trendingPackages,
        "best_seller_packages": bestSellerPackages,
        "promoted_packages": promotedPackages,
        "packageGallery": packageGallery == null
            ? []
            : List<dynamic>.from(packageGallery!.map((x) => x.toJson())),
        "selected_buckets": selectedBuckets == null
            ? []
            : List<dynamic>.from(selectedBuckets!.map((x) => x.toJson())),
        "service_type": serviceType == null
            ? []
            : List<dynamic>.from(serviceType!.map((x) => x.toJson())),
        "created_on": createdOn?.toIso8601String(),
      };
}

class PackageGallery {
  String? mediaType;
  String? description;
  List<String?>? assignedTo;

  PackageGallery({
    this.mediaType,
    this.description,
    this.assignedTo,
  });

  factory PackageGallery.fromJson(Map<String, dynamic> json) => PackageGallery(
        mediaType: json["media_type"],
        description: json["description"],
        assignedTo: json["assigned_to"] == null
            ? []
            : List<String?>.from(json["assigned_to"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "media_type": mediaType,
        "description": description,
        "assigned_to": assignedTo == null
            ? []
            : List<dynamic>.from(assignedTo!.map((x) => x)),
      };
}

class SelectedBucket {
  String? partnerUuid;
  String? bucketUuid;
  String? bucketName;

  SelectedBucket({
    this.partnerUuid,
    this.bucketUuid,
    this.bucketName,
  });

  factory SelectedBucket.fromJson(Map<String, dynamic> json) => SelectedBucket(
        partnerUuid: json["partner_uuid"],
        bucketUuid: json["bucket_uuid"],
        bucketName: json["bucket_name"],
      );

  Map<String, dynamic> toJson() => {
        "partner_uuid": partnerUuid,
        "bucket_uuid": bucketUuid,
        "bucket_name": bucketName,
      };
}

class ServiceLocation {
  String? addressType;
  String? city;

  ServiceLocation({
    this.addressType,
    this.city,
  });

  factory ServiceLocation.fromJson(Map<String, dynamic> json) =>
      ServiceLocation(
        addressType: json["address_type"],
        city: json["city"],
      );

  Map<String, dynamic> toJson() => {
        "address_type": addressType,
        "city": city,
      };
}

class ServiceType {
  bool? doorStep;
  bool? inPremise;

  ServiceType({
    this.doorStep,
    this.inPremise,
  });

  factory ServiceType.fromJson(Map<String, dynamic> json) => ServiceType(
        doorStep: json["door_step"],
        inPremise: json["in_premise"],
      );

  Map<String, dynamic> toJson() => {
        "door_step": doorStep,
        "in_premise": inPremise,
      };
}




///---------------------

// import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_package_like_entity.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'get_package_like_model.freezed.dart';
// part 'get_package_like_model.g.dart';

// @freezed
// class GetPackageLikeModel extends GetPackageLikeEntity with _$GetPackageLikeModel {
//   const factory GetPackageLikeModel({
//     @JsonKey(name: "code")
//     String? code,
//     @JsonKey(name: "message")
//     String? message,
//     @JsonKey(name: "data")
//     DataModel? data,
//     @JsonKey(name: "success_status")
//     bool? successStatus,
//   }) = _GetPackageLikeModel;

//   factory GetPackageLikeModel.fromJson(Map<String, dynamic> json) => _$GetPackageLikeModelFromJson(json);
// }

// @freezed
// class DataModel extends Data with _$DataModel {
//   const factory DataModel({
//     @JsonKey(name: "likedPackages")
//     List<LikedPackageModel>? likedPackages,
//   }) = _DataModel;

//   factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
// }

// @freezed
// class LikedPackageModel extends LikedPackage with _$LikedPackageModel {
//   const factory LikedPackageModel({
//     @JsonKey(name: "user_uuid")
//     String? userUuid,
//     @JsonKey(name: "Package")
//     PackageModel? package,
//     @JsonKey(name: "is_liked")
//     bool? isLiked,
//   }) = _LikedPackageModel;

//   factory LikedPackageModel.fromJson(Map<String, dynamic> json) => _$LikedPackageModelFromJson(json);
// }

// @freezed
// class PackageModel extends Package with _$PackageModel {
//   const factory PackageModel({
//     @JsonKey(name: "id")
//     String? id,
//     @JsonKey(name: "partner_uuid")
//     String? partnerUuid,
//     @JsonKey(name: "package_uuid")
//     String? packageUuid,
//     @JsonKey(name: "bucket_uuid")
//     String? bucketUuid,
//     @JsonKey(name: "package_name")
//     String? packageName,
//     @JsonKey(name: "package_cover_image")
//     String? packageCoverImage,
//     @JsonKey(name: "parent_bucket")
//     String? parentBucket,
//     @JsonKey(name: "package_headline")
//     String? packageHeadline,
//     @JsonKey(name: "package_description")
//     String? packageDescription,
//     @JsonKey(name: "package_inclusions")
//     String? packageInclusions,
//     @JsonKey(name: "package_exclusions")
//     String? packageExclusions,
//     @JsonKey(name: "package_must_knows")
//     String? packageMustKnows,
//     @JsonKey(name: "service_location")
//     String? serviceLocation,
//     @JsonKey(name: "status")
//     String? status,
//     @JsonKey(name: "package_keywords")
//     List<String>? packageKeywords,
//     @JsonKey(name: "package_tags")
//     List<String>? packageTags,
//     @JsonKey(name: "service_timing_availability")
//     String? serviceTimingAvailability,
//     @JsonKey(name: "package_cost")
//     int? packageCost,
//     @JsonKey(name: "transportation_cost")
//     double? transportationCost,
//     @JsonKey(name: "coupons_and_discounts")
//     String? couponsAndDiscounts,
//     @JsonKey(name: "upload_package_agreement")
//     String? uploadPackageAgreement,
//     @JsonKey(name: "most_booked_packages")
//     bool? mostBookedPackages,
//     @JsonKey(name: "trending_packages")
//     bool? trendingPackages,
//     @JsonKey(name: "best_seller_packages")
//     bool? bestSellerPackages,
//     @JsonKey(name: "promoted_packages")
//     bool? promotedPackages,
//     @JsonKey(name: "packageGallery")
//     List<PackageGalleryModel>? packageGallery,
//     @JsonKey(name: "selected_buckets")
//     List<String>? selectedBuckets,
//     @JsonKey(name: "created_on")
//     DateTime? createdOn,
//   }) = _PackageModel;

//   factory PackageModel.fromJson(Map<String, dynamic> json) => _$PackageModelFromJson(json);
// }

// @freezed
// class PackageGalleryModel extends PackageGallery with _$PackageGalleryModel {
//   const factory PackageGalleryModel({
//     @JsonKey(name: "media")
//     String? media,
//     @JsonKey(name: "description")
//     String? description,
//     @JsonKey(name: "assigned_to")
//     List<dynamic>? assignedTo,
//   }) = _PackageGalleryModel;

//   factory PackageGalleryModel.fromJson(Map<String, dynamic> json) => _$PackageGalleryModelFromJson(json);
// }
