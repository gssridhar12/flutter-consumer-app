class PartnerProfileEntity {
  final String? code;
  final String? message;
  final Data? data;
  final bool? successStatus;

  PartnerProfileEntity({
    required this.code,
    required this.message,
    required this.data,
    required this.successStatus,
  });
}

class Data {
  final List<ProfileReview>? profileReviews;
  final Profile? profile;
  final List<dynamic>? serviceTypes;
  final ReviewAverages? reviewAverages;
  // ignore: unnecessary_question_mark
  final dynamic? subscriptionTier;

  Data({
    required this.profileReviews,
    required this.profile,
    required this.serviceTypes,
    required this.reviewAverages,
    required this.subscriptionTier,
  });
}

class Profile {
  final String? id;
  final String? profileUuid;
  final String? partnerUuid;
  final ProfileDetails? profileDetails;
  final List<Portfolio>? portfolio;
  final List<MegmoGig>? megmoGigs;
  final List<Faq>? faQs;
  final List<Gallery>? gallery;

  Profile({
    required this.id,
    required this.profileUuid,
    required this.partnerUuid,
    required this.profileDetails,
    required this.portfolio,
    required this.megmoGigs,
    required this.faQs,
    required this.gallery,
  });
}

class Faq {
  final String? question;
  final String? answer;
  final List<String>? tags;
  final List<String>? assignedTo;

  Faq({
    required this.question,
    required this.answer,
    required this.tags,
    required this.assignedTo,
  });
}

class Gallery {
  final List<Media>? media;
  final List<String>? assignedTo;

  Gallery({
    required this.media,
    required this.assignedTo,
  });
}

class Media {
  final String? mediaType;
  final String? description;

  Media({
    required this.mediaType,
    required this.description,
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
  final String? profileImage;
  final String? profileName;
  final String? profileCover;
  final String? profileCoverDescription;
  final List<dynamic>? parentServiceOffered;
  final String ?profileHeadline;
  final bool? freshTalent;
  final bool? partnerInDemand;
  final bool? trendingPartner;
  final String ?partnerInformation;
  final List<String>? languages;
  final String ?city;
  final String ?state;
  final String ?country;
  final String ?education;
  final String ?certification;
  final List<String>? skills;
  final bool? lockeProfile;
  final String ?currencyCode;
  final int? unlockCost;
  final List<Media>? media;
  final DateTime? createdOn;

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
    required this.unlockCost,
    required this.media,
    required this.createdOn,
  });
}

class ProfileReview {
  final String? fullName;
   final String? city;
  final String? profileImage;
  final ReviewDetails? reviewDetails;
  final int? patronLevel;
  

  ProfileReview(
        {
    required this.fullName,
    required  this.city,
    required this.profileImage,
    required this.reviewDetails,
    required this.patronLevel,
  });
}

class ReviewDetails {
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

  ReviewDetails({
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

class ReviewAverages {
  final dynamic id;
  final double? avgCommunication;
  final double? avgServiceDescribed;
  final double? avgRecommended;
  final int? reviewCount;
  final double? overallAverage;

  ReviewAverages({
    required this.id,
    required this.avgCommunication,
    required this.avgServiceDescribed,
    required this.avgRecommended,
    required this.reviewCount,
    required this.overallAverage,
  });
}