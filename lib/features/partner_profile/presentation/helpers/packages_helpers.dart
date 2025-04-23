import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_package_entity.dart';

List<PackagePackage> getBestSellerPackages(List<PackagePackage> packages) {
  return packages
      .where((product) => product.bestSellerPackages == true)
      .toList();
}

List<PackagePackage> getPromotedPackages(List<PackagePackage> packages) {
  return packages.where((product) => product.promotedPackages == true).toList();
}
