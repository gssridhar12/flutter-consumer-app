class GetUserMessageEntity {
    final String? code;
    final String? message;
    final Data? data;
    final bool? successStatus;

    GetUserMessageEntity({
        this.code,
        this.message,
        this.data,
        this.successStatus,
    });
}

class Data {
    final String? userUuid;
    final List<ClientMessage>? clientMessages;
    final DateTime? sendOn;

    Data({
        this.userUuid,
        this.clientMessages,
        this.sendOn,
    });
}

class ClientMessage {
    final String? profileName;
    final String? city;
    final String? partnerUuid;
    final List<String>? parentServiceOffered;
    final String? profileImage;
    final List<ChatMessage>? chatMessage;

    ClientMessage({
        this.profileName,
        this.city,
        this.partnerUuid,
        this.parentServiceOffered,
        this.profileImage,
        this.chatMessage,
    });
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
}
