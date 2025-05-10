class GetPackageLikeEntity {
  final String? code;
  final String? message;
  final Data? data;
  final bool? successStatus;

  GetPackageLikeEntity({
    this.code,
    this.message,
    this.data,
    this.successStatus,
  });
}

class Data {
  final List<LikedPackage>? likedPackages;

  Data({
    this.likedPackages,
  });
}

class LikedPackage {
  final String? userUuid;
  final Package? package;
  final bool? isLiked;

  LikedPackage({
    this.userUuid,
    this.package,
    this.isLiked,
  });
}

class Package {
  final String? id;
  final String? partnerUuid;
  final String? packageUuid;
  final String? bucketUuid;
  final String? packageName;
  final String? packageCoverImage;
  final String? parentBucket;
  final String? packageHeadline;
  final String? packageDescription;
  final String? packageInclusions;
  final String? packageExclusions;
  final String? packageMustKnows;
  final String ? serviceLocation;
 // final List<ServiceLocation>? serviceLocation;
  final String? status;
  final List<String>? packageKeywords;
  final List<String>? packageTags;
  final String? serviceTimingAvailability;
  final int? packageCost;
  final double? transportationCost;
  final String? couponsAndDiscounts;
  final String? uploadPackageAgreement;
  final bool? mostBookedPackages;
  final bool? trendingPackages;
  final bool? bestSellerPackages;
  final bool? promotedPackages;
  final List<PackageGallery>? packageGallery;
  final List<String>? selectedBuckets;
  final DateTime? createdOn;

  Package({
    this.id,
    this.partnerUuid,
    this.packageUuid,
    this.bucketUuid,
    this.packageName,
    this.packageCoverImage,
    this.parentBucket,
    this.packageHeadline,
    this.packageDescription,
    this.packageInclusions,
    this.packageExclusions,
    this.packageMustKnows,
    this.serviceLocation,
    this.status,
    this.packageKeywords,
    this.packageTags,
    this.serviceTimingAvailability,
    this.packageCost,
    this.transportationCost,
    this.couponsAndDiscounts,
    this.uploadPackageAgreement,
    this.mostBookedPackages,
    this.trendingPackages,
    this.bestSellerPackages,
    this.promotedPackages,
    this.packageGallery,
    this.selectedBuckets,
    this.createdOn,
  });
}

class PackageGallery {
  final String? media;
  final String? description;
  final List<dynamic>? assignedTo;

  PackageGallery({
    this.media,
    this.description,
    this.assignedTo,
  });
}

class ServiceLocation{
  final String? addresstype;
  final String? city;
 

  ServiceLocation({
    this.addresstype,
    this.city,
   
  });
}


