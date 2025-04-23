import 'package:flutter_consumer_app/features/chat_section/data/model/local/get_user_message_local.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class ChatLocalDataSource {
  Future<GetUserMessageLocalModel?> getUserMessages();
  Future<void> cacheUserMessages(GetUserMessageLocalModel userMessages);
}

class ChatLocalDataSourceImpl implements ChatLocalDataSource {
  final Box<GetUserMessageLocalModel> box;

  ChatLocalDataSourceImpl({required this.box});

  @override
  Future<GetUserMessageLocalModel?> getUserMessages() async {
    final userMessages = box.get('userMessages');
    if (userMessages != null) {
      return userMessages;
    } else {
      throw CacheException(); // Custom exception for cache-related issues
    }
  }

  @override
  Future<void> cacheUserMessages(GetUserMessageLocalModel userMessages) async {
    await box.put('userMessages', userMessages);
  }
}

class CacheException implements Exception {
  final String message;

  CacheException([this.message = 'Cache Error']);

  @override
  String toString() => 'CacheException: $message';
}
