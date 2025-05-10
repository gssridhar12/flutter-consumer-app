class PartnerReviewEntity {
    final String? code;
    final String? message;
    final Data? data;
    final bool? successStatus;

    PartnerReviewEntity({
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
    final List<ProfileReview>? profileReviews;

    Data({
        this.count,
        this.page,
        this.size,
        this.profileReviews,
    });

}

class ProfileReview {
    final String? fullName;
    final String? profileImage;
    final ReviewDetails? reviewDetails;
    final int? patronLevel;

    ProfileReview({
        this.fullName,
        this.profileImage,
        this.reviewDetails,
        this.patronLevel,
    });

}

class ReviewDetails {
    final String? id;
    final String? userUuid;
    final String? partnerUuid;
    final String? reviewUuid;
    final int? communication;
    final int? serviceDescribed;
    final int? recommended;
    final String? source;
    final String? review;
    final List<String>? media;
    final DateTime? createdOn;

    ReviewDetails({
        this.id,
        this.userUuid,
        this.partnerUuid,
        this.reviewUuid,
        this.communication,
        this.serviceDescribed,
        this.recommended,
        this.source,
        this.review,
        this.media,
        this.createdOn,
    });

}
