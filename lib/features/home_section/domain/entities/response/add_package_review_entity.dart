class AddPackageReviewEntity {
  final String? code;
  final String? message;
  final Data? data;
  final bool? successStatus;

  AddPackageReviewEntity({
    this.code,
    this.message,
    this.data,
    this.successStatus,
  });
}

class Data {
  final String? id;
  final String? userUuid;
  final String? packageUuid;
  final String? reviewUuid;
  final double? communication;
  final double? serviceDescribed;
  final double? recommended;
  final String? source;
  final String? review;
  final List<String>? media;
  final DateTime? createdOn;

  Data({
    this.id,
    this.userUuid,
    this.packageUuid,
    this.reviewUuid,
    this.communication,
    this.serviceDescribed,
    this.recommended,
    this.source,
    this.review,
    this.media,
    this.createdOn,
  });
}
