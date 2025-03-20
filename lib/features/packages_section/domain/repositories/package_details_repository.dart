import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/entities/package_details_entitiy.dart';

abstract class PackageDetailsRepository {
  Future<Either<Failure, PackageDetailsEntity>> getPackageDetails({required String uuid});
}
