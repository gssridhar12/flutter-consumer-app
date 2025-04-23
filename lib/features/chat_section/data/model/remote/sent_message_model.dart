// To parse this JSON data, do
//
//     final sentMessageModel = sentMessageModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:flutter_consumer_app/features/chat_section/domain/entities/responce/sent_message_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sent_message_model.freezed.dart';
part 'sent_message_model.g.dart';

@freezed
class SentMessageModel extends SentMessageEntity with _$SentMessageModel {
  const factory SentMessageModel({
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") List<DatumModel>? data,
    @JsonKey(name: "success_status") bool? successStatus,
  }) = _SentMessageModel;

  factory SentMessageModel.fromJson(Map<String, dynamic> json) =>
      _$SentMessageModelFromJson(json);
}

@freezed
class DatumModel extends Datum with _$DatumModel {
  const factory DatumModel({
    @JsonKey(name: "user_uuid") String? userUuid,
    @JsonKey(name: "clientMessages") List<ClientMessageModel>? clientMessages,
    @JsonKey(name: "sendOn") DateTime? sendOn,
  }) = _DatumModel;

  factory DatumModel.fromJson(Map<String, dynamic> json) =>
      _$DatumModelFromJson(json);
}

@freezed
class ClientMessageModel extends ClientMessage with _$ClientMessageModel {
  const factory ClientMessageModel({
    @JsonKey(name: "partner_uuid") String? partnerUuid,
    @JsonKey(name: "chat_status") String? chatStatus,
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
