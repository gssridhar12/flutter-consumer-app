class GetPartnerLikeEntity {
  String code;
  String message;
  List<PartnerData> data;
  bool successStatus;

  GetPartnerLikeEntity({
    required this.code,
    required this.message,
    required this.data,
    required this.successStatus,
  });

  factory GetPartnerLikeEntity.fromJson(Map<String, dynamic> json) =>
      GetPartnerLikeEntity(
        code: json["code"],
        message: json["message"],
        data: List<PartnerData>.from(
            json["data"].map((x) => PartnerData.fromJson(x))),
        successStatus: json["success_status"],
      );

  Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "success_status": successStatus,
      };
}

class PartnerData {
  String userUuid;
  String profileUuid;
  bool isLiked;

  PartnerData({
    required this.userUuid,
    required this.profileUuid,
    required this.isLiked,
  });

  factory PartnerData.fromJson(Map<String, dynamic> json) => PartnerData(
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
