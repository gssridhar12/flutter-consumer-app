part of 'chat_bloc.dart';

sealed class ChatEvent extends Equatable {
  const ChatEvent();

  @override
  List<Object> get props => [];
}

class GetUserChats extends ChatEvent {
  final String userUuid;

  const GetUserChats({required this.userUuid});
}

class SentMessage extends ChatEvent {
  final SentMessageRequest request;
  final String fcmToken;

  const SentMessage(this.fcmToken, {required this.request});
}
