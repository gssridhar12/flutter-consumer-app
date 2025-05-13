// To parse this JSON data, do
//
//     final getPartnerSearchModel = getPartnerSearchModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_partner_search_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_partner_search_model.freezed.dart';
part 'get_partner_search_model.g.dart';


@freezed
class GetPartnerSearchModel extends GetPartnerSearchEntity   with _$GetPartnerSearchModel {
    const factory GetPartnerSearchModel({
        @JsonKey(name: "code")
        String? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "data")
        DataModel? data,
        @JsonKey(name: "success_status")
        bool? successStatus,
    }) = _GetPartnerSearchModel;

    factory GetPartnerSearchModel.fromJson(Map<String, dynamic> json) => _$GetPartnerSearchModelFromJson(json);
}

@freezed
class DataModel extends Data   with _$DataModel {
    const factory DataModel({
        @JsonKey(name: "count")
        int? count,
        @JsonKey(name: "profiles")
        List<ProfileModel>? profiles,
        @JsonKey(name: "page")
        int? page,
        @JsonKey(name: "size")
        int? size,
    }) = _DataModel;

    factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
}

@freezed
class ProfileModel extends Profile   with _$ProfileModel {
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
        @JsonKey(name: "created_on")
        DateTime? createdOn,
        @JsonKey(name: "availability")
        AvailabilityModel? availability,
        @JsonKey(name: "partnerLocation")
        List<PartnerLocationModel>? partnerLocation,
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
class AvailabilityModel extends Availability   with _$AvailabilityModel {
    const factory AvailabilityModel({
        @JsonKey(name: "working_timing")
        List<WorkingTimingModel>? workingTiming,
        @JsonKey(name: "off_days")
        List<String>? offDays,
    }) = _AvailabilityModel;

    factory AvailabilityModel.fromJson(Map<String, dynamic> json) => _$AvailabilityModelFromJson(json);
}

@freezed
class WorkingTimingModel extends WorkingTiming   with _$WorkingTimingModel {
    const factory WorkingTimingModel({
        @JsonKey(name: "day")
        String? day,
        @JsonKey(name: "from")
        String? from,
        @JsonKey(name: "to")
        String? to,
        @JsonKey(name: "open")
        bool? open,
    }) = _WorkingTimingModel;

    factory WorkingTimingModel.fromJson(Map<String, dynamic> json) => _$WorkingTimingModelFromJson(json);
}

@freezed
class FaqModel extends Faq   with _$FaqModel {
    const factory FaqModel({
        @JsonKey(name: "question")
        String? question,
        @JsonKey(name: "answer")
        String? answer,
        @JsonKey(name: "tags")
        List<String>? tags,
        @JsonKey(name: "assigned_to")
        List<String>? assignedTo,
        @JsonKey(name: "is_active")
        bool? isActive,
    }) = _FaqModel;

    factory FaqModel.fromJson(Map<String, dynamic> json) => _$FaqModelFromJson(json);
}

@freezed
class GalleryModel extends Gallery   with _$GalleryModel {
    const factory GalleryModel({
        @JsonKey(name: "media")
        List<MediaModel>? media,
        @JsonKey(name: "assigned_to")
        List<String>? assignedTo,
        @JsonKey(name: "is_active")
        bool? isActive,
    }) = _GalleryModel;

    factory GalleryModel.fromJson(Map<String, dynamic> json) => _$GalleryModelFromJson(json);
}

@freezed
class MediaModel extends Media   with _$MediaModel {
    const factory MediaModel({
        @JsonKey(name: "media_type")
        String? mediaType,
        @JsonKey(name: "description")
        String? description,
    }) = _MediaModel;

    factory MediaModel.fromJson(Map<String, dynamic> json) => _$MediaModelFromJson(json);
}

@freezed
class MegmoGigModel extends MegmoGig   with _$MegmoGigModel {
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
class PartnerLocationModel extends PartnerLocation   with _$PartnerLocationModel {
    const factory PartnerLocationModel({
        @JsonKey(name: "latitude")
        String? latitude,
        @JsonKey(name: "longitude")
        String? longitude,
    }) = _PartnerLocationModel;

    factory PartnerLocationModel.fromJson(Map<String, dynamic> json) => _$PartnerLocationModelFromJson(json);
}

@freezed
class PortfolioModel extends Portfolio   with _$PortfolioModel {
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
        List<String>? parentServiceOffered,
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
        @JsonKey(name: "media")
        List<MediaModel>? media,
        @JsonKey(name: "unlock_cost")
        int? unlockCost,
        @JsonKey(name: "megmo_preferred_partner")
        bool? megmoPreferredPartner,
        @JsonKey(name: "created_on")
        DateTime? createdOn,
    }) = _ProfileDetailsModel;

    factory ProfileDetailsModel.fromJson(Map<String, dynamic> json) => _$ProfileDetailsModelFromJson(json);
}
