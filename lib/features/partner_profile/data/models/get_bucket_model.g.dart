// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_bucket_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetBucketModelImpl _$$GetBucketModelImplFromJson(Map<String, dynamic> json) =>
    _$GetBucketModelImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      successStatus: json['success_status'] as bool?,
    );

Map<String, dynamic> _$$GetBucketModelImplToJson(
        _$GetBucketModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'success_status': instance.successStatus,
    };

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      bucket: json['bucket'] == null
          ? null
          : BucketModel.fromJson(json['bucket'] as Map<String, dynamic>),
      packageReviewAvg: (json['packageReviewAvg'] as List<dynamic>?)
          ?.map(
              (e) => PackageReviewAvgModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'bucket': instance.bucket,
      'packageReviewAvg': instance.packageReviewAvg,
    };

_$BucketModelImpl _$$BucketModelImplFromJson(Map<String, dynamic> json) =>
    _$BucketModelImpl(
      id: json['id'] as String?,
      partnerUuid: json['partner_uuid'] as String?,
      bucketUuid: json['bucket_uuid'] as String?,
      bucketName: json['bucket_name'] as String?,
      bucketCoverImage: json['bucket_cover_image'] as String?,
      status: json['status'] as String?,
      parentServiceCategory: json['parent_service_category'] as List<dynamic>?,
      childServiceCategory: json['child_service_category'] as List<dynamic>?,
      packageKeywords: (json['package_keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      packageTags: (json['package_tags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      serviceLocation: json['service_location'] as String?,
      couponsAndDiscounts: json['coupons_and_discounts'] as List<dynamic>?,
      selectedPackages: (json['selected_packages'] as List<dynamic>?)
          ?.map((e) => SelectedPackageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdOn: json['created_on'] == null
          ? null
          : DateTime.parse(json['created_on'] as String),
    );

Map<String, dynamic> _$$BucketModelImplToJson(_$BucketModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partner_uuid': instance.partnerUuid,
      'bucket_uuid': instance.bucketUuid,
      'bucket_name': instance.bucketName,
      'bucket_cover_image': instance.bucketCoverImage,
      'status': instance.status,
      'parent_service_category': instance.parentServiceCategory,
      'child_service_category': instance.childServiceCategory,
      'package_keywords': instance.packageKeywords,
      'package_tags': instance.packageTags,
      'service_location': instance.serviceLocation,
      'coupons_and_discounts': instance.couponsAndDiscounts,
      'selected_packages': instance.selectedPackages,
      'created_on': instance.createdOn?.toIso8601String(),
    };

_$SelectedPackageModelImpl _$$SelectedPackageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SelectedPackageModelImpl(
      id: json['id'] as String?,
      partnerUuid: json['partner_uuid'] as String?,
      packageUuid: json['package_uuid'] as String?,
      packageName: json['package_name'] as String?,
      packageCoverImage: json['package_cover_image'] as String?,
      parentBucket: json['parent_bucket'] as String?,
      packageHeadline: json['package_headline'] as String?,
      packageDescription: json['package_description'] as String?,
      packageInclusions: json['package_inclusions'] as String?,
      packageExclusions: json['package_exclusions'] as String?,
      packageMustKnows: json['package_must_knows'] as String?,
      serviceLocation: json['service_location'] as String?,
      status: json['status'] as String?,
      packageKeywords: (json['package_keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      packageTags: (json['package_tags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      serviceTimingAvailability: json['service_timing_availability'] as String?,
      packageCost: json['package_cost'] as int?,
      transportationCost: (json['transportation_cost'] as num?)?.toDouble(),
      extraAllowance: (json['extra_allowance'] as num?)?.toDouble(),
      couponsAndDiscounts: json['coupons_and_discounts'] as String?,
      uploadPackageAgreement: json['upload_package_agreement'] as String?,
      mostBookedPackages: json['most_booked_packages'] as bool?,
      trendingPackages: json['trending_packages'] as bool?,
      bestSellerPackages: json['best_seller_packages'] as bool?,
      promotedPackages: json['promoted_packages'] as bool?,
      packageGallery: (json['packageGallery'] as List<dynamic>?)
          ?.map((e) => PackageGalleryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdOn: json['created_on'] == null
          ? null
          : DateTime.parse(json['created_on'] as String),
    );

Map<String, dynamic> _$$SelectedPackageModelImplToJson(
        _$SelectedPackageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partner_uuid': instance.partnerUuid,
      'package_uuid': instance.packageUuid,
      'package_name': instance.packageName,
      'package_cover_image': instance.packageCoverImage,
      'parent_bucket': instance.parentBucket,
      'package_headline': instance.packageHeadline,
      'package_description': instance.packageDescription,
      'package_inclusions': instance.packageInclusions,
      'package_exclusions': instance.packageExclusions,
      'package_must_knows': instance.packageMustKnows,
      'service_location': instance.serviceLocation,
      'status': instance.status,
      'package_keywords': instance.packageKeywords,
      'package_tags': instance.packageTags,
      'service_timing_availability': instance.serviceTimingAvailability,
      'package_cost': instance.packageCost,
      'transportation_cost': instance.transportationCost,
      'extra_allowance': instance.extraAllowance,
      'coupons_and_discounts': instance.couponsAndDiscounts,
      'upload_package_agreement': instance.uploadPackageAgreement,
      'most_booked_packages': instance.mostBookedPackages,
      'trending_packages': instance.trendingPackages,
      'best_seller_packages': instance.bestSellerPackages,
      'promoted_packages': instance.promotedPackages,
      'packageGallery': instance.packageGallery,
      'created_on': instance.createdOn?.toIso8601String(),
    };

_$PackageGalleryModelImpl _$$PackageGalleryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageGalleryModelImpl(
      media: json['media'] as String?,
      description: json['description'] as String?,
      assignedTo: json['assigned_to'] as List<dynamic>?,
    );

Map<String, dynamic> _$$PackageGalleryModelImplToJson(
        _$PackageGalleryModelImpl instance) =>
    <String, dynamic>{
      'media': instance.media,
      'description': instance.description,
      'assigned_to': instance.assignedTo,
    };

_$PackageReviewAvgModelImpl _$$PackageReviewAvgModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageReviewAvgModelImpl(
      packageReviewAverage: (json['packageReviewAverage'] as num?)?.toDouble(),
      reviewCount: json['reviewCount'] as int?,
      packageUuid: json['packageUuid'] as String?,
    );

Map<String, dynamic> _$$PackageReviewAvgModelImplToJson(
        _$PackageReviewAvgModelImpl instance) =>
    <String, dynamic>{
      'packageReviewAverage': instance.packageReviewAverage,
      'reviewCount': instance.reviewCount,
      'packageUuid': instance.packageUuid,
    };
