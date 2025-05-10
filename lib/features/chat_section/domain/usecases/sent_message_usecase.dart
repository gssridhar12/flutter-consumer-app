import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/request/sent_message_request.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/responce/sent_message_entity.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/repositories/chat_repository.dart';

class SentMessageUseCase {
  final ChatRepository repository;

  SentMessageUseCase({required this.repository});

  Future<Either<Failure, SentMessageEntity>> execute(
          {required SentMessageRequest addBookingRequest,required String fcmToken}) async =>
      await repository.sentMessage(sentMessageRequest: addBookingRequest,fcmToken: fcmToken);
}
