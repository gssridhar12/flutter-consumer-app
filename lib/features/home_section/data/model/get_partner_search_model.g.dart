// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_partner_search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetPartnerSearchModelImpl _$$GetPartnerSearchModelImplFromJson(
        Map<String, dynamic> json) =>
    _$GetPartnerSearchModelImpl(
      code: json['code'] as String?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : DataModel.fromJson(json['data'] as Map<String, dynamic>),
      successStatus: json['success_status'] as bool?,
    );

Map<String, dynamic> _$$GetPartnerSearchModelImplToJson(
        _$GetPartnerSearchModelImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'message': instance.message,
      'data': instance.data,
      'success_status': instance.successStatus,
    };

_$DataModelImpl _$$DataModelImplFromJson(Map<String, dynamic> json) =>
    _$DataModelImpl(
      count: json['count'] as int?,
      profiles: (json['profiles'] as List<dynamic>?)
          ?.map((e) => ProfileModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: json['page'] as int?,
      size: json['size'] as int?,
    );

Map<String, dynamic> _$$DataModelImplToJson(_$DataModelImpl instance) =>
    <String, dynamic>{
      'count': instance.count,
      'profiles': instance.profiles,
      'page': instance.page,
      'size': instance.size,
    };

_$ProfileModelImpl _$$ProfileModelImplFromJson(Map<String, dynamic> json) =>
    _$ProfileModelImpl(
      id: json['id'] as String?,
      profileUuid: json['profile_uuid'] as String?,
      partnerUuid: json['partner_uuid'] as String?,
      profileDetails: json['profile_details'] == null
          ? null
          : ProfileDetailsModel.fromJson(
              json['profile_details'] as Map<String, dynamic>),
      portfolio: (json['portfolio'] as List<dynamic>?)
          ?.map((e) => PortfolioModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdOn: json['created_on'] == null
          ? null
          : DateTime.parse(json['created_on'] as String),
      availability: json['availability'] == null
          ? null
          : AvailabilityModel.fromJson(
              json['availability'] as Map<String, dynamic>),
      partnerLocation: (json['partnerLocation'] as List<dynamic>?)
          ?.map((e) => PartnerLocationModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      megmoGigs: (json['megmo_gigs'] as List<dynamic>?)
          ?.map((e) => MegmoGigModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      faQs: (json['FAQs'] as List<dynamic>?)
          ?.map((e) => FaqModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      gallery: (json['gallery'] as List<dynamic>?)
          ?.map((e) => GalleryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProfileModelImplToJson(_$ProfileModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'profile_uuid': instance.profileUuid,
      'partner_uuid': instance.partnerUuid,
      'profile_details': instance.profileDetails,
      'portfolio': instance.portfolio,
      'created_on': instance.createdOn?.toIso8601String(),
      'availability': instance.availability,
      'partnerLocation': instance.partnerLocation,
      'megmo_gigs': instance.megmoGigs,
      'FAQs': instance.faQs,
      'gallery': instance.gallery,
    };

_$AvailabilityModelImpl _$$AvailabilityModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AvailabilityModelImpl(
      workingTiming: (json['working_timing'] as List<dynamic>?)
          ?.map((e) => WorkingTimingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      offDays: (json['off_days'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AvailabilityModelImplToJson(
        _$AvailabilityModelImpl instance) =>
    <String, dynamic>{
      'working_timing': instance.workingTiming,
      'off_days': instance.offDays,
    };

_$WorkingTimingModelImpl _$$WorkingTimingModelImplFromJson(
        Map<String, dynamic> json) =>
    _$WorkingTimingModelImpl(
      day: json['day'] as String?,
      from: json['from'] as String?,
      to: json['to'] as String?,
      open: json['open'] as bool?,
    );

Map<String, dynamic> _$$WorkingTimingModelImplToJson(
        _$WorkingTimingModelImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'from': instance.from,
      'to': instance.to,
      'open': instance.open,
    };

_$FaqModelImpl _$$FaqModelImplFromJson(Map<String, dynamic> json) =>
    _$FaqModelImpl(
      question: json['question'] as String?,
      answer: json['answer'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      assignedTo: (json['assigned_to'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$$FaqModelImplToJson(_$FaqModelImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'answer': instance.answer,
      'tags': instance.tags,
      'assigned_to': instance.assignedTo,
      'is_active': instance.isActive,
    };

_$GalleryModelImpl _$$GalleryModelImplFromJson(Map<String, dynamic> json) =>
    _$GalleryModelImpl(
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => MediaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      assignedTo: (json['assigned_to'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isActive: json['is_active'] as bool?,
    );

Map<String, dynamic> _$$GalleryModelImplToJson(_$GalleryModelImpl instance) =>
    <String, dynamic>{
      'media': instance.media,
      'assigned_to': instance.assignedTo,
      'is_active': instance.isActive,
    };

_$MediaModelImpl _$$MediaModelImplFromJson(Map<String, dynamic> json) =>
    _$MediaModelImpl(
      mediaType: json['media_type'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$MediaModelImplToJson(_$MediaModelImpl instance) =>
    <String, dynamic>{
      'media_type': instance.mediaType,
      'description': instance.description,
    };

_$MegmoGigModelImpl _$$MegmoGigModelImplFromJson(Map<String, dynamic> json) =>
    _$MegmoGigModelImpl(
      gigHeadline: json['gig_headline'] as String?,
      gigDescription: json['gig_description'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      gigCover: json['gig_cover'] as String?,
      skills:
          (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList(),
      gigUrl: json['gig_url'] as String?,
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => MediaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      otherMedia: (json['otherMedia'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$MegmoGigModelImplToJson(_$MegmoGigModelImpl instance) =>
    <String, dynamic>{
      'gig_headline': instance.gigHeadline,
      'gig_description': instance.gigDescription,
      'tags': instance.tags,
      'gig_cover': instance.gigCover,
      'skills': instance.skills,
      'gig_url': instance.gigUrl,
      'media': instance.media,
      'otherMedia': instance.otherMedia,
    };

_$PartnerLocationModelImpl _$$PartnerLocationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PartnerLocationModelImpl(
      latitude: json['latitude'] as String?,
      longitude: json['longitude'] as String?,
    );

Map<String, dynamic> _$$PartnerLocationModelImplToJson(
        _$PartnerLocationModelImpl instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };

_$PortfolioModelImpl _$$PortfolioModelImplFromJson(Map<String, dynamic> json) =>
    _$PortfolioModelImpl(
      projectHeadline: json['project_headline'] as String?,
      projectCompletionDate: json['project_completion_date'] == null
          ? null
          : DateTime.parse(json['project_completion_date'] as String),
      projectDescription: json['project_description'] as String?,
      tags: (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList(),
      projectCover: json['project_cover'] as String?,
      skills:
          (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList(),
      projectUrl: json['project_url'] as String?,
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => MediaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      otherMedia: (json['otherMedia'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$PortfolioModelImplToJson(
        _$PortfolioModelImpl instance) =>
    <String, dynamic>{
      'project_headline': instance.projectHeadline,
      'project_completion_date':
          instance.projectCompletionDate?.toIso8601String(),
      'project_description': instance.projectDescription,
      'tags': instance.tags,
      'project_cover': instance.projectCover,
      'skills': instance.skills,
      'project_url': instance.projectUrl,
      'media': instance.media,
      'otherMedia': instance.otherMedia,
    };

_$ProfileDetailsModelImpl _$$ProfileDetailsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProfileDetailsModelImpl(
      profileImage: json['profile_image'] as String?,
      profileName: json['profile_name'] as String?,
      profileCover: json['profile_cover'] as String?,
      profileCoverDescription: json['profile_cover_description'] as String?,
      parentServiceOffered: (json['parent_service_offered'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      profileHeadline: json['profile_headline'] as String?,
      freshTalent: json['fresh_talent'] as bool?,
      partnerInDemand: json['partner_in_demand'] as bool?,
      trendingPartner: json['trending_partner'] as bool?,
      partnerInformation: json['partner_information'] as String?,
      languages: (json['languages'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      city: json['city'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      education: json['education'] as String?,
      certification: json['certification'] as String?,
      skills:
          (json['skills'] as List<dynamic>?)?.map((e) => e as String).toList(),
      lockeProfile: json['locke_profile'] as bool?,
      currencyCode: json['currency_code'] as String?,
      media: (json['media'] as List<dynamic>?)
          ?.map((e) => MediaModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      unlockCost: json['unlock_cost'] as int?,
      megmoPreferredPartner: json['megmo_preferred_partner'] as bool?,
      createdOn: json['created_on'] == null
          ? null
          : DateTime.parse(json['created_on'] as String),
    );

Map<String, dynamic> _$$ProfileDetailsModelImplToJson(
        _$ProfileDetailsModelImpl instance) =>
    <String, dynamic>{
      'profile_image': instance.profileImage,
      'profile_name': instance.profileName,
      'profile_cover': instance.profileCover,
      'profile_cover_description': instance.profileCoverDescription,
      'parent_service_offered': instance.parentServiceOffered,
      'profile_headline': instance.profileHeadline,
      'fresh_talent': instance.freshTalent,
      'partner_in_demand': instance.partnerInDemand,
      'trending_partner': instance.trendingPartner,
      'partner_information': instance.partnerInformation,
      'languages': instance.languages,
      'city': instance.city,
      'state': instance.state,
      'country': instance.country,
      'education': instance.education,
      'certification': instance.certification,
      'skills': instance.skills,
      'locke_profile': instance.lockeProfile,
      'currency_code': instance.currencyCode,
      'media': instance.media,
      'unlock_cost': instance.unlockCost,
      'megmo_preferred_partner': instance.megmoPreferredPartner,
      'created_on': instance.createdOn?.toIso8601String(),
    };
