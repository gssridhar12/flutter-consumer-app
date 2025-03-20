import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/package_enitity.dart';

abstract class PackageRepository {
  Future<Either<Failure, PackageEntity>> getMostBookedPackages();
}
