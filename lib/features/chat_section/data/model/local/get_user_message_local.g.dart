// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_message_local.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GetUserMessageLocalModelAdapter
    extends TypeAdapter<GetUserMessageLocalModel> {
  @override
  final int typeId = 0;

  @override
  GetUserMessageLocalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GetUserMessageLocalModel(
      code: fields[0] as String?,
      message: fields[1] as String?,
      data: fields[2] as DataModel?,
      successStatus: fields[3] as bool?,
    );
  }

  @override
  void write(BinaryWriter writer, GetUserMessageLocalModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.code)
      ..writeByte(1)
      ..write(obj.message)
      ..writeByte(2)
      ..write(obj.data)
      ..writeByte(3)
      ..write(obj.successStatus);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GetUserMessageLocalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DataModelAdapter extends TypeAdapter<DataModel> {
  @override
  final int typeId = 1;

  @override
  DataModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DataModel(
      userUuid: fields[0] as String?,
      clientMessages: (fields[1] as List?)?.cast<ClientMessageModel>(),
      sendOn: fields[2] as DateTime?,
    );
  }

  @override
  void write(BinaryWriter writer, DataModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.userUuid)
      ..writeByte(1)
      ..write(obj.clientMessages)
      ..writeByte(2)
      ..write(obj.sendOn);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DataModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ClientMessageModelAdapter extends TypeAdapter<ClientMessageModel> {
  @override
  final int typeId = 2;

  @override
  ClientMessageModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ClientMessageModel(
      profileName: fields[0] as String?,
      city: fields[1] as String?,
      partnerUuid: fields[2] as String?,
      parentServiceOffered: (fields[3] as List?)?.cast<String>(),
      profileImage: fields[4] as String?,
      chatMessage: (fields[5] as List?)?.cast<ChatMessageModel>(),
    );
  }

  @override
  void write(BinaryWriter writer, ClientMessageModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.profileName)
      ..writeByte(1)
      ..write(obj.city)
      ..writeByte(2)
      ..write(obj.partnerUuid)
      ..writeByte(3)
      ..write(obj.parentServiceOffered)
      ..writeByte(4)
      ..write(obj.profileImage)
      ..writeByte(5)
      ..write(obj.chatMessage);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ClientMessageModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ChatMessageModelAdapter extends TypeAdapter<ChatMessageModel> {
  @override
  final int typeId = 3;

  @override
  ChatMessageModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ChatMessageModel(
      message: fields[0] as String?,
      sender: fields[1] as String?,
      timestamp: fields[2] as DateTime?,
      status: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, ChatMessageModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.message)
      ..writeByte(1)
      ..write(obj.sender)
      ..writeByte(2)
      ..write(obj.timestamp)
      ..writeByte(3)
      ..write(obj.status);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ChatMessageModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
