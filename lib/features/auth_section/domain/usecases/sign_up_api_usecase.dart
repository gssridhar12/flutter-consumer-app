import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/entities/request/sign_up_request.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/entities/response/auth_entity.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/repository/auth_repository.dart';

class SignUpApiUseCase {
  final AuthRepository authRepository;

  SignUpApiUseCase({required this.authRepository});

  Future<Either<Failure, AuthEntity>> execute(
      {required SignUpRequest signUpRequst}) async {
    return await authRepository.signUpWithApi(signUpRequest: signUpRequst);
  }
}
