// To parse this JSON data, do
//
//     final addPackageReviewRequest = addPackageReviewRequestFromJson(jsonString);

import 'dart:convert';

AddPackageReviewRequest addPackageReviewRequestFromJson(String str) =>
    AddPackageReviewRequest.fromJson(json.decode(str));

String addPackageReviewRequestToJson(AddPackageReviewRequest data) =>
    json.encode(data.toJson());

class AddPackageReviewRequest {
  final String? packageUuid;
  final String? userUuid;
  final double? communication;
  final double? serviceDescribed;
  final double? recommended;
  final String? source;
  final int? partnerLevel;
  final String? review;
  final List<String>? media;

  AddPackageReviewRequest({
    this.packageUuid,
    this.userUuid,
    this.communication,
    this.serviceDescribed,
    this.recommended,
    this.source,
    this.partnerLevel,
    this.review,
    this.media,
  });

  factory AddPackageReviewRequest.fromJson(Map<String, dynamic> json) =>
      AddPackageReviewRequest(
        packageUuid: json["package_uuid"],
        userUuid: json["user_uuid"],
        communication: json["communication"],
        serviceDescribed: json["service_described"],
        recommended: json["recommended"],
        source: json["source"],
        partnerLevel: json["partner_level"],
        review: json["review"],
        media: json["media"] == null
            ? []
            : List<String>.from(json["media"]!.map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "package_uuid": packageUuid,
        "user_uuid": userUuid,
        "communication": communication,
        "service_described": serviceDescribed,
        "recommended": recommended,
        "source": source,
        "partner_level": partnerLevel,
        "review": review,
        "media": media == null ? [] : List<dynamic>.from(media!.map((x) => x)),
      };
}
