// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_package_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddPackageReviewModelImpl _$$AddPackageReviewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddPackageReviewModelImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      successStatus: json['success_status'] as bool?,
    );

Map<String, dynamic> _$$AddPackageReviewModelImplToJson(
        _$AddPackageReviewModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'success_status': instance.successStatus,
    };

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
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

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
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
