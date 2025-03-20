// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_partner_like_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AddPartnerLikeModelImpl _$$AddPartnerLikeModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AddPartnerLikeModelImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      successStatus: json['success_status'] as bool?,
    );

Map<String, dynamic> _$$AddPartnerLikeModelImplToJson(
        _$AddPartnerLikeModelImpl instance) =>
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
      profileUuid: json['profile_uuid'] as String?,
      isLiked: json['is_liked'] as bool?,
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_uuid': instance.userUuid,
      'profile_uuid': instance.profileUuid,
      'is_liked': instance.isLiked,
    };
