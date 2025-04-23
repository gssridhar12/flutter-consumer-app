part of 'user_bloc.dart';

sealed class UserState extends Equatable {
  const UserState();

  @override
  List<Object> get props => [];
}

final class UserInitial extends UserState {}

class UpdateUserSuccess extends UserState {
  final UpdateUserEntity user;

  const UpdateUserSuccess({required this.user});
  @override
  List<Object> get props => [user];
}

class UpdateUserFailed extends UserState {
  @override
  List<Object> get props => [];
}

class UpdateUserLoading extends UserState {
  @override
  List<Object> get props => [];
}

class GetUserSuccess extends UserState {
  final GetUserEntity user;

  const GetUserSuccess({required this.user});
  @override
  List<Object> get props => [user];
}

class GetUserFailed extends UserState {
  @override
  List<Object> get props => [];
}

class GetUserLoading extends UserState {
  @override
  List<Object> get props => [];
}

class IsGuestUser extends UserState {
  @override
  List<Object> get props => [];
}

class AddPackageReviewSuccess extends UserState {
  final AddPackageReviewEntity review;

  const AddPackageReviewSuccess({required this.review});
  @override
  List<Object> get props => [review];
}

class AddPackageReviewFailed extends UserState {
  @override
  List<Object> get props => [];
}

class AddPackageReviewLoading extends UserState {
  @override
  List<Object> get props => [];
}
