class GetPartnerSearchEntity {
    final String? code;
    final String? message;
    final Data? data;
    final bool? successStatus;

    GetPartnerSearchEntity({
        this.code,
        this.message,
        this.data,
        this.successStatus,
    });

}

class Data {
    final int? count;
    final List<Profile>? profiles;
    final int? page;
    final int? size;

    Data({
        this.count,
        this.profiles,
        this.page,
        this.size,
    });

}

class Profile {
    final String? id;
    final String? profileUuid;
    final String? partnerUuid;
    final ProfileDetails? profileDetails;
    final List<Portfolio>? portfolio;
    final DateTime? createdOn;
    final Availability? availability;
    final List<PartnerLocation>? partnerLocation;
    final List<MegmoGig>? megmoGigs;
    final List<Faq>? faQs;
    final List<Gallery>? gallery;

    Profile({
        this.id,
        this.profileUuid,
        this.partnerUuid,
        this.profileDetails,
        this.portfolio,
        this.createdOn,
        this.availability,
        this.partnerLocation,
        this.megmoGigs,
        this.faQs,
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
    final String? gigHeadline;
    final String? gigDescription;
    final List<String>? tags;
    final String? gigCover;
    final List<String>? skills;
    final String? gigUrl;
    final List<Media>? media;
    final List<String>? otherMedia;

    MegmoGig({
        this.gigHeadline,
        this.gigDescription,
        this.tags,
        this.gigCover,
        this.skills,
        this.gigUrl,
        this.media,
        this.otherMedia,
    });

}

class PartnerLocation {
    final String? latitude;
    final String? longitude;

    PartnerLocation({
        this.latitude,
        this.longitude,
    });

}

class Portfolio {
    final String? projectHeadline;
    final DateTime? projectCompletionDate;
    final String? projectDescription;
    final List<String>? tags;
    final String? projectCover;
    final List<String>? skills;
    final String? projectUrl;
    final List<Media>? media;
    final List<String>? otherMedia;

    Portfolio({
        this.projectHeadline,
        this.projectCompletionDate,
        this.projectDescription,
        this.tags,
        this.projectCover,
        this.skills,
        this.projectUrl,
        this.media,
        this.otherMedia,
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
    final int? unlockCost;
    final bool? megmoPreferredPartner;
    final DateTime? createdOn;

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
        this.unlockCost,
        this.megmoPreferredPartner,
        this.createdOn,
    });

}

