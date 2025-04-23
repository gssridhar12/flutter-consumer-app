import 'dart:developer';

import 'package:either_dart/src/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/core/platform/network_info.dart';
import 'package:flutter_consumer_app/features/auth_section/data/datasource/remote/auth_api_remote_datasource.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/entities/request/login_request.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/entities/request/sign_up_request.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/entities/response/auth_entity.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  AuthRepositoryImpl(
      {required this.remoteDataSource, required this.networkInfo});

  @override
  Future<Either<Failure, AuthEntity>> loginWithApi(
      {required LogInRequest logInRequest}) async {
    if (await networkInfo.isConnected == true) {
      try {
        final authEnity =
            await remoteDataSource.loginWithApi(logInRequest: logInRequest);
        return Right(authEnity);
      } catch (e) {
        log(e.toString());
        if (e is ServerFailure) {
          return Left(e);
        } else {
          return const Left(ServerFailure(errorMessage: 'Login Failed'));
        }
      }
    } else {
      return Left(ConnectionFailure());
    }
  }

  @override
  Future<Either<Failure, AuthEntity>> signUpWithApi(
      {required SignUpRequest signUpRequest}) async {
    if (await networkInfo.isConnected == true) {
      try {
        final authEnity =
            await remoteDataSource.signUpWithApi(signUpRequest: signUpRequest);
        log(authEnity.message);
        return Right(authEnity);
      } catch (e) {
        log(e.toString());
        if (e is ServerFailure) {
          return Left(e);
        } else {
          return const Left(ServerFailure(errorMessage: 'SignUp Failed'));
        }
      }
    } else {
      return Left(ConnectionFailure());
    }
  }
}
