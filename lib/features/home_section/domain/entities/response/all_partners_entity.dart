class AllProfileEntity {
    final String code;
    final String message;
    final Data data;
    final bool successStatus;

    AllProfileEntity({
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
    final SubscriptionAgreement? subscriptionAgreement;
    final ProfileProfile profile;

    ProfileElement({
        required this.subscriptionAgreement,
        required this.profile,
    });

}

class ProfileProfile {
    final String id;
    final String profileUuid;
    final String partnerUuid;
    final ProfileDetails profileDetails;
    final List<PartnerLocation>? partnerLocation;
    final List<Portfolio>? portfolio;
    final List<MegmoGig>? megmoGigs;
    final List<Faq>? faQs;
    final DateTime? createdOn;
    final Availability? availability;
    final List<Gallery>? gallery;

    ProfileProfile({
        required this.id,
        required this.profileUuid,
        required this.partnerUuid,
        required this.profileDetails,
        this.partnerLocation,
        this.portfolio,
        this.megmoGigs,
        this.faQs,
        this.createdOn,
        this.availability,
        this.gallery,
    });

}

class Availability {
    final List<WorkingTiming> workingTiming;

    Availability({
        required this.workingTiming,
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
    final List<String> tags;
    final List<String> skills;
    final List<dynamic> media;
    final List<String> otherMedia;

    MegmoGig({
        required this.tags,
        required this.skills,
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
    final List<String> skills;
    final String projectUrl;
    final List<Media> media;
    final List<String> otherMedia;
    final String? projectCover;

    Portfolio({
        required this.projectHeadline,
        required this.projectCompletionDate,
        required this.projectDescription,
        required this.tags,
        required this.skills,
        required this.projectUrl,
        required this.media,
        required this.otherMedia,
        this.projectCover,
    });

}

class ProfileDetails {
    final String profileImage;
    final String profileName;
    final String profileCover;
    final String profileCoverDescription;
    final List<String> parentServiceOffered;
    final String profileHeadline;
    final bool? megmoPreferredPartner;
    final int? partnerLevel;
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
    final int? unlockCost;
    final List<Media> media;
    final DateTime? createdOn;
    final DateTime? updatedOn;

    ProfileDetails({
        required this.profileImage,
        required this.profileName,
        required this.profileCover,
        required this.profileCoverDescription,
        required this.parentServiceOffered,
        required this.profileHeadline,
        this.megmoPreferredPartner,
        this.partnerLevel,
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
        this.unlockCost,
        required this.media,
        this.createdOn,
        this.updatedOn,
    });

}

class SubscriptionAgreement {
    final String subscriptionTier;
    final double commissionPercentage;
    final String documentUrl;
    final DateTime validity;
    final bool isActive;
    final DateTime createdOn;

    SubscriptionAgreement({
        required this.subscriptionTier,
        required this.commissionPercentage,
        required this.documentUrl,
        required this.validity,
        required this.isActive,
        required this.createdOn,
    });

}
