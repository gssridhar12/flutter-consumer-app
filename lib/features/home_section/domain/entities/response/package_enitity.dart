class PackageEntity {
    final String? code;
    final String? message;
    final Data? data;
    final bool? successStatus;

    PackageEntity({
        this.code,
        this.message,
        this.data,
        this.successStatus,
    });
}

class Data {
    final int? size;
    final int? count;
    final int? page;
    final List<PackageElement>? packages;

    Data({
        this.size,
        this.count,
        this.page,
        this.packages,
    });
}

class PackageElement {
    final double? packageReviewAverage;
    final PackagePackage? package;
    final double? profileReviewAverage;
    final int? megmoGigsCount;
    final int? packageBookingCount;
    final String? profileName;
    final String? profileImage;

    PackageElement({
        this.packageReviewAverage,
        this.package,
        this.profileReviewAverage,
        this.megmoGigsCount,
        this.packageBookingCount,
        this.profileName,
        this.profileImage,
    });
}

class PackagePackage {
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
    final List<ServiceLocation> ?serviceLocation;
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
    final double? extraAllowance;

    PackagePackage({
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
        this.extraAllowance,
    });
}

class PackageGallery {
    final String? mediatype;
    final String? description;
    final List<dynamic>? assignedTo;

    PackageGallery({
        this.mediatype,
        this.description,
        this.assignedTo,
    });
}

class ServiceLocation {
    final String? addressType;
    final String? city;
   

   ServiceLocation({
        this.addressType,
        this.city,
       
    });
}