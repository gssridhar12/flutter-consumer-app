class PackageReviewEntity {
  final String code;
  final String message;
  final Data data;
  final bool successStatus;

  PackageReviewEntity({
    required this.code,
    required this.message,
    required this.data,
    required this.successStatus,
  });

  factory PackageReviewEntity.fromJson(Map<String, dynamic> json) =>
      PackageReviewEntity(
        code: json["code"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
        successStatus: json["success_status"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data.toJson(),
        "success_status": successStatus,
      };
}

class Data {
  final int count;
  final int page;
  final int size;
  final List<PackageReview> packageReviews;

  Data({
    required this.count,
    required this.page,
    required this.size,
    required this.packageReviews,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        count: json["count"],
        page: json["page"],
        size: json["size"],
        packageReviews: List<PackageReview>.from(
            json["packageReviews"].map((x) => PackageReview.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "count": count,
        "page": page,
        "size": size,
        "packageReviews":
            List<dynamic>.from(packageReviews.map((x) => x.toJson())),
      };
}

class PackageReview {
  final String city;
  final String fullName;
  final String profileImage;
  final ReviewDetails reviewDetails;
  final int patronLevel;

  PackageReview({
    required this.city,
    required this.fullName,
    required this.profileImage,
    required this.reviewDetails,
    required this.patronLevel,
  });

  factory PackageReview.fromJson(Map<String, dynamic> json) => PackageReview(
        city: json["city"],
        fullName: json["fullName"],
        profileImage: json["profileImage"],
        reviewDetails: ReviewDetails.fromJson(json["reviewDetails"]),
        patronLevel: json["patron_level"],
      );

  Map<String, dynamic> toJson() => {
        "city": city,
        "fullName": fullName,
        "profileImage": profileImage,
        "reviewDetails": reviewDetails.toJson(),
        "patron_level": patronLevel,
      };
}

class ReviewDetails {
  final String id;
  final String userUuid;
  final String packageUuid;
  final String reviewUuid;
  final double communication;
  final double serviceDescribed;
  final double recommended;
  final String source;
  final String review;
  final List<String> media;
  final DateTime createdOn;

  ReviewDetails({
    required this.id,
    required this.userUuid,
    required this.packageUuid,
    required this.reviewUuid,
    required this.communication,
    required this.serviceDescribed,
    required this.recommended,
    required this.source,
    required this.review,
    required this.media,
    required this.createdOn,
  });

  factory ReviewDetails.fromJson(Map<String, dynamic> json) => ReviewDetails(
        id: json["id"],
        userUuid: json["user_uuid"],
        packageUuid: json["package_uuid"],
        reviewUuid: json["review_uuid"],
        communication: json["communication"],
        serviceDescribed: json["service_described"],
        recommended: json["recommended"],
        source: json["source"],
        review: json["review"],
        media: List<String>.from(json["media"].map((x) => x)),
        createdOn: DateTime.parse(json["created_on"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_uuid": userUuid,
        "package_uuid": packageUuid,
        "review_uuid": reviewUuid,
        "communication": communication,
        "service_described": serviceDescribed,
        "recommended": recommended,
        "source": source,
        "review": review,
        "media": List<dynamic>.from(media.map((x) => x)),
        "created_on": createdOn.toIso8601String(),
      };
}
