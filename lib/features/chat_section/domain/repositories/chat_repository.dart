import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/request/sent_message_request.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/responce/get_message_entity.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/responce/get_user_messages_entity.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/responce/sent_message_entity.dart';

abstract class ChatRepository {
  Future<Either<Failure, SentMessageEntity>> sentMessage(
      {required SentMessageRequest sentMessageRequest,
      required String fcmToken});
  Future<Either<Failure, GetUserMessageEntity>> getUserMessages(
      {required String userUuid});
  Future<Either<Failure, GetMessageEntity>> getMessage(
      {required String userUuid});
}
