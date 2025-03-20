// To parse this JSON data, do
//
//     final sentMessageRequest = sentMessageRequestFromJson(jsonString);

import 'dart:convert';

SentMessageRequest sentMessageRequestFromJson(String str) => SentMessageRequest.fromJson(json.decode(str));

String sentMessageRequestToJson(SentMessageRequest data) => json.encode(data.toJson());

class SentMessageRequest {
    final String userUuid;
    final List<ClientMessagesRequest> clientMessagesRequest;

    SentMessageRequest({
        required this.userUuid,
        required this.clientMessagesRequest,
    });

    factory SentMessageRequest.fromJson(Map<String, dynamic> json) => SentMessageRequest(
        userUuid: json["user_uuid"],
        clientMessagesRequest: List<ClientMessagesRequest>.from(json["clientMessages"].map((x) => ClientMessagesRequest.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "user_uuid": userUuid,
        "clientMessages": List<dynamic>.from(clientMessagesRequest.map((x) => x.toJson())),
    };
}

class ClientMessagesRequest {
    final String partnerUuid;
    final String chatStatus;
    final List<ChatMessageRequest> chatMessageRequest;

    ClientMessagesRequest({
        required this.partnerUuid,
        required this.chatStatus,
        required this.chatMessageRequest,
    });

    factory ClientMessagesRequest.fromJson(Map<String, dynamic> json) => ClientMessagesRequest(
        partnerUuid: json["partner_uuid"],
        chatStatus: json["chat_status"],
        chatMessageRequest: List<ChatMessageRequest>.from(json["chatMessage"].map((x) => ChatMessageRequest.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "partner_uuid": partnerUuid,
        "chat_status": chatStatus,
        "chatMessage": List<dynamic>.from(chatMessageRequest.map((x) => x.toJson())),
    };
}

class ChatMessageRequest {
    final String message;
    final String sender;
    final DateTime timestamp;
    final String status;

    ChatMessageRequest({
        required this.message,
        required this.sender,
        required this.timestamp,
        required this.status,
    });

    factory ChatMessageRequest.fromJson(Map<String, dynamic> json) => ChatMessageRequest(
        message: json["message"],
        sender: json["sender"],
        timestamp: DateTime.parse(json["timestamp"]),
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "sender": sender,
        "timestamp": timestamp.toIso8601String(),
        "status": status,
    };
}
