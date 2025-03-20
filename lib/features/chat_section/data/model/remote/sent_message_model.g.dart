// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sent_message_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SentMessageModelImpl _$$SentMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SentMessageModelImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => DatumModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      successStatus: json['success_status'] as bool?,
    );

Map<String, dynamic> _$$SentMessageModelImplToJson(
        _$SentMessageModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'success_status': instance.successStatus,
    };

_$DatumModelImpl _$$DatumModelImplFromJson(Map<String, dynamic> json) =>
    _$DatumModelImpl(
      userUuid: json['user_uuid'] as String?,
      clientMessages: (json['clientMessages'] as List<dynamic>?)
          ?.map((e) => ClientMessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      sendOn: json['sendOn'] == null
          ? null
          : DateTime.parse(json['sendOn'] as String),
    );

Map<String, dynamic> _$$DatumModelImplToJson(_$DatumModelImpl instance) =>
    <String, dynamic>{
      'user_uuid': instance.userUuid,
      'clientMessages': instance.clientMessages,
      'sendOn': instance.sendOn?.toIso8601String(),
    };

_$ClientMessageModelImpl _$$ClientMessageModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ClientMessageModelImpl(
      partnerUuid: json['partner_uuid'] as String?,
      chatStatus: json['chat_status'] as String?,
      chatMessage: (json['chatMessage'] as List<dynamic>?)
          ?.map((e) => ChatMessageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ClientMessageModelImplToJson(
        _$ClientMessageModelImpl instance) =>
    <String, dynamic>{
      'partner_uuid': instance.partnerUuid,
      'chat_status': instance.chatStatus,
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
