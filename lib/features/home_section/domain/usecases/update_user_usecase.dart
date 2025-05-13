import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/update_user_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/update_user_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/user_api_repository.dart';

class UpdateUserUsecase {
  final UserRepository repository;

  UpdateUserUsecase({required this.repository});

  Future<Either<Failure, UpdateUserEntity>> execute(UpdateUserRequest request) async =>
      await repository.updateUserDetails(request);
}
