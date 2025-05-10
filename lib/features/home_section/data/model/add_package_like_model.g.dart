// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_package_like_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddPackageLikeModelImpl _$$AddPackageLikeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddPackageLikeModelImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      successStatus: json['success_status'] as bool?,
    );

Map<String, dynamic> _$$AddPackageLikeModelImplToJson(
        _$AddPackageLikeModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'success_status': instance.successStatus,
    };

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      likedPackages: (json['likedPackages'] as List<dynamic>?)
          ?.map((e) => LikedPackageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'likedPackages': instance.likedPackages,
    };

_$LikedPackageModelImpl _$$LikedPackageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LikedPackageModelImpl(
      userUuid: json['user_uuid'] as String?,
      package: json['Package'] == null
          ? null
          : PackageModel.fromJson(json['Package'] as Map<String, dynamic>),
      isLiked: json['is_liked'] as bool?,
    );

Map<String, dynamic> _$$LikedPackageModelImplToJson(
        _$LikedPackageModelImpl instance) =>
    <String, dynamic>{
      'user_uuid': instance.userUuid,
      'Package': instance.package,
      'is_liked': instance.isLiked,
    };

_$PackageModelImpl _$$PackageModelImplFromJson(Map<String, dynamic> json) =>
    _$PackageModelImpl(
      id: json['id'] as String?,
      partnerUuid: json['partner_uuid'] as String?,
      packageUuid: json['package_uuid'] as String?,
      bucketUuid: json['bucket_uuid'] as String?,
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
      packageCost: (json['package_cost'] as num?)?.toInt(),
      transportationCost: (json['transportation_cost'] as num?)?.toInt(),
      couponsAndDiscounts: json['coupons_and_discounts'] as String?,
      uploadPackageAgreement: json['upload_package_agreement'] as String?,
      mostBookedPackages: json['most_booked_packages'] as bool?,
      trendingPackages: json['trending_packages'] as bool?,
      bestSellerPackages: json['best_seller_packages'] as bool?,
      promotedPackages: json['promoted_packages'] as bool?,
      packageGallery: (json['packageGallery'] as List<dynamic>?)
          ?.map((e) => PackageGalleryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedBuckets: (json['selected_buckets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      createdOn: json['created_on'] == null
          ? null
          : DateTime.parse(json['created_on'] as String),
    );

Map<String, dynamic> _$$PackageModelImplToJson(_$PackageModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'partner_uuid': instance.partnerUuid,
      'package_uuid': instance.packageUuid,
      'bucket_uuid': instance.bucketUuid,
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
      'coupons_and_discounts': instance.couponsAndDiscounts,
      'upload_package_agreement': instance.uploadPackageAgreement,
      'most_booked_packages': instance.mostBookedPackages,
      'trending_packages': instance.trendingPackages,
      'best_seller_packages': instance.bestSellerPackages,
      'promoted_packages': instance.promotedPackages,
      'packageGallery': instance.packageGallery,
      'selected_buckets': instance.selectedBuckets,
      'created_on': instance.createdOn?.toIso8601String(),
    };

_$PackageGalleryModelImpl _$$PackageGalleryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageGalleryModelImpl(
      media: json['media'] as String?,
      description: json['description'] as String?,
      assignedTo: (json['assigned_to'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$PackageGalleryModelImplToJson(
        _$PackageGalleryModelImpl instance) =>
    <String, dynamic>{
      'media': instance.media,
      'description': instance.description,
      'assigned_to': instance.assignedTo,
    };
