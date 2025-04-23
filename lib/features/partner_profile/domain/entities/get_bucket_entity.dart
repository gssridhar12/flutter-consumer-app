class GetBucketEntity {
  final String? code;
  final String? message;
  final Data? data;
  final bool? successStatus;

  GetBucketEntity({
    required this.code,
    required this.message,
    required this.data,
    required this.successStatus,
  });
}

class Data {
  final Bucket? bucket;
  final List<PackageReviewAvg>? packageReviewAvg;

  Data({
    required this.bucket,
    required this.packageReviewAvg,
  });
}

class Bucket {
  final String? id;
  final String? partnerUuid;
  final String? bucketUuid;
  final String? bucketName;
  final String? bucketCoverImage;
  final String? status;
  final List<dynamic>? parentServiceCategory;
  final List<dynamic>? childServiceCategory;
  final List<String>? packageKeywords;
  final List<String>? packageTags;
  final String? serviceLocation;
  final List<dynamic>? couponsAndDiscounts;
  final List<SelectedPackage>? selectedPackages;
  final DateTime? createdOn;

  Bucket({
    required this.id,
    required this.partnerUuid,
    required this.bucketUuid,
    required this.bucketName,
    required this.bucketCoverImage,
    required this.status,
    required this.parentServiceCategory,
    required this.childServiceCategory,
    required this.packageKeywords,
    required this.packageTags,
    required this.serviceLocation,
    required this.couponsAndDiscounts,
    required this.selectedPackages,
    required this.createdOn,
  });
}

class SelectedPackage {
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
  final double? extraAllowance;
  final String? couponsAndDiscounts;
  final String? uploadPackageAgreement;
  final bool? mostBookedPackages;
  final bool? trendingPackages;
  final bool? bestSellerPackages;
  final bool? promotedPackages;
  final List<PackageGallery>? packageGallery;
  final DateTime? createdOn;

  SelectedPackage({
    required this.id,
    required this.partnerUuid,
    required this.packageUuid,
    required this.packageName,
    required this.packageCoverImage,
    required this.parentBucket,
    required this.packageHeadline,
    required this.packageDescription,
    required this.packageInclusions,
    required this.packageExclusions,
    required this.packageMustKnows,
    required this.serviceLocation,
    required this.status,
    required this.packageKeywords,
    required this.packageTags,
    required this.serviceTimingAvailability,
    required this.packageCost,
    required this.transportationCost,
    required this.extraAllowance,
    required this.couponsAndDiscounts,
    required this.uploadPackageAgreement,
    required this.mostBookedPackages,
    required this.trendingPackages,
    required this.bestSellerPackages,
    required this.promotedPackages,
    required this.packageGallery,
    required this.createdOn,
  });
}

class PackageGallery {
  final String? media;
  final String? description;
  final List<dynamic>? assignedTo;

  PackageGallery({
    required this.media,
    required this.description,
    required this.assignedTo,
  });
}

class PackageReviewAvg {
  final double? packageReviewAverage;
  final int? reviewCount;
  final String? packageUuid;

  PackageReviewAvg({
    required this.packageReviewAverage,
    required this.reviewCount,
    required this.packageUuid,
  });
}
