// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partner_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PartnerReviewModelImpl _$$PartnerReviewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PartnerReviewModelImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      successStatus: json['success_status'] as bool?,
    );

Map<String, dynamic> _$$PartnerReviewModelImplToJson(
        _$PartnerReviewModelImpl instance) =>
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
      profileReviews: (json['profileReviews'] as List<dynamic>?)
          ?.map((e) => ProfileReviewModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'page': instance.page,
      'size': instance.size,
      'profileReviews': instance.profileReviews,
    };

_$ProfileReviewModelImpl _$$ProfileReviewModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileReviewModelImpl(
      fullName: json['fullName'] as String?,
      profileImage: json['profileImage'] as String?,
      reviewDetails: json['reviewDetails'] == null
          ? null
          : ReviewDetailsModel.fromJson(
              json['reviewDetails'] as Map<String, dynamic>),
      patronLevel: json['patron_level'] as int?,
    );

Map<String, dynamic> _$$ProfileReviewModelImplToJson(
        _$ProfileReviewModelImpl instance) =>
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
      partnerUuid: json['partner_uuid'] as String?,
      reviewUuid: json['review_uuid'] as String?,
      communication: json['communication'] as int?,
      serviceDescribed: json['service_described'] as int?,
      recommended: json['recommended'] as int?,
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
      'partner_uuid': instance.partnerUuid,
      'review_uuid': instance.reviewUuid,
      'communication': instance.communication,
      'service_described': instance.serviceDescribed,
      'recommended': instance.recommended,
      'source': instance.source,
      'review': instance.review,
      'media': instance.media,
      'created_on': instance.createdOn?.toIso8601String(),
    };
