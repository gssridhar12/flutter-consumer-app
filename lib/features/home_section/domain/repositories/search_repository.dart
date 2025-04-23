import 'package:either_dart/either.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_partner_search_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_package_search_entity.dart';

abstract class SearchRepository {
  Future<Either<Failure, GetPackageSearchEntity>> getPackagesWithPackageName(
      String keyword);
  Future<Either<Failure, GetPartnerSearchEntity>> getPartnerWithPartnerName(
      String keyword);
}
