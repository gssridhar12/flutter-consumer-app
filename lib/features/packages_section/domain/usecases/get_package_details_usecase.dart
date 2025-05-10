import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/entities/package_details_entitiy.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/repositories/package_details_repository.dart';

class GetPackageDetailsUseCase {
  final PackageDetailsRepository repository;

  GetPackageDetailsUseCase({required this.repository});

  Future<Either<Failure, PackageDetailsEntity>> execute({required String uuid}) async =>
      await repository.getPackageDetails(uuid: uuid);
}
