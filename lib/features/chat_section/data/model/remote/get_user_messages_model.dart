// To parse this JSON data, do
//
//     final getUserMessageModel = getUserMessageModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:flutter_consumer_app/features/chat_section/domain/entities/responce/get_user_messages_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'get_user_messages_model.freezed.dart';
part 'get_user_messages_model.g.dart';

GetUserMessageModel getUserMessageModelFromJson(String str) =>
    GetUserMessageModel.fromJson(json.decode(str));

String getUserMessageModelToJson(GetUserMessageModel data) =>
    json.encode(data.toJson());

@freezed
class GetUserMessageModel extends GetUserMessageEntity with _$GetUserMessageModel {
  const factory GetUserMessageModel({
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") DataModel? data,
    @JsonKey(name: "success_status") bool? successStatus,
  }) = _GetUserMessageModel;

  factory GetUserMessageModel.fromJson(Map<String, dynamic> json) =>
      _$GetUserMessageModelFromJson(json);
}

@freezed
class DataModel extends Data with _$DataModel {
  const factory DataModel({
    @JsonKey(name: "user_uuid") String? userUuid,
    @JsonKey(name: "clientMessages") List<ClientMessageModel>? clientMessages,
    @JsonKey(name: "sendOn") DateTime? sendOn,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
}

@freezed
class ClientMessageModel extends ClientMessage with _$ClientMessageModel {
  const factory ClientMessageModel({
    @JsonKey(name: "profileName") String? profileName,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "partner_uuid") String? partnerUuid,
    @JsonKey(name: "parentServiceOffered") List<String>? parentServiceOffered,
    @JsonKey(name: "profileImage") String? profileImage,
    @JsonKey(name: "chatMessage") List<ChatMessageModel>? chatMessage,
  }) = _ClientMessageModel;

  factory ClientMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ClientMessageModelFromJson(json);
}

@freezed
class ChatMessageModel extends ChatMessage with _$ChatMessageModel {
  const factory ChatMessageModel({
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "sender") String? sender,
    @JsonKey(name: "timestamp") DateTime? timestamp,
    @JsonKey(name: "status") String? status,
  }) = _ChatMessageModel;

  factory ChatMessageModel.fromJson(Map<String, dynamic> json) =>
      _$ChatMessageModelFromJson(json);
}
