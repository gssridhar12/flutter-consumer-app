part of 'auth_bloc.dart';

@immutable
sealed class AuthBlocState extends Equatable {}

final class AuthBlocInitial extends AuthBlocState {
  AuthBlocInitial();

  @override
  List<Object> get props => [];
}

//log in state
class LoginAuthSuccess extends AuthBlocState {
  final AuthEntity authModel;
  LoginAuthSuccess({required this.authModel});

  @override
  List<Object> get props => [authModel];
}

class LoginAuthFailed extends AuthBlocState {
  final String message;

  LoginAuthFailed({required this.message});
  @override
  List<Object> get props => [];
}

class LoginAuthLoading extends AuthBlocState {
  @override
  List<Object> get props => [];
}

//sign in state
class SignUpAuthSuccess extends AuthBlocState {
  final AuthEntity authEntity;
  SignUpAuthSuccess({required this.authEntity});

  @override
  List<Object> get props => [authEntity];
}

class SignUpAuthFailed extends AuthBlocState {
  final String message;

  SignUpAuthFailed({required this.message});

  @override
  List<Object> get props => [];
}

class SignUpAuthLoading extends AuthBlocState {
  @override
  List<Object> get props => [];
}

class GoogleAuthLoading extends AuthBlocState {
  @override
  List<Object> get props => [];
}

class GoogleAuthFailed extends AuthBlocState {
  @override
  List<Object> get props => [];
}

class GoogleAuthSuccess extends AuthBlocState {
  final UserCredential userCredential;

  GoogleAuthSuccess({required this.userCredential});
  @override
  List<Object> get props => [userCredential];
}

//login status
class UserLogedIn extends AuthBlocState {
  UserLogedIn();

  @override
  List<Object> get props => [];
}

class UserNotLogedIn extends AuthBlocState {
  @override
  List<Object> get props => [];
}

class LoginStatusLoading extends AuthBlocState {
  @override
  List<Object> get props => [];
}

class UnknownError extends AuthBlocState {
  @override
  List<Object> get props => [];
}

class LoginWithGoogleAuthLoading extends AuthBlocState {
  @override
  List<Object> get props => [];
}

class LoginWithGoogleAuthFailed extends AuthBlocState {
  @override
  List<Object> get props => [];
}

class LoginWithGoogleAuthSuccess extends AuthBlocState {
  final AuthEntity authEntity;

  LoginWithGoogleAuthSuccess({required this.authEntity});
  @override
  List<Object> get props => [authEntity];
}
