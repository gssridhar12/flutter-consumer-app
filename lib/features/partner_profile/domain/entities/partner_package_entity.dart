class PartnerPackageEntity {
    final String? code;
    final String? message;
    final Data? data;
    final bool? successStatus;

    PartnerPackageEntity({
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
    final List<PackageElement>? packages;

    Data({
        this.count,
        this.page,
        this.size,
        this.packages,
    });

}

class PackageElement {
    final PackagePackage? package;
    final ReviewAverage? reviewAverage;

    PackageElement({
        this.package,
        this.reviewAverage,
    });

}

class PackagePackage {
    final String? id;
    final String? partnerUuid;
    final String? packageUuid;
    final String? packageName;
    final String? packageCoverImage;
    final String? parentBucket;
    final String? packageHeadline;
    final String? packageDescription;
    final List<String>? packageInclusions;
    final List<String>? packageExclusions;
    final List<String>? packageMustKnows;
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
    final bool? isActive;
    final DateTime? createdOn;
    final List<ServiceType>? serviceType;
    final List<String>? selectedBuckets;

    PackagePackage({
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
        this.extraAllowance,
        this.couponsAndDiscounts,
        this.uploadPackageAgreement,
        this.mostBookedPackages,
        this.trendingPackages,
        this.bestSellerPackages,
        this.promotedPackages,
        this.packageGallery,
        this.isActive,
        this.createdOn,
        this.serviceType,
        this.selectedBuckets,
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

class ServiceType {
    final bool? doorStep;
    final bool? inPremise;

    ServiceType({
        this.doorStep,
        this.inPremise,
    });

}

class ReviewAverage {
    final dynamic id;
    final double? communication;
    final double? serviceDescribed;
    final double? recommended;
    final double? overallAverage;

    ReviewAverage({
        this.id,
        this.communication,
        this.serviceDescribed,
        this.recommended,
        this.overallAverage,
    });

}
