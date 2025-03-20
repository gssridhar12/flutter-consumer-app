part of 'auth_bloc.dart';

@immutable
sealed class AuthBlocEvent extends Equatable {}

class LoginToAccount extends AuthBlocEvent {
  final String emailOrPhoneNumber;
  final String password;

  LoginToAccount({required this.emailOrPhoneNumber, required this.password});

  @override
  List<Object> get props => [emailOrPhoneNumber, password];
}

class CreateAccountwithAuth extends AuthBlocEvent {
  final String emailOrPhoneNumber;
  final String fullName;
  final String password;

  CreateAccountwithAuth(
      {required this.fullName,
      required this.emailOrPhoneNumber,
      required this.password});

  @override
  List<Object> get props => [emailOrPhoneNumber, password,fullName];
}

class LoginWithGoogleAuth extends AuthBlocEvent {
  @override
  List<Object> get props => [];
}

class CheckLoginStatus extends AuthBlocEvent {
  @override
  List<Object> get props => [];
}
// class LoginToAccountWithGoogle extends AuthBlocEvent {
//   final String emailOrPhoneNumber;
//   final String fullName;
//   final String password;

//   LoginToAccountWithGoogle(
//       {required this.fullName,
//       required this.emailOrPhoneNumber,
//       required this.password});

//   @override
//   List<Object> get props => [emailOrPhoneNumber, password,fullName];
// }