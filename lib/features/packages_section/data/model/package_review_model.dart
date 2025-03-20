

import '../../domain/entities/package_review_entity.dart';

class PackageReviewModel extends PackageReviewEntity {
  PackageReviewModel({
    required String code,
    required String message,
    required Data data,
    required bool successStatus,
  }) : super(
          code: code,
          message: message,
          data: data,
          successStatus: successStatus,
        );

  factory PackageReviewModel.fromJson(Map<String, dynamic> json) {
    return PackageReviewModel(
      code: json["code"],
      message: json["message"],
      data: DataModel.fromJson(json["data"]),
      successStatus: json["success_status"],
    );
  }
}

class DataModel extends Data {
  DataModel({
    required int count,
    required int page,
    required int size,
    required List<PackageReview> packageReviews,
  }) : super(
          count: count,
          page: page,
          size: size,
          packageReviews: packageReviews,
        );

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      count: json["count"],
      page: json["page"],
      size: json["size"],
      packageReviews: List<PackageReview>.from(
        json["packageReviews"].map((x) => PackageReview.fromJson(x)),
      ),
    );
  }
}

class PackageReviewModels extends PackageReview {
  PackageReviewModels({
    required String city,
    required String fullName,
    required String profileImage,
    required ReviewDetails reviewDetails,
    required int patronLevel,
  }) : super(
          city: city,
          fullName: fullName,
          profileImage: profileImage,
          reviewDetails: reviewDetails,
          patronLevel: patronLevel,
        );

  factory PackageReviewModels.fromJson(Map<String, dynamic> json) {
    return PackageReviewModels(
      city: json["city"],
      fullName: json["fullName"],
      profileImage: json["profileImage"],
      reviewDetails: ReviewDetails.fromJson(json["reviewDetails"]),
      patronLevel: json["patron_level"],
    );
  }
}

class ReviewDetailsModel extends ReviewDetails {
  ReviewDetailsModel({
    required String id,
    required String userUuid,
    required String packageUuid,
    required String reviewUuid,
    required double communication,
    required double serviceDescribed,
    required double recommended,
    required String source,
    required String review,
    required List<String> media,
    required DateTime createdOn,
  }) : super(
          id: id,
          userUuid: userUuid,
          packageUuid: packageUuid,
          reviewUuid: reviewUuid,
          communication: communication,
          serviceDescribed: serviceDescribed,
          recommended: recommended,
          source: source,
          review: review,
          media: media,
          createdOn: createdOn,
        );

  factory ReviewDetailsModel.fromJson(Map<String, dynamic> json) {
    return ReviewDetailsModel(
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
  }
}