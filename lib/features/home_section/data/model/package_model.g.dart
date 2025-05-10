// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageModelImpl _$$PackageModelImplFromJson(Map<String, dynamic> json) =>
    _$PackageModelImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      successStatus: json['success_status'] as bool?,
    );

Map<String, dynamic> _$$PackageModelImplToJson(_$PackageModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'success_status': instance.successStatus,
    };

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      size: (json['size'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
      page: (json['page'] as num?)?.toInt(),
      packages: (json['packages'] as List<dynamic>?)
          ?.map((e) => PackageElementModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'count': instance.count,
      'page': instance.page,
      'packages': instance.packages,
    };

_$PackageElementModelImpl _$$PackageElementModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageElementModelImpl(
      packageReviewAverage: (json['packageReviewAverage'] as num?)?.toDouble(),
      package: json['package'] == null
          ? null
          : PackagePackageModel.fromJson(
              json['package'] as Map<String, dynamic>),
      profileReviewAverage: (json['profileReviewAverage'] as num?)?.toDouble(),
      megmoGigsCount: (json['megmoGigsCount'] as num?)?.toInt(),
      packageBookingCount: (json['packageBookingCount'] as num?)?.toInt(),
      profileName: json['profileName'] as String?,
      profileImage: json['profileImage'] as String?,
    );

Map<String, dynamic> _$$PackageElementModelImplToJson(
        _$PackageElementModelImpl instance) =>
    <String, dynamic>{
      'packageReviewAverage': instance.packageReviewAverage,
      'package': instance.package,
      'profileReviewAverage': instance.profileReviewAverage,
      'megmoGigsCount': instance.megmoGigsCount,
      'packageBookingCount': instance.packageBookingCount,
      'profileName': instance.profileName,
      'profileImage': instance.profileImage,
    };

_$PackagePackageModelImpl _$$PackagePackageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PackagePackageModelImpl(
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
      serviceLocation: (json['service_location'] as List<dynamic>?)
          ?.map((e) => ServiceLocationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      status: json['status'] as String?,
      packageKeywords: (json['package_keywords'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      packageTags: (json['package_tags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      serviceTimingAvailability: json['service_timing_availability'] as String?,
      packageCost: (json['package_cost'] as num?)?.toInt(),
      transportationCost: (json['transportation_cost'] as num?)?.toDouble(),
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
    ?.map((e) => e != null ? (e as Map<String, dynamic>)['key'] as String? : null)
    .where((element) => element != null) // This filters out any null values
    .cast<String>() // Ensures the list contains only Strings
    .toList(),

      // selectedBuckets: (json['selected_buckets'] as List<dynamic>?)
      //     ?.map((e) => e as String)
      //     .toList(),
      createdOn: json['created_on'] == null
          ? null
          : DateTime.parse(json['created_on'] as String),
      extraAllowance: (json['extra_allowance'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$PackagePackageModelImplToJson(
        _$PackagePackageModelImpl instance) =>
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
      'extra_allowance': instance.extraAllowance,
    };

_$PackageGalleryModelImpl _$$PackageGalleryModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageGalleryModelImpl(
      mediatype: json['media_type'] as String?,
      description: json['description'] as String?,
      assignedTo: json['assigned_to'] as List<dynamic>?,
    );

Map<String, dynamic> _$$PackageGalleryModelImplToJson(
        _$PackageGalleryModelImpl instance) =>
    <String, dynamic>{
      'media_type': instance.mediatype,
      'description': instance.description,
      'assigned_to': instance.assignedTo,
    };

_$ServiceLocationModelImpl _$$ServiceLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceLocationModelImpl(
      addressType: json['address_type'] as String?,
      city: json['city'] as String?,
    );

Map<String, dynamic> _$$ServiceLocationModelImplToJson(
        _$ServiceLocationModelImpl instance) =>
    <String, dynamic>{
      'address_type': instance.addressType,
      'city': instance.city,
    };
