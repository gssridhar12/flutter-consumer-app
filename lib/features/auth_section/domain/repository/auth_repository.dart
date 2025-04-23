import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/entities/request/login_request.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/entities/request/sign_up_request.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/entities/response/auth_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthEntity>> loginWithApi(
      {required LogInRequest logInRequest});
  Future<Either<Failure, AuthEntity>> signUpWithApi(
      {required SignUpRequest signUpRequest});
}
