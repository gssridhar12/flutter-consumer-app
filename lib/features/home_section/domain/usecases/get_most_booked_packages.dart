import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/package_enitity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/package_api_repositories.dart';

class GetMostBookedPackagesUseCase {
  final PackageRepository repository;

  GetMostBookedPackagesUseCase({required this.repository});

  Future<Either<Failure, PackageEntity>> execute() async =>
      await repository.getMostBookedPackages();
}
