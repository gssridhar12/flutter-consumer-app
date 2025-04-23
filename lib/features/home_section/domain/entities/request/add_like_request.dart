class AddPackageLikeRequest {
  String userUuid;
  String packageUuid;
  bool isLiked;

  AddPackageLikeRequest({
    required this.userUuid,
    required this.packageUuid,
    required this.isLiked,
  });

  factory AddPackageLikeRequest.fromJson(Map<String, dynamic> json) =>
      AddPackageLikeRequest(
        userUuid: json["user_uuid"],
        packageUuid: json["package_uuid"],
        isLiked: json["is_liked"],
      );

  Map<String, dynamic> toJson() => {
        "user_uuid": userUuid,
        "package_uuid": packageUuid,
        "is_liked": isLiked,
      };
}

class AddPartnerLikeRequest {
  String userUuid;
  String profileUuid;
  bool isLiked;

  AddPartnerLikeRequest({
    required this.userUuid,
    required this.profileUuid,
    required this.isLiked,
  });

  factory AddPartnerLikeRequest.fromJson(Map<String, dynamic> json) =>
      AddPartnerLikeRequest(
        userUuid: json["user_uuid"],
        profileUuid: json["profile_uuid"],
        isLiked: json["is_liked"],
      );

  Map<String, dynamic> toJson() => {
        "user_uuid": userUuid,
        "profile_uuid": profileUuid,
        "is_liked": isLiked,
      };
}
