import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/request/sent_message_request.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/responce/get_user_messages_entity.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/responce/sent_message_entity.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/usecases/get_user_message_usecase.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/usecases/sent_message_usecase.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  final GetUserMessageUseCase useCase;
  final SentMessageUseCase sentMessageUseCase;

  ChatBloc(this.useCase, this.sentMessageUseCase) : super(ChatInitial()) {
    on<GetUserChats>((event, emit) async {
      emit(UserChatLoading());
      var auth = await useCase.execute(userUuid: event.userUuid);
      auth.fold(
        (left) {
          if (left is ServerFailure) {
            emit(UserChatFailed(message: left.errorMessage));
          }
        },
        (right) {
          emit(UserChatLoaded(userMessageEntity: right));
        },
      );
    });
    on<SentMessage>((event, emit) async {
      emit(SentMessageLoading());
      var auth = await sentMessageUseCase.execute(
          addBookingRequest: event.request, fcmToken: event.fcmToken);
      auth.fold(
        (left) {
          emit(SentMessageFailed());
        },
        (right) {
          emit(SentMessageSuccess(userMessageEntity: right));
        },
      );
    });
  }
}
