part of 'user_bloc.dart';

sealed class UserEvent extends Equatable {
  const UserEvent();

  @override
  List<Object> get props => [];
}

class UpdateUser extends UserEvent {
  final UpdateUserRequest request;
  const UpdateUser(this.request);

  @override
  List<Object> get props => [];
}

class GetUser extends UserEvent {
  const GetUser();

  @override
  List<Object> get props => [];
}

class AddPackageReview extends UserEvent {
  final AddPackageReviewRequest request;
  const AddPackageReview(this.request);

  @override
  List<Object> get props => [];
}
