import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_user_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/user_api_repository.dart';

class GetUserUsecase {
  final UserRepository repository;

  GetUserUsecase({required this.repository});

  Future<Either<Failure, GetUserEntity>> execute(String request) async =>
      await repository.getUserDetails(request);
}
