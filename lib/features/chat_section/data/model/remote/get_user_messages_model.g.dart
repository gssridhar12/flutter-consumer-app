// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_messages_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetUserMessageModelImpl _$$GetUserMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetUserMessageModelImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      successStatus: json['success_status'] as bool?,
    );

Map<String, dynamic> _$$GetUserMessageModelImplToJson(
        _$GetUserMessageModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'success_status': instance.successStatus,
    };

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      userUuid: json['user_uuid'] as String?,
      clientMessages: (json['clientMessages'] as List<dynamic>?)
          ?.map((e) => ClientMessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      sendOn: json['sendOn'] == null
          ? null
          : DateTime.parse(json['sendOn'] as String),
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'user_uuid': instance.userUuid,
      'clientMessages': instance.clientMessages,
      'sendOn': instance.sendOn?.toIso8601String(),
    };

_$ClientMessageModelImpl _$$ClientMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientMessageModelImpl(
      profileName: json['profileName'] as String?,
      city: json['city'] as String?,
      partnerUuid: json['partner_uuid'] as String?,
      parentServiceOffered: (json['parentServiceOffered'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      profileImage: json['profileImage'] as String?,
      chatMessage: (json['chatMessage'] as List<dynamic>?)
          ?.map((e) => ChatMessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClientMessageModelImplToJson(
        _$ClientMessageModelImpl instance) =>
    <String, dynamic>{
      'profileName': instance.profileName,
      'city': instance.city,
      'partner_uuid': instance.partnerUuid,
      'parentServiceOffered': instance.parentServiceOffered,
      'profileImage': instance.profileImage,
      'chatMessage': instance.chatMessage,
    };

_$ChatMessageModelImpl _$$ChatMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChatMessageModelImpl(
      message: json['message'] as String?,
      sender: json['sender'] as String?,
      timestamp: json['timestamp'] == null
          ? null
          : DateTime.parse(json['timestamp'] as String),
      status: json['status'] as String?,
    );

Map<String, dynamic> _$$ChatMessageModelImplToJson(
        _$ChatMessageModelImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'sender': instance.sender,
      'timestamp': instance.timestamp?.toIso8601String(),
      'status': instance.status,
    };
