class PackageDetailsEntity {
  final String? code;
  final String? message;
  final Data? data;
  final bool? successStatus;

  PackageDetailsEntity({
    required this.code,
    required this.message,
    required this.data,
    required this.successStatus,
  });
}

class Data {
  final PackageDetails? packageDetails;
  final String? partnerName;
  final List<PackageReview>? packageReviews;
  final ReviewAverages? reviewAverages;
  final String ?profileImage;
  final int ? bookingCount;
  final List<dynamic>? partnerLocation;

  Data({
    required this.packageDetails,
    required this.partnerName,
    required this.packageReviews,
    required this.reviewAverages,
     required this.profileImage,
      required this.bookingCount,
    required this.partnerLocation,
  });
}

class PackageDetails {
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
  final List<ServiceLocation>? serviceLocation;
  final String? status;
  final List<String>? packageKeywords;
  final List<String>? packageTags;
  final String? serviceTimingAvailability;
   final String? serviceSlotDuration;
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
  final List<dynamic>? selectedBuckets;
  final DateTime? createdOn;

  PackageDetails({
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
     required this.serviceSlotDuration,
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
    required this.selectedBuckets,
    required this.createdOn,
  });
}

class PackageGallery {
  final String? mediatype;
  final String? description;
  final List<dynamic>? assignedTo;

  PackageGallery({
    required this.mediatype,
    required this.description,
    required this.assignedTo,
  });
}

class PackageReview {
  final String? fullName;
  final String? profileImage;
  final ReviewDetails? reviewDetails;
  final int? patronLevel;

  PackageReview({
    required this.fullName,
    required this.profileImage,
    required this.reviewDetails,
    required this.patronLevel,
  });
}

class ReviewDetails {
  final String? id;
  final String? userUuid;
  final String? packageUuid;
  final String? reviewUuid;
  final double? communication;
  final double? serviceDescribed;
  final double? recommended;
  final String? source;
  final String? review;
  final List<String>? media;
  final DateTime? createdOn;

  ReviewDetails({
    required this.id,
    required this.userUuid,
    required this.packageUuid,
    required this.reviewUuid,
    required this.communication,
    required this.serviceDescribed,
    required this.recommended,
    required this.source,
    required this.review,
    required this.media,
    required this.createdOn,
  });
}

class ReviewAverages {
  final String? id;
  final double? communication;
  final double? serviceDescribed;
  final double? recommended;
  final int? reviewCount;
  final double? overallAverage;

  ReviewAverages({
    required this.id,
    required this.communication,
    required this.serviceDescribed,
    required this.recommended,
    required this.reviewCount,
    required this.overallAverage,
  });
}

class ServiceLocation {
  final String? addressType;
  final String? city;
  ServiceLocation({
    required this.addressType,
    required this.city,
  });
}
