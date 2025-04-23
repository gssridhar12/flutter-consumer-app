class GetPackageSearchEntity {
  final String? code;
  final String? message;
  final Data? data;
  final bool? successStatus;

  GetPackageSearchEntity({
    this.code,
    this.message,
    this.data,
    this.successStatus,
  });
}

class Data {
  final int? count;
  final int? page;
  final int? size;
  final List<Package>? packages;

  Data({
    this.count,
    this.page,
    this.size,
    this.packages,
  });
}

class Package {
  final String? id;
  final String? partnerUuid;
  final String? packageUuid;
  final String? packageName;
  final String? packageCoverImage;
  final String? parentBucket;
  final String? packageHeadline;
  final String? packageDescription;
  final String? packageInclusions;
  final String? packageExclusions;
  final String? packageMustKnows;
  final String? serviceLocation;
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
  final DateTime? createdOn;
  final String? bucketUuid;
  final List<String>? selectedBuckets;
  final double? extraAllowance;

  Package({
    this.id,
    this.partnerUuid,
    this.packageUuid,
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
    this.createdOn,
    this.bucketUuid,
    this.selectedBuckets,
    this.extraAllowance,
  });
}

class PackageGallery {
  final String? media;
  final String? description;
  final List<String>? assignedTo;

  PackageGallery({
    this.media,
    this.description,
    this.assignedTo,
  });
}
