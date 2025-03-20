// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_package_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartnerPackageModelImpl _$$PartnerPackageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PartnerPackageModelImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      successStatus: json['success_status'] as bool?,
    );

Map<String, dynamic> _$$PartnerPackageModelImplToJson(
        _$PartnerPackageModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'success_status': instance.successStatus,
    };

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      count: json['count'] as int?,
      page: json['page'] as int?,
      size: json['size'] as int?,
      packages: (json['packages'] as List<dynamic>?)
          ?.map((e) => PackageElementModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'page': instance.page,
      'size': instance.size,
      'packages': instance.packages,
    };

_$PackageElementModelImpl _$$PackageElementModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PackageElementModelImpl(
      package: json['package'] == null
          ? null
          : PackagePackageModel.fromJson(
              json['package'] as Map<String, dynamic>),
      reviewAverage: json['reviewAverage'] == null
          ? null
          : ReviewAverageModel.fromJson(
              json['reviewAverage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PackageElementModelImplToJson(
        _$PackageElementModelImpl instance) =>
    <String, dynamic>{
      'package': instance.package,
      'reviewAverage': instance.reviewAverage,
    };

_$PackagePackageModelImpl _$$PackagePackageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PackagePackageModelImpl(
      id: json['id'] as String?,
      partnerUuid: json['partner_uuid'] as String?,
      packageUuid: json['package_uuid'] as String?,
      packageName: json['package_name'] as String?,
      packageCoverImage: json['package_cover_image'] as String?,
      parentBucket: json['parent_bucket'] as String?,
      packageHeadline: json['package_headline'] as String?,
      packageDescription: json['package_description'] as String?,
      packageInclusions: (json['package_inclusions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      packageExclusions: (json['package_exclusions'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      packageMustKnows: (json['package_must_knows'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
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
      isActive: json['is_active'] as bool?,
      createdOn: json['created_on'] == null
          ? null
          : DateTime.parse(json['created_on'] as String),
      serviceType: (json['service_type'] as List<dynamic>?)
          ?.map((e) => ServiceTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      selectedBuckets: (json['selected_buckets'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$PackagePackageModelImplToJson(
        _$PackagePackageModelImpl instance) =>
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
      'is_active': instance.isActive,
      'created_on': instance.createdOn?.toIso8601String(),
      'service_type': instance.serviceType,
      'selected_buckets': instance.selectedBuckets,
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

_$ServiceTypeModelImpl _$$ServiceTypeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ServiceTypeModelImpl(
      doorStep: json['door_step'] as bool?,
      inPremise: json['in_premise'] as bool?,
    );

Map<String, dynamic> _$$ServiceTypeModelImplToJson(
        _$ServiceTypeModelImpl instance) =>
    <String, dynamic>{
      'door_step': instance.doorStep,
      'in_premise': instance.inPremise,
    };

_$ReviewAverageModelImpl _$$ReviewAverageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ReviewAverageModelImpl(
      id: json['_id'],
      communication: (json['Communication'] as num?)?.toDouble(),
      serviceDescribed: (json['ServiceDescribed'] as num?)?.toDouble(),
      recommended: (json['Recommended'] as num?)?.toDouble(),
      overallAverage: (json['overallAverage'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$ReviewAverageModelImplToJson(
        _$ReviewAverageModelImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'Communication': instance.communication,
      'ServiceDescribed': instance.serviceDescribed,
      'Recommended': instance.recommended,
      'overallAverage': instance.overallAverage,
    };
