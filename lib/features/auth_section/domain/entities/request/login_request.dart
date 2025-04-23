class LogInRequest {
  final String email;
  final String phoneNumber;
  final String password;

  LogInRequest(
      {required this.email, required this.phoneNumber, required this.password});
}
