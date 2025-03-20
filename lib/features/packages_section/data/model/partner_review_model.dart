// To parse this JSON data, do
//
//     final partnerReviewModel = partnerReviewModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:flutter_consumer_app/features/packages_section/domain/entities/partner_review_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'partner_review_model.freezed.dart';
part 'partner_review_model.g.dart';

PartnerReviewModel partnerReviewModelFromJson(String str) => PartnerReviewModel.fromJson(json.decode(str));

String partnerReviewModelToJson(PartnerReviewModel data) => json.encode(data.toJson());

@freezed
class PartnerReviewModel extends PartnerReviewEntity with _$PartnerReviewModel {
    const factory PartnerReviewModel({
        @JsonKey(name: "code")
        String? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "data")
        DataModel? data,
        @JsonKey(name: "success_status")
        bool? successStatus,
    }) = _PartnerReviewModel;

    factory PartnerReviewModel.fromJson(Map<String, dynamic> json) => _$PartnerReviewModelFromJson(json);
}

@freezed
class DataModel extends Data with _$DataModel {
    const factory DataModel({
        @JsonKey(name: "count")
        int? count,
        @JsonKey(name: "page")
        int? page,
        @JsonKey(name: "size")
        int? size,
        @JsonKey(name: "profileReviews")
        List<ProfileReviewModel>? profileReviews,
    }) = _DataModel;

    factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
}

@freezed
class ProfileReviewModel extends ProfileReview with _$ProfileReviewModel {
    const factory ProfileReviewModel({
        @JsonKey(name: "fullName")
        String? fullName,
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
        int? communication,
        @JsonKey(name: "service_described")
        int? serviceDescribed,
        @JsonKey(name: "recommended")
        int? recommended,
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
