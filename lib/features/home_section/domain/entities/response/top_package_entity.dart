class TopPartnerEntity {
    final String code;
    final String message;
    final Data data;
    final bool successStatus;

    TopPartnerEntity({
        required this.code,
        required this.message,
        required this.data,
        required this.successStatus,
    });

}

class Data {
    final int count;
    final List<ProfileElement> profiles;
    final int page;
    final int size;

    Data({
        required this.count,
        required this.profiles,
        required this.page,
        required this.size,
    });

}

class ProfileElement {
    final List<ProfileReview> profileReviews;
    final ProfileProfile profile;
    final int megmoGigsCount;

    ProfileElement({
        required this.profileReviews,
        required this.profile,
        required this.megmoGigsCount,
    });

}

class ProfileProfile {
    final String id;
    final String profileUuid;
    final String partnerUuid;
    final ProfileDetails profileDetails;
    final DateTime? createdOn;
    final Availability? availability;
    final List<PartnerLocation>? partnerLocation;
    final List<Faq>? faQs;
    final List<Portfolio>? portfolio;
    final List<MegmoGig>? megmoGigs;
    final List<Gallery>? gallery;

    ProfileProfile({
        required this.id,
        required this.profileUuid,
        required this.partnerUuid,
        required this.profileDetails,
        this.createdOn,
        this.availability,
        this.partnerLocation,
        this.faQs,
        this.portfolio,
        this.megmoGigs,
        this.gallery,
    });

}

class Availability {
    final List<WorkingTiming> workingTiming;
    final List<String>? offDays;

    Availability({
        required this.workingTiming,
        this.offDays,
    });

}

class WorkingTiming {
    final String day;
    final String from;
    final String to;
    final bool open;

    WorkingTiming({
        required this.day,
        required this.from,
        required this.to,
        required this.open,
    });

}

class Faq {
    final String question;
    final String answer;
    final List<String> tags;
    final List<String> assignedTo;

    Faq({
        required this.question,
        required this.answer,
        required this.tags,
        required this.assignedTo,
    });

}

class Gallery {
    final List<Media> media;
    final List<String> assignedTo;

    Gallery({
        required this.media,
        required this.assignedTo,
    });

}

class Media {
    final String? mediaType;
    final String description;

    Media({
        this.mediaType,
        required this.description,
    });

}

class MegmoGig {
    final String gigHeadline;
    final String gigDescription;
    final List<String> tags;
    final String gigCover;
    final List<String> skills;
    final String gigUrl;
    final List<Media> media;
    final List<String> otherMedia;

    MegmoGig({
        required this.gigHeadline,
        required this.gigDescription,
        required this.tags,
        required this.gigCover,
        required this.skills,
        required this.gigUrl,
        required this.media,
        required this.otherMedia,
    });

}

class PartnerLocation {
    final String? addressType;
    final String? addressLine1;
    final String? addressLine2;
    final String? city;
    final String? state;
    final String? country;
    final int? pinCode;
    final String? landmark;
    final String latitude;
    final String longitude;
    final String? status;

    PartnerLocation({
        this.addressType,
        this.addressLine1,
        this.addressLine2,
        this.city,
        this.state,
        this.country,
        this.pinCode,
        this.landmark,
        required this.latitude,
        required this.longitude,
        this.status,
    });

}

class Portfolio {
    final String projectHeadline;
    final DateTime projectCompletionDate;
    final String projectDescription;
    final List<String> tags;
    final String projectCover;
    final List<String> skills;
    final String projectUrl;
    final List<Media> media;
    final List<String> otherMedia;

    Portfolio({
        required this.projectHeadline,
        required this.projectCompletionDate,
        required this.projectDescription,
        required this.tags,
        required this.projectCover,
        required this.skills,
        required this.projectUrl,
        required this.media,
        required this.otherMedia,
    });

}

class ProfileDetails {
    final String profileImage;
    final String profileName;
    final String profileCover;
    final String profileCoverDescription;
    final List<String> parentServiceOffered;
    final String profileHeadline;
    final bool freshTalent;
    final bool partnerInDemand;
    final bool trendingPartner;
    final String partnerInformation;
    final List<String> languages;
    final String city;
    final String state;
    final String country;
    final String education;
    final String certification;
    final List<String> skills;
    final bool lockeProfile;
    final String currencyCode;
    final List<Media> media;
    final DateTime? createdOn;
    final int? unlockCost;
    final bool? megmoPreferredPartner;
    final DateTime? updatedOn;

    ProfileDetails({
        required this.profileImage,
        required this.profileName,
        required this.profileCover,
        required this.profileCoverDescription,
        required this.parentServiceOffered,
        required this.profileHeadline,
        required this.freshTalent,
        required this.partnerInDemand,
        required this.trendingPartner,
        required this.partnerInformation,
        required this.languages,
        required this.city,
        required this.state,
        required this.country,
        required this.education,
        required this.certification,
        required this.skills,
        required this.lockeProfile,
        required this.currencyCode,
        required this.media,
        this.createdOn,
        this.unlockCost,
        this.megmoPreferredPartner,
        this.updatedOn,
    });

}

class ProfileReview {
    final String id;
    final String userUuid;
    final String partnerUuid;
    final String reviewUuid;
    final double communication;
    final double serviceDescribed;
    final double recommended;
    final String source;
    final String review;
    final List<String> media;
    final DateTime createdOn;

    ProfileReview({
        required this.id,
        required this.userUuid,
        required this.partnerUuid,
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
