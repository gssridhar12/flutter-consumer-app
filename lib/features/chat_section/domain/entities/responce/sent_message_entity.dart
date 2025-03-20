// To parse this JSON data, do
//
//     final sentMessageEntity = sentMessageEntityFromJson(jsonString);

import 'dart:convert';

SentMessageEntity sentMessageEntityFromJson(String str) => SentMessageEntity.fromJson(json.decode(str));

String sentMessageEntityToJson(SentMessageEntity data) => json.encode(data.toJson());

class SentMessageEntity {
    final String? code;
    final String? message;
    final List<Datum>? data;
    final bool? successStatus;

    SentMessageEntity({
        this.code,
        this.message,
        this.data,
        this.successStatus,
    });

    factory SentMessageEntity.fromJson(Map<String, dynamic> json) => SentMessageEntity(
        code: json["code"],
        message: json["message"],
        data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        successStatus: json["success_status"],
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data == null ? null : List<dynamic>.from(data!.map((x) => x.toJson())),
        "success_status": successStatus,
    };
}

class Datum {
    final String? userUuid;
    final List<ClientMessage>? clientMessages;
    final DateTime? sendOn;

    Datum({
        this.userUuid,
        this.clientMessages,
        this.sendOn,
    });

    factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        userUuid: json["user_uuid"],
        clientMessages: json["clientMessages"] == null ? null : List<ClientMessage>.from(json["clientMessages"].map((x) => ClientMessage.fromJson(x))),
        sendOn: json["sendOn"] == null ? null : DateTime.parse(json["sendOn"]),
    );

    Map<String, dynamic> toJson() => {
        "user_uuid": userUuid,
        "clientMessages": clientMessages == null ? null : List<dynamic>.from(clientMessages!.map((x) => x.toJson())),
        "sendOn": sendOn?.toIso8601String(),
    };
}

class ClientMessage {
    final String? partnerUuid;
    final String? chatStatus;
    final List<ChatMessage>? chatMessage;

    ClientMessage({
        this.partnerUuid,
        this.chatStatus,
        this.chatMessage,
    });

    factory ClientMessage.fromJson(Map<String, dynamic> json) => ClientMessage(
        partnerUuid: json["partner_uuid"],
        chatStatus: json["chat_status"],
        chatMessage: json["chatMessage"] == null ? null : List<ChatMessage>.from(json["chatMessage"].map((x) => ChatMessage.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "partner_uuid": partnerUuid,
        "chat_status": chatStatus,
        "chatMessage": chatMessage == null ? null : List<dynamic>.from(chatMessage!.map((x) => x.toJson())),
    };
}

class ChatMessage {
    final String? message;
    final String? sender;
    final DateTime? timestamp;
    final String? status;

    ChatMessage({
        this.message,
        this.sender,
        this.timestamp,
        this.status,
    });

    factory ChatMessage.fromJson(Map<String, dynamic> json) => ChatMessage(
        message: json["message"],
        sender: json["sender"],
        timestamp: json["timestamp"] == null ? null : DateTime.parse(json["timestamp"]),
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "sender": sender,
        "timestamp": timestamp?.toIso8601String(),
        "status": status,
    };
}
