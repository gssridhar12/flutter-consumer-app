import 'package:flutter_consumer_app/core/encryption/encryptor.dart';
import 'package:hive/hive.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/responce/get_user_messages_entity.dart';

part 'get_user_message_local.g.dart';

@HiveType(typeId: 0)
class GetUserMessageLocalModel extends GetUserMessageEntity
    with HiveObjectMixin {
  @override
  @HiveField(0)
  final String? code;

  @override
  @HiveField(1)
  final String? message;

  @override
  @HiveField(2)
  final DataModel? data;

  @override
  @HiveField(3)
  final bool? successStatus;

  GetUserMessageLocalModel({
    this.code,
    this.message,
    this.data,
    this.successStatus,
  }) : super(
          code: code,
          message: message,
          data: data,
          successStatus: successStatus,
        );

  // Conversion from entity to local model
  static Future<GetUserMessageLocalModel> fromEntity(
      GetUserMessageEntity entity) async {
    final encryptor = Encryptor();
    final code =
        entity.code != null ? await encryptor.encryptData(entity.code!) : null;
    final message = entity.message != null
        ? await encryptor.encryptData(entity.message!)
        : null;
    final data =
        entity.data != null ? await DataModel.fromEntity(entity.data!) : null;
    final successStatus = entity.successStatus;

    return GetUserMessageLocalModel(
      code: code,
      message: message,
      data: data,
      successStatus: successStatus,
    );
  }

  // Conversion from local model to entity
  Future<GetUserMessageEntity> toEntity() async {
    final encryptor = Encryptor();
    final code =
        this.code != null ? await encryptor.decryptData(this.code!) : null;
    final message = this.message != null
        ? await encryptor.decryptData(this.message!)
        : null;
    final data = this.data != null ? await this.data!.toEntity() : null;
    final successStatus = this.successStatus;

    return GetUserMessageEntity(
      code: code,
      message: message,
      data: data,
      successStatus: successStatus,
    );
  }
}

@HiveType(typeId: 1)
class DataModel extends Data with HiveObjectMixin {
  @override
  @HiveField(0)
  final String? userUuid;

  @override
  @HiveField(1)
  final List<ClientMessageModel>? clientMessages;

  @override
  @HiveField(2)
  final DateTime? sendOn;

  DataModel({
    this.userUuid,
    this.clientMessages,
    this.sendOn,
  }) : super(
          userUuid: userUuid,
          clientMessages: clientMessages,
          sendOn: sendOn,
        );

  // Conversion from entity to local model
  static Future<DataModel> fromEntity(Data entity) async {
    final encryptor = Encryptor();
    final userUuid = entity.userUuid != null
        ? await encryptor.encryptData(entity.userUuid!)
        : null;
    final clientMessages = entity.clientMessages != null
        ? await _convertClientMessages(entity.clientMessages!, encryptor)
        : null;
    final sendOn = entity.sendOn;

    return DataModel(
      userUuid: userUuid,
      clientMessages: clientMessages,
      sendOn: sendOn,
    );
  }

  // Conversion from local model to entity
  Future<Data> toEntity() async {
    final encryptor = Encryptor();
    final userUuid = this.userUuid != null
        ? await encryptor.decryptData(this.userUuid!)
        : null;
    final clientMessages = this.clientMessages != null
        ? await _convertClientMessagesBack(this.clientMessages!, encryptor)
        : null;
    final sendOn = this.sendOn;

    return Data(
      userUuid: userUuid,
      clientMessages: clientMessages,
      sendOn: sendOn,
    );
  }

  // Helper method to handle client messages conversion
  static Future<List<ClientMessageModel>> _convertClientMessages(
      List<ClientMessage> clientMessages, Encryptor encryptor) async {
    final convertedMessages = <ClientMessageModel>[];
    for (final message in clientMessages) {
      final model = await ClientMessageModel.fromEntity(message, encryptor);
      convertedMessages.add(model);
    }
    return convertedMessages;
  }

  // Helper method to handle client messages conversion back
  static Future<List<ClientMessage>> _convertClientMessagesBack(
      List<ClientMessageModel> clientMessages, Encryptor encryptor) async {
    final convertedMessages = <ClientMessage>[];
    for (final model in clientMessages) {
      final entity = await model.toEntity(encryptor);
      convertedMessages.add(entity);
    }
    return convertedMessages;
  }
}

@HiveType(typeId: 2)
class ClientMessageModel extends ClientMessage with HiveObjectMixin {
  @override
  @HiveField(0)
  final String? profileName;

  @override
  @HiveField(1)
  final String? city;

  @override
  @HiveField(2)
  final String? partnerUuid;

  @override
  @HiveField(3)
  final List<String>? parentServiceOffered;

  @override
  @HiveField(4)
  final String? profileImage;

  @override
  @HiveField(5)
  final List<ChatMessageModel>? chatMessage;

  ClientMessageModel({
    this.profileName,
    this.city,
    this.partnerUuid,
    this.parentServiceOffered,
    this.profileImage,
    this.chatMessage,
  }) : super(
          profileName: profileName,
          city: city,
          partnerUuid: partnerUuid,
          parentServiceOffered: parentServiceOffered,
          profileImage: profileImage,
          chatMessage: chatMessage,
        );

  // Conversion from entity to local model
  static Future<ClientMessageModel> fromEntity(
      ClientMessage entity, Encryptor encryptor) async {
    final profileName = entity.profileName != null
        ? await encryptor.encryptData(entity.profileName!)
        : null;
    final city =
        entity.city != null ? await encryptor.encryptData(entity.city!) : null;
    final partnerUuid = entity.partnerUuid != null
        ? await encryptor.encryptData(entity.partnerUuid!)
        : null;
    final parentServiceOffered = entity.parentServiceOffered != null
        ? await _convertParentServiceOffered(
            entity.parentServiceOffered!, encryptor)
        : null;
    final profileImage = entity.profileImage != null
        ? await encryptor.encryptData(entity.profileImage!)
        : null;
    final chatMessage = entity.chatMessage != null
        ? await _convertChatMessages(entity.chatMessage!, encryptor)
        : null;

    return ClientMessageModel(
      profileName: profileName,
      city: city,
      partnerUuid: partnerUuid,
      parentServiceOffered: parentServiceOffered,
      profileImage: profileImage,
      chatMessage: chatMessage,
    );
  }

  // Conversion from local model to entity
  Future<ClientMessage> toEntity(Encryptor encryptor) async {
    final profileName = this.profileName != null
        ? await encryptor.decryptData(this.profileName!)
        : null;
    final city =
        this.city != null ? await encryptor.decryptData(this.city!) : null;
    final partnerUuid = this.partnerUuid != null
        ? await encryptor.decryptData(this.partnerUuid!)
        : null;
    final parentServiceOffered = this.parentServiceOffered != null
        ? await _convertParentServiceOfferedBack(
            this.parentServiceOffered!, encryptor)
        : null;
    final profileImage = this.profileImage != null
        ? await encryptor.decryptData(this.profileImage!)
        : null;
    final chatMessage = this.chatMessage != null
        ? await _convertChatMessagesBack(this.chatMessage!, encryptor)
        : null;

    return ClientMessage(
      profileName: profileName,
      city: city,
      partnerUuid: partnerUuid,
      parentServiceOffered: parentServiceOffered,
      profileImage: profileImage,
      chatMessage: chatMessage,
    );
  }

  // Helper method to handle parent service offered conversion
  static Future<List<String>> _convertParentServiceOffered(
      List<String> parentServiceOffered, Encryptor encryptor) async {
    final convertedList = <String>[];
    for (final item in parentServiceOffered) {
      final encryptedItem = await encryptor.encryptData(item);
      convertedList.add(encryptedItem);
    }
    return convertedList;
  }

  // Helper method to handle parent service offered conversion back
  static Future<List<String>> _convertParentServiceOfferedBack(
      List<String> parentServiceOffered, Encryptor encryptor) async {
    final convertedList = <String>[];
    for (final item in parentServiceOffered) {
      final decryptedItem = await encryptor.decryptData(item);
      convertedList.add(decryptedItem);
    }
    return convertedList;
  }

  // Helper method to handle chat messages conversion
  static Future<List<ChatMessageModel>> _convertChatMessages(
      List<ChatMessage> chatMessages, Encryptor encryptor) async {
    final convertedMessages = <ChatMessageModel>[];
    for (final message in chatMessages) {
      final model = await ChatMessageModel.fromEntity(message, encryptor);
      convertedMessages.add(model);
    }
    return convertedMessages;
  }

  // Helper method to handle chat messages conversion back
  static Future<List<ChatMessage>> _convertChatMessagesBack(
      List<ChatMessageModel> chatMessages, Encryptor encryptor) async {
    final convertedMessages = <ChatMessage>[];
    for (final model in chatMessages) {
      final entity = await model.toEntity(encryptor);
      convertedMessages.add(entity);
    }
    return convertedMessages;
  }
}

@HiveType(typeId: 3)
class ChatMessageModel extends ChatMessage with HiveObjectMixin {
  @override
  @HiveField(0)
  final String? message;

  @override
  @HiveField(1)
  final String? sender;

  @override
  @HiveField(2)
  final DateTime? timestamp;

  @override
  @HiveField(3)
  final String? status;

  ChatMessageModel({
    this.message,
    this.sender,
    this.timestamp,
    this.status,
  }) : super(
          message: message,
          sender: sender,
          timestamp: timestamp,
          status: status,
        );

  // Conversion from entity to local model
  static Future<ChatMessageModel> fromEntity(
      ChatMessage entity, Encryptor encryptor) async {
    final message = entity.message != null
        ? await encryptor.encryptData(entity.message!)
        : null;
    final sender = entity.sender != null
        ? await encryptor.encryptData(entity.sender!)
        : null;
    final status = entity.status != null
        ? await encryptor.encryptData(entity.status!)
        : null;
    final timestamp = entity.timestamp;

    return ChatMessageModel(
      message: message,
      sender: sender,
      timestamp: timestamp,
      status: status,
    );
  }

  // Conversion from local model to entity
  Future<ChatMessage> toEntity(Encryptor encryptor) async {
    final message = this.message != null
        ? await encryptor.decryptData(this.message!)
        : null;
    final sender =
        this.sender != null ? await encryptor.decryptData(this.sender!) : null;
    final status =
        this.status != null ? await encryptor.decryptData(this.status!) : null;
    final timestamp = this.timestamp;

    return ChatMessage(
      message: message,
      sender: sender,
      timestamp: timestamp,
      status: status,
    );
  }
}
