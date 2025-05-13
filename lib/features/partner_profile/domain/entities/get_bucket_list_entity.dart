// To parse this JSON data, do
//
//     final getBucketListModel = getBucketListModelFromJson(jsonString);

import 'dart:convert';

GetBucketListModel getBucketListModelFromJson(String str) =>
    GetBucketListModel.fromJson(json.decode(str));

String getBucketListModelToJson(GetBucketListModel data) =>
    json.encode(data.toJson());

class GetBucketListModel {
  String? code;
  String? message;
  Data? data;
  bool? successStatus;

  GetBucketListModel({
    this.code,
    this.message,
    this.data,
    this.successStatus,
  });

  factory GetBucketListModel.fromJson(Map<String, dynamic> json) =>
      GetBucketListModel(
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
  int? count;
  int? page;
  int? size;
  List<BucketData>? buckets;

  Data({
    this.count,
    this.page,
    this.size,
    this.buckets,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        count: json["count"] ?? 1,
        page: json["page"] ?? 0,
        size: json["size"] ?? 1000,
        buckets: json["buckets"] == null
            ? []
            : List<BucketData>.from(
                json["buckets"]!.map((x) => BucketData.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "page": page,
        "size": size,
        "buckets": buckets == null
            ? []
            : List<dynamic>.from(buckets!.map((x) => x.toJson())),
      };
}

class BucketData {
  String? id;
  String? partnerUuid;
  String? bucketUuid;
  String? bucketName;
  String? bucketCoverImage;
  String? status;
  List<String>? parentServiceCategory;
  List<String>? childServiceCategory;
  List<String>? packageKeywords;
  List<String>? packageTags;
  String? serviceLocation;
  List<dynamic>? couponsAndDiscounts;
  List<SelectedPackage>? selectedPackages;
  DateTime? createdOn;

  BucketData({
    this.id,
    this.partnerUuid,
    this.bucketUuid,
    this.bucketName,
    this.bucketCoverImage,
    this.status,
    this.parentServiceCategory,
    this.childServiceCategory,
    this.packageKeywords,
    this.packageTags,
    this.serviceLocation,
    this.couponsAndDiscounts,
    this.selectedPackages,
    this.createdOn,
  });

  factory BucketData.fromJson(Map<String, dynamic> json) => BucketData(
        id: json["id"],
        partnerUuid: json["partner_uuid"],
        bucketUuid: json["bucket_uuid"],
        bucketName: json["bucket_name"],
        bucketCoverImage: json["bucket_cover_image"],
        status: json["status"],
        parentServiceCategory: json["parent_service_category"] == null
            ? []
            : List<String>.from(json["parent_service_category"]!.map((x) => x)),
        childServiceCategory: json["child_service_category"] == null
            ? []
            : List<String>.from(json["child_service_category"]!.map((x) => x)),
        packageKeywords: json["package_keywords"] == null
            ? []
            : List<String>.from(json["package_keywords"]!.map((x) => x)),
        packageTags: json["package_tags"] == null
            ? []
            : List<String>.from(json["package_tags"]!.map((x) => x)),
        serviceLocation: json["service_location"],
        couponsAndDiscounts: json["coupons_and_discounts"] == null
            ? []
            : List<dynamic>.from(json["coupons_and_discounts"]!.map((x) => x)),
        selectedPackages: json["selected_packages"] == null
            ? []
            : List<SelectedPackage>.from(json["selected_packages"]!
                .map((x) => SelectedPackage.fromJson(x))),
        createdOn: json["created_on"] == null
            ? null
            : DateTime.parse(json["created_on"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "partner_uuid": partnerUuid,
        "bucket_uuid": bucketUuid,
        "bucket_name": bucketName,
        "bucket_cover_image": bucketCoverImage,
        "status": status,
        "parent_service_category": parentServiceCategory == null
            ? []
            : List<dynamic>.from(parentServiceCategory!.map((x) => x)),
        "child_service_category": childServiceCategory == null
            ? []
            : List<dynamic>.from(childServiceCategory!.map((x) => x)),
        "package_keywords": packageKeywords == null
            ? []
            : List<dynamic>.from(packageKeywords!.map((x) => x)),
        "package_tags": packageTags == null
            ? []
            : List<dynamic>.from(packageTags!.map((x) => x)),
        "service_location": serviceLocation,
        "coupons_and_discounts": couponsAndDiscounts == null
            ? []
            : List<dynamic>.from(couponsAndDiscounts!.map((x) => x)),
        "selected_packages": selectedPackages == null
            ? []
            : List<dynamic>.from(selectedPackages!.map((x) => x.toJson())),
        "created_on": createdOn?.toIso8601String(),
      };
}

class SelectedPackage {
  String? partnerUuid;
  String? packageUuid;
  String? packageName;

  SelectedPackage({
    this.partnerUuid,
    this.packageUuid,
    this.packageName,
  });

  factory SelectedPackage.fromJson(Map<String, dynamic> json) =>
      SelectedPackage(
        partnerUuid: json["partner_uuid"],
        packageUuid: json["package_uuid"],
        packageName: json["package_name"],
      );

  Map<String, dynamic> toJson() => {
        "partner_uuid": partnerUuid,
        "package_uuid": packageUuid,
        "package_name": packageName,
      };
}
