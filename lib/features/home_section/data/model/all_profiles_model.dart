// To parse this JSON data, do
//
//     final allProfileModel = allProfileModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:flutter_consumer_app/features/home_section/domain/entities/response/all_partners_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_profiles_model.freezed.dart';
part 'all_profiles_model.g.dart';

@freezed
class AllProfileModel extends AllProfileEntity with _$AllProfileModel {
  const factory AllProfileModel({
    @JsonKey(name: "code") required String code,
    @JsonKey(name: "message") required String message,
    @JsonKey(name: "data") required DataModel data,
    @JsonKey(name: "success_status") required bool successStatus,
  }) = _AllProfileModel;

  factory AllProfileModel.fromJson(Map<String, dynamic> json) =>
      _$AllProfileModelFromJson(json);
}

@freezed
class DataModel extends Data with _$DataModel {
  const factory DataModel({
    @JsonKey(name: "count") required int count,
    @JsonKey(name: "profiles") required List<ProfileElementModel> profiles,
    @JsonKey(name: "page") required int page,
    @JsonKey(name: "size") required int size,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}

@freezed
class ProfileElementModel extends ProfileElement with _$ProfileElementModel {
  const factory ProfileElementModel({
    @JsonKey(name: "subscriptionAgreement")
    required SubscriptionAgreementModel? subscriptionAgreement,
    @JsonKey(name: "profile") required ProfileProfileModel profile,
  }) = _ProfileElementModel;

  factory ProfileElementModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileElementModelFromJson(json);
}

@freezed
class ProfileProfileModel extends ProfileProfile with _$ProfileProfileModel {
  const factory ProfileProfileModel({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "profile_uuid") required String profileUuid,
    @JsonKey(name: "partner_uuid") required String partnerUuid,
    @JsonKey(name: "profile_details")
    required ProfileDetailsModel profileDetails,
    @JsonKey(name: "partnerLocation")
    List<PartnerLocationModel>? partnerLocation,
    @JsonKey(name: "portfolio") List<PortfolioModel>? portfolio,
    @JsonKey(name: "megmo_gigs") List<MegmoGigModel>? megmoGigs,
    @JsonKey(name: "FAQs") List<FaqModel>? faQs,
    @JsonKey(name: "created_on") DateTime? createdOn,
    @JsonKey(name: "availability") AvailabilityModel? availability,
    @JsonKey(name: "gallery") List<GalleryModel>? gallery,
  }) = _ProfileProfileModel;

  factory ProfileProfileModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileProfileModelFromJson(json);
}

@freezed
class AvailabilityModel extends Availability with _$AvailabilityModel {
  const factory AvailabilityModel({
    @JsonKey(name: "working_timing")
    required List<WorkingTimingModel> workingTiming,
  }) = _AvailabilityModel;

  factory AvailabilityModel.fromJson(Map<String, dynamic> json) =>
      _$AvailabilityModelFromJson(json);
}

@freezed
class WorkingTimingModel extends WorkingTiming with _$WorkingTimingModel {
  const factory WorkingTimingModel({
    @JsonKey(name: "day") required String day,
    @JsonKey(name: "from") required String from,
    @JsonKey(name: "to") required String to,
    @JsonKey(name: "open") required bool open,
  }) = _WorkingTimingModel;

  factory WorkingTimingModel.fromJson(Map<String, dynamic> json) =>
      _$WorkingTimingModelFromJson(json);
}

@freezed
class FaqModel extends Faq with _$FaqModel {
  const factory FaqModel({
    @JsonKey(name: "question") required String question,
    @JsonKey(name: "answer") required String answer,
    @JsonKey(name: "tags") required List<String> tags,
    @JsonKey(name: "assigned_to") required List<String> assignedTo,
  }) = _FaqModel;

  factory FaqModel.fromJson(Map<String, dynamic> json) =>
      _$FaqModelFromJson(json);
}

@freezed
class GalleryModel extends Gallery with _$GalleryModel {
  const factory GalleryModel({
    @JsonKey(name: "media") required List<MediaModel> media,
    @JsonKey(name: "assigned_to") required List<String> assignedTo,
  }) = _GalleryModel;

  factory GalleryModel.fromJson(Map<String, dynamic> json) =>
      _$GalleryModelFromJson(json);
}

@freezed
class MediaModel extends Media with _$MediaModel {
  const factory MediaModel({
    @JsonKey(name: "media_type") String? mediaType,
    @JsonKey(name: "description") required String description,
  }) = _MediaModel;

  factory MediaModel.fromJson(Map<String, dynamic> json) =>
      _$MediaModelFromJson(json);
}

@freezed
class MegmoGigModel extends MegmoGig with _$MegmoGigModel {
  const factory MegmoGigModel({
    @JsonKey(name: "tags") required List<String> tags,
    @JsonKey(name: "skills") required List<String> skills,
    @JsonKey(name: "media") required List<dynamic> media,
    @JsonKey(name: "otherMedia") required List<String> otherMedia,
  }) = _MegmoGigModel;

  factory MegmoGigModel.fromJson(Map<String, dynamic> json) =>
      _$MegmoGigModelFromJson(json);
}

@freezed
class PartnerLocationModel extends PartnerLocation with _$PartnerLocationModel {
  const factory PartnerLocationModel({
    @JsonKey(name: "address_type") String? addressType,
    @JsonKey(name: "address_line1") String? addressLine1,
    @JsonKey(name: "address_line2") String? addressLine2,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "state") String? state,
    @JsonKey(name: "country") String? country,
    @JsonKey(name: "pinCode") int? pinCode,
    @JsonKey(name: "landmark") String? landmark,
    @JsonKey(name: "latitude") required String latitude,
    @JsonKey(name: "longitude") required String longitude,
    @JsonKey(name: "status") String? status,
  }) = _PartnerLocationModel;

  factory PartnerLocationModel.fromJson(Map<String, dynamic> json) =>
      _$PartnerLocationModelFromJson(json);
}

@freezed
class PortfolioModel extends Portfolio with _$PortfolioModel {
  const factory PortfolioModel({
    @JsonKey(name: "project_headline") required String projectHeadline,
    @JsonKey(name: "project_completion_date")
    required DateTime projectCompletionDate,
    @JsonKey(name: "project_description") required String projectDescription,
    @JsonKey(name: "tags") required List<String> tags,
    @JsonKey(name: "skills") required List<String> skills,
    @JsonKey(name: "project_url") required String projectUrl,
    @JsonKey(name: "media") required List<MediaModel> media,
    @JsonKey(name: "otherMedia") required List<String> otherMedia,
    @JsonKey(name: "project_cover") String? projectCover,
  }) = _PortfolioModel;

  factory PortfolioModel.fromJson(Map<String, dynamic> json) =>
      _$PortfolioModelFromJson(json);
}

@freezed
class ProfileDetailsModel extends ProfileDetails with _$ProfileDetailsModel {
  const factory ProfileDetailsModel({
    @JsonKey(name: "profile_image") required String profileImage,
    @JsonKey(name: "profile_name") required String profileName,
    @JsonKey(name: "profile_cover") required String profileCover,
    @JsonKey(name: "profile_cover_description")
    required String profileCoverDescription,
    @JsonKey(name: "parent_service_offered")
    required List<String> parentServiceOffered,
    @JsonKey(name: "profile_headline") required String profileHeadline,
    @JsonKey(name: "megmo_preferred_partner") bool? megmoPreferredPartner,
    @JsonKey(name: "partner_level") int? partnerLevel,
    @JsonKey(name: "fresh_talent") required bool freshTalent,
    @JsonKey(name: "partner_in_demand") required bool partnerInDemand,
    @JsonKey(name: "trending_partner") required bool trendingPartner,
    @JsonKey(name: "partner_information") required String partnerInformation,
    @JsonKey(name: "languages") required List<String> languages,
    @JsonKey(name: "city") required String city,
    @JsonKey(name: "state") required String state,
    @JsonKey(name: "country") required String country,
    @JsonKey(name: "education") required String education,
    @JsonKey(name: "certification") required String certification,
    @JsonKey(name: "skills") required List<String> skills,
    @JsonKey(name: "locke_profile") required bool lockeProfile,
    @JsonKey(name: "currency_code") required String currencyCode,
    @JsonKey(name: "unlock_cost") int? unlockCost,
    @JsonKey(name: "media") required List<MediaModel> media,
    @JsonKey(name: "created_on") DateTime? createdOn,
    @JsonKey(name: "updated_on") DateTime? updatedOn,
  }) = _ProfileDetailsModel;

  factory ProfileDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$ProfileDetailsModelFromJson(json);
}

@freezed
class SubscriptionAgreementModel extends SubscriptionAgreement
    with _$SubscriptionAgreementModel {
  const factory SubscriptionAgreementModel({
    @JsonKey(name: "subscription_tier") required String subscriptionTier,
    @JsonKey(name: "commission_percentage")
    required double commissionPercentage,
    @JsonKey(name: "document_url") required String documentUrl,
    @JsonKey(name: "validity") required DateTime validity,
    @JsonKey(name: "is_active") required bool isActive,
    @JsonKey(name: "created_on") required DateTime createdOn,
  }) = _SubscriptionAgreementModel;

  factory SubscriptionAgreementModel.fromJson(Map<String, dynamic> json) =>
      _$SubscriptionAgreementModelFromJson(json);
}
