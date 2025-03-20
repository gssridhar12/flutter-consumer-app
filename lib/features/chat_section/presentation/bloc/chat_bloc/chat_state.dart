part of 'chat_bloc.dart';

sealed class ChatState extends Equatable {
  const ChatState();

  @override
  List<Object> get props => [];
}

final class ChatInitial extends ChatState {}

class UserChatLoaded extends ChatState {
  final GetUserMessageEntity userMessageEntity;

  const UserChatLoaded({required this.userMessageEntity});
}

class UserChatLoading extends ChatState {}

class UserChatFailed extends ChatState {
  final String message;

  const UserChatFailed({required this.message});
  @override
  List<Object> get props => [message];
}

class SentMessageSuccess extends ChatState {
  final SentMessageEntity userMessageEntity;

  const SentMessageSuccess({required this.userMessageEntity});
}

class SentMessageLoading extends ChatState {}

class SentMessageFailed extends ChatState {}
