import 'dart:developer';
import 'package:either_dart/src/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/chat_section/data/datasources/chat_local_datasources.dart';
import 'package:flutter_consumer_app/features/chat_section/data/datasources/chat_remote_datasources.dart';
import 'package:flutter_consumer_app/features/chat_section/data/model/local/get_user_message_local.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/request/sent_message_request.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/responce/get_message_entity.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/responce/get_user_messages_entity.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/responce/sent_message_entity.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/repositories/chat_repository.dart';

class ChatRepositoryImpl implements ChatRepository {
  final ChatRemoteDataSource remoteDataSource;
  final ChatLocalDataSource localDataSource;
  

  ChatRepositoryImpl(
      {required this.localDataSource, required this.remoteDataSource});

  @override
  Future<Either<Failure, GetMessageEntity>> getMessage(
      {required String userUuid}) {
    // TODO: implement getMessage
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, GetUserMessageEntity>> getUserMessages({
    required String userUuid,
  }) async {
    try {
      // Fetch data from remote data source
      final chats = await remoteDataSource.getUserMessages(userUuid: userUuid);

      // Convert the fetched data to the local model (this should be async)
      final localModel = await GetUserMessageLocalModel.fromEntity(chats);
      log('Chats encrypted');

      // Cache the local model
      await localDataSource.cacheUserMessages(localModel);
      log('No error in chat - saved to local db');

      // Log message and return the result
      log(chats.message.toString());
      return Right(chats);
    } catch (e) {
      log('Error occurred in chat - loading local db $e');

      try {
        // Load from local cache
        final localUserMessages = await localDataSource.getUserMessages();
        return Right(localUserMessages!);
      } catch (cacheError) {
        log('Error occurred while loading from local cache');
        return Left(CacheFailure(errorMessage: "$cacheError"));
      }
    }
  }


  @override
  Future<Either<Failure, SentMessageEntity>> sentMessage(
      {required SentMessageRequest sentMessageRequest,
      required String fcmToken}) async {
    try {
      final chat = await remoteDataSource.sentMessage(
          fcmToken: fcmToken, sentMessageRequest: sentMessageRequest);
      log(chat.message.toString());
      return Right(chat);
    } catch (e) {
      return Left(ServerFailure(errorMessage: 'Server Failed $e'));
    }
  }
}
