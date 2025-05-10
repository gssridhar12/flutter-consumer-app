class FreshTalentEntity {
    final String? code;
    final String? message;
    final Data? data;
    final bool? successStatus;

    FreshTalentEntity({
        this.code,
        this.message,
        this.data,
        this.successStatus,
    });
}

class Data {
    final int? count;
    final List<ProfileElement>? profiles;
    final int? page;
    final int? size;

    Data({
        this.count,
        this.profiles,
        this.page,
        this.size,
    });
}

class ProfileElement {
    final List<ProfileReview>? profileReviews;
    final ProfileProfile? profile;
    final int? megmoGigsCount;

    ProfileElement({
        this.profileReviews,
        this.profile,
        this.megmoGigsCount,
    });
}

class ProfileProfile {
    final String? id;
    final String? profileUuid;
    final String? partnerUuid;
    final ProfileDetails? profileDetails;
    final List<Portfolio>? portfolio;
    final List<MegmoGig>? megmoGigs;
    final List<Faq>? faQs;
    final DateTime? createdOn;
    final Availability? availability;
    final List<PartnerLocation>? partnerLocation;
    final List<Gallery>? gallery;

    ProfileProfile({
        this.id,
        this.profileUuid,
        this.partnerUuid,
        this.profileDetails,
        this.portfolio,
        this.megmoGigs,
        this.faQs,
        this.createdOn,
        this.availability,
        this.partnerLocation,
        this.gallery,
    });
}

class Availability {
    final List<WorkingTiming>? workingTiming;
    final List<String>? offDays;

    Availability({
        this.workingTiming,
        this.offDays,
    });
}

class WorkingTiming {
    final String? day;
    final String? from;
    final String? to;
    final bool? open;

    WorkingTiming({
        this.day,
        this.from,
        this.to,
        this.open,
    });
}

class Faq {
    final String? question;
    final String? answer;
    final List<String>? tags;
    final List<String>? assignedTo;
    final bool? isActive;

    Faq({
        this.question,
        this.answer,
        this.tags,
        this.assignedTo,
        this.isActive,
    });
}

class Gallery {
    final List<Media>? media;
    final List<String>? assignedTo;
    final bool? isActive;

    Gallery({
        this.media,
        this.assignedTo,
        this.isActive,
    });
}

class Media {
    final String? mediaType;
    final String? description;

    Media({
        this.mediaType,
        this.description,
    });
}

class MegmoGig {
    final List<String>? tags;
    final List<String>? skills;
    final List<Media>? media;
    final List<String>? otherMedia;
    final String? gigHeadline;
    final String? gigDescription;
    final String? gigCover;
    final String? gigUrl;

    MegmoGig({
        this.tags,
        this.skills,
        this.media,
        this.otherMedia,
        this.gigHeadline,
        this.gigDescription,
        this.gigCover,
        this.gigUrl,
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
    final String? latitude;
    final String? longitude;
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
        this.latitude,
        this.longitude,
        this.status,
    });
}

class Portfolio {
    final String? projectHeadline;
    final DateTime? projectCompletionDate;
    final String? projectDescription;
    final List<String>? tags;
    final List<String>? skills;
    final String? projectUrl;
    final List<Media>? media;
    final List<String>? otherMedia;
    final String? projectCover;

    Portfolio({
        this.projectHeadline,
        this.projectCompletionDate,
        this.projectDescription,
        this.tags,
        this.skills,
        this.projectUrl,
        this.media,
        this.otherMedia,
        this.projectCover,
    });
}

class ProfileDetails {
    final String? profileImage;
    final String? profileName;
    final String? profileCover;
    final String? profileCoverDescription;
    final List<String>? parentServiceOffered;
    final String? profileHeadline;
    final bool? freshTalent;
    final bool? partnerInDemand;
    final bool? trendingPartner;
    final String? partnerInformation;
    final List<String>? languages;
    final String? city;
    final String? state;
    final String? country;
    final String? education;
    final String? certification;
    final List<String>? skills;
    final bool? lockeProfile;
    final String? currencyCode;
    final List<Media>? media;
    final DateTime? createdOn;
    final int? unlockCost;
    final bool? megmoPreferredPartner;

    ProfileDetails({
        this.profileImage,
        this.profileName,
        this.profileCover,
        this.profileCoverDescription,
        this.parentServiceOffered,
        this.profileHeadline,
        this.freshTalent,
        this.partnerInDemand,
        this.trendingPartner,
        this.partnerInformation,
        this.languages,
        this.city,
        this.state,
        this.country,
        this.education,
        this.certification,
        this.skills,
        this.lockeProfile,
        this.currencyCode,
        this.media,
        this.createdOn,
        this.unlockCost,
        this.megmoPreferredPartner,
    });
}

class ProfileReview {
    final String? id;
    final String? userUuid;
    final String? partnerUuid;
    final String? reviewUuid;
    final double? communication;
    final double? serviceDescribed;
    final double? recommended;
    final String? source;
    final String? review;
    final List<String>? media;
    final DateTime? createdOn;

    ProfileReview({
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