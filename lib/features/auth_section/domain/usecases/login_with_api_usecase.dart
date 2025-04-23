import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/entities/request/login_request.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/entities/response/auth_entity.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/repository/auth_repository.dart';

class LoginApiUseCase {
  final AuthRepository authRepository;

  LoginApiUseCase({required this.authRepository});

  Future<Either<Failure, AuthEntity>> execute(
      {required LogInRequest loginRequest}) async {
    return await authRepository.loginWithApi(logInRequest: loginRequest);
  }
}
