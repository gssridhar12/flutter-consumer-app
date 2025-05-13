// To parse this JSON data, do
//
//     final partnerProfileModel = partnerProfileModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_profile_model.freezed.dart';
part 'partner_profile_model.g.dart';

@freezed
class PartnerProfileModel extends PartnerProfileEntity with _$PartnerProfileModel {
  const factory PartnerProfileModel({
    @JsonKey(name: "code")
    String? code,
    @JsonKey(name: "message")
    String? message,
    @JsonKey(name: "data")
    DataModel? data,
    @JsonKey(name: "success_status")
    bool? successStatus,
  }) = _PartnerProfileModel;

  factory PartnerProfileModel.fromJson(Map<String, dynamic> json) => _$PartnerProfileModelFromJson(json);
}

@freezed
class DataModel extends Data with _$DataModel {
  const factory DataModel({
    @JsonKey(name: "profileReviews")
    List<ProfileReviewModel>? profileReviews,
    @JsonKey(name: "profile")
    ProfileModel? profile,
    @JsonKey(name: "serviceTypes")
    List<dynamic>? serviceTypes,
    @JsonKey(name: "reviewAverages")
    ReviewAveragesModel? reviewAverages,
    @JsonKey(name: "subscriptionTier")
    // ignore: unnecessary_question_mark
    dynamic? subscriptionTier,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
}

@freezed
class ProfileModel extends Profile with _$ProfileModel {
  const factory ProfileModel({
    @JsonKey(name: "id")
    String? id,
    @JsonKey(name: "profile_uuid")
    String? profileUuid,
    @JsonKey(name: "partner_uuid")
    String? partnerUuid,
    @JsonKey(name: "profile_details")
    ProfileDetailsModel? profileDetails,
    @JsonKey(name: "portfolio")
    List<PortfolioModel>? portfolio,
    @JsonKey(name: "megmo_gigs")
    List<MegmoGigModel>? megmoGigs,
    @JsonKey(name: "FAQs")
    List<FaqModel>? faQs,
    @JsonKey(name: "gallery")
    List<GalleryModel>? gallery,
  }) = _ProfileModel;

  factory ProfileModel.fromJson(Map<String, dynamic> json) => _$ProfileModelFromJson(json);
}

@freezed
class FaqModel extends Faq with _$FaqModel {
  const factory FaqModel({
    @JsonKey(name: "question")
    String? question,
    @JsonKey(name: "answer")
    String? answer,
    @JsonKey(name: "tags")
    List<String>? tags,
    @JsonKey(name: "assigned_to")
    List<String>? assignedTo,
  }) = _FaqModel;

  factory FaqModel.fromJson(Map<String, dynamic> json) => _$FaqModelFromJson(json);
}

@freezed
class GalleryModel extends Gallery with _$GalleryModel {
  const factory GalleryModel({
    @JsonKey(name: "media")
    List<MediaModel>? media,
    @JsonKey(name: "assigned_to")
    List<String>? assignedTo,
  }) = _GalleryModel;

  factory GalleryModel.fromJson(Map<String, dynamic> json) => _$GalleryModelFromJson(json);
}

@freezed
class MediaModel extends Media with _$MediaModel {
  const factory MediaModel({
    @JsonKey(name: "media_type")
    String? mediaType,
    @JsonKey(name: "description")
    String? description,
  }) = _MediaModel;

  factory MediaModel.fromJson(Map<String, dynamic> json) => _$MediaModelFromJson(json);
}

@freezed
class MegmoGigModel extends MegmoGig with _$MegmoGigModel {
  const factory MegmoGigModel({
    @JsonKey(name: "gig_headline")
    String? gigHeadline,
    @JsonKey(name: "gig_description")
    String? gigDescription,
    @JsonKey(name: "tags")
    List<String>? tags,
    @JsonKey(name: "gig_cover")
    String? gigCover,
    @JsonKey(name: "skills")
    List<String>? skills,
    @JsonKey(name: "gig_url")
    String? gigUrl,
    @JsonKey(name: "media")
    List<MediaModel>? media,
    @JsonKey(name: "otherMedia")
    List<String>? otherMedia,
  }) = _MegmoGigModel;

  factory MegmoGigModel.fromJson(Map<String, dynamic> json) => _$MegmoGigModelFromJson(json);
}

@freezed
class PortfolioModel extends Portfolio with _$PortfolioModel {
  const factory PortfolioModel({
    @JsonKey(name: "project_headline")
    String? projectHeadline,
    @JsonKey(name: "project_completion_date")
    DateTime? projectCompletionDate,
    @JsonKey(name: "project_description")
    String? projectDescription,
    @JsonKey(name: "tags")
    List<String>? tags,
    @JsonKey(name: "project_cover")
    String? projectCover,
    @JsonKey(name: "skills")
    List<String>? skills,
    @JsonKey(name: "project_url")
    String? projectUrl,
    @JsonKey(name: "media")
    List<MediaModel>? media,
    @JsonKey(name: "otherMedia")
    List<String>? otherMedia,
  }) = _PortfolioModel;

  factory PortfolioModel.fromJson(Map<String, dynamic> json) => _$PortfolioModelFromJson(json);
}

@freezed
class ProfileDetailsModel extends ProfileDetails with _$ProfileDetailsModel {
  const factory ProfileDetailsModel({
    @JsonKey(name: "profile_image")
    String? profileImage,
    @JsonKey(name: "profile_name")
    String? profileName,
    @JsonKey(name: "profile_cover")
    String? profileCover,
    @JsonKey(name: "profile_cover_description")
    String? profileCoverDescription,
    @JsonKey(name: "parent_service_offered")
    List<dynamic>? parentServiceOffered,
    @JsonKey(name: "profile_headline")
    String? profileHeadline,
    @JsonKey(name: "fresh_talent")
    bool? freshTalent,
    @JsonKey(name: "partner_in_demand")
    bool? partnerInDemand,
    @JsonKey(name: "trending_partner")
    bool? trendingPartner,
    @JsonKey(name: "partner_information")
    String? partnerInformation,
    @JsonKey(name: "languages")
    List<String>? languages,
    @JsonKey(name: "city")
    String? city,
    @JsonKey(name: "state")
    String? state,
    @JsonKey(name: "country")
    String? country,
    @JsonKey(name: "education")
    String? education,
    @JsonKey(name: "certification")
    String? certification,
    @JsonKey(name: "skills")
    List<String>? skills,
    @JsonKey(name: "locke_profile")
    bool? lockeProfile,
    @JsonKey(name: "currency_code")
    String? currencyCode,
    @JsonKey(name: "unlock_cost")
    int? unlockCost,
    @JsonKey(name: "media")
    List<MediaModel>? media,
    @JsonKey(name: "created_on")
    DateTime? createdOn,
  }) = _ProfileDetailsModel;

  factory ProfileDetailsModel.fromJson(Map<String, dynamic> json) => _$ProfileDetailsModelFromJson(json);
}

@freezed
class ProfileReviewModel extends ProfileReview with _$ProfileReviewModel {
  const factory ProfileReviewModel({
    @JsonKey(name: "fullName")
    String? fullName,
     @JsonKey(name: "city")
    String? city,
    @JsonKey(name: "profileImage")
    String? profileImage,
    @JsonKey(name: "reviewDetails")
    ReviewDetailsModel? reviewDetails,
    @JsonKey(name: "patron_level")
    int? patronLevel,
  }) = _ProfileReviewModel;

  factory ProfileReviewModel.fromJson(Map<String, dynamic> json) => _$ProfileReviewModelFromJson(json);
}

@freezed
class ReviewDetailsModel extends ReviewDetails with _$ReviewDetailsModel {
  const factory ReviewDetailsModel({
    @JsonKey(name: "id")
    String? id,
    @JsonKey(name: "user_uuid")
    String? userUuid,
    @JsonKey(name: "partner_uuid")
    String? partnerUuid,
    @JsonKey(name: "review_uuid")
    String? reviewUuid,
    @JsonKey(name: "communication")
    double? communication,
    @JsonKey(name: "service_described")
    double? serviceDescribed,
    @JsonKey(name: "recommended")
    double? recommended,
    @JsonKey(name: "source")
    String? source,
    @JsonKey(name: "review")
    String? review,
    @JsonKey(name: "media")
    List<String>? media,
    @JsonKey(name: "created_on")
    DateTime? createdOn,
  }) = _ReviewDetailsModel;

  factory ReviewDetailsModel.fromJson(Map<String, dynamic> json) => _$ReviewDetailsModelFromJson(json);
}

@freezed
class ReviewAveragesModel extends ReviewAverages with _$ReviewAveragesModel {
  const factory ReviewAveragesModel({
    @JsonKey(name: "_id")
    String? id,
    @JsonKey(name: "avgCommunication")
    double? avgCommunication,
    @JsonKey(name: "avgServiceDescribed")
    double? avgServiceDescribed,
    @JsonKey(name: "avgRecommended")
    double? avgRecommended,
    @JsonKey(name: "reviewCount")
    int? reviewCount,
    @JsonKey(name: "overallAverage")
    double? overallAverage,
  }) = _ReviewAveragesModel;

  factory ReviewAveragesModel.fromJson(Map<String, dynamic> json) => _$ReviewAveragesModelFromJson(json);
}