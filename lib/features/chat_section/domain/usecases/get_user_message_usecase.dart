import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/responce/get_user_messages_entity.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/repositories/chat_repository.dart';

class GetUserMessageUseCase {
  final ChatRepository repository;

  GetUserMessageUseCase({required this.repository});

  Future<Either<Failure, GetUserMessageEntity>> execute(
          {required String userUuid}) async =>
      await repository.getUserMessages(userUuid: userUuid);
}
