// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'package_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PackageDetailsModelImpl _$$PackageDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageDetailsModelImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      successStatus: json['success_status'] as bool?,
    );

Map<String, dynamic> _$$PackageDetailsModelImplToJson(
        _$PackageDetailsModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'success_status': instance.successStatus,
    };

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      packageDetails: json['packageDetails'] == null
          ? null
          : PackageDetailsModels.fromJson(
              json['packageDetails'] as Map<String, dynamic>),
      partnerName: json['partnerName'] as String?,
      packageReviews: (json['packageReviews'] as List<dynamic>?)
          ?.map((e) => PackageReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewAverages: json['reviewAverages'] == null
          ? null
          : ReviewAveragesModel.fromJson(
              json['reviewAverages'] as Map<String, dynamic>),
      partnerLocation: json['partnerLocation'] as List<dynamic>?,
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'packageDetails': instance.packageDetails,
      'partnerName': instance.partnerName,
      'packageReviews': instance.packageReviews,
      'reviewAverages': instance.reviewAverages,
      'partnerLocation': instance.partnerLocation,
    };

_$PackageDetailsModelsImpl _$$PackageDetailsModelsImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageDetailsModelsImpl(
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
      selectedBuckets: json['selected_buckets'] as List<dynamic>?,
      createdOn: json['created_on'] == null
          ? null
          : DateTime.parse(json['created_on'] as String),
    );

Map<String, dynamic> _$$PackageDetailsModelsImplToJson(
        _$PackageDetailsModelsImpl instance) =>
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
      'selected_buckets': instance.selectedBuckets,
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

_$PackageReviewModelImpl _$$PackageReviewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageReviewModelImpl(
      fullName: json['fullName'] as String?,
      profileImage: json['profileImage'] as String?,
      reviewDetails: json['reviewDetails'] == null
          ? null
          : ReviewDetailsModel.fromJson(
              json['reviewDetails'] as Map<String, dynamic>),
      patronLevel: json['patron_level'] as int?,
    );

Map<String, dynamic> _$$PackageReviewModelImplToJson(
        _$PackageReviewModelImpl instance) =>
    <String, dynamic>{
      'fullName': instance.fullName,
      'profileImage': instance.profileImage,
      'reviewDetails': instance.reviewDetails,
      'patron_level': instance.patronLevel,
    };

_$ReviewDetailsModelImpl _$$ReviewDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewDetailsModelImpl(
      id: json['id'] as String?,
      userUuid: json['user_uuid'] as String?,
      packageUuid: json['package_uuid'] as String?,
      reviewUuid: json['review_uuid'] as String?,
      communication: (json['communication'] as num?)?.toDouble(),
      serviceDescribed: (json['service_described'] as num?)?.toDouble(),
      recommended: (json['recommended'] as num?)?.toDouble(),
      source: json['source'] as String?,
      review: json['review'] as String?,
      media:
          (json['media'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdOn: json['created_on'] == null
          ? null
          : DateTime.parse(json['created_on'] as String),
    );

Map<String, dynamic> _$$ReviewDetailsModelImplToJson(
        _$ReviewDetailsModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_uuid': instance.userUuid,
      'package_uuid': instance.packageUuid,
      'review_uuid': instance.reviewUuid,
      'communication': instance.communication,
      'service_described': instance.serviceDescribed,
      'recommended': instance.recommended,
      'source': instance.source,
      'review': instance.review,
      'media': instance.media,
      'created_on': instance.createdOn?.toIso8601String(),
    };

_$ReviewAveragesModelImpl _$$ReviewAveragesModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewAveragesModelImpl(
      id: json['_id'] as String?,
      communication: (json['Communication'] as num?)?.toDouble(),
      serviceDescribed: (json['ServiceDescribed'] as num?)?.toDouble(),
      recommended: (json['Recommended'] as num?)?.toDouble(),
      reviewCount: json['reviewcount'] as int?,
      overallAverage: (json['overallAverage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ReviewAveragesModelImplToJson(
        _$ReviewAveragesModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'Communication': instance.communication,
      'ServiceDescribed': instance.serviceDescribed,
      'Recommended': instance.recommended,
      'reviewcount': instance.reviewCount,
      'overallAverage': instance.overallAverage,
    };
