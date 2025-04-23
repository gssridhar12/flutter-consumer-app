import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_like_entity.dart';

class GetPartnerLikeModel extends GetPartnerLikeEntity {
  GetPartnerLikeModel({
    required String code,
    required String message,
    required List<PartnerDataModel> data,
    required bool successStatus,
  }) : super(
          code: code,
          message: message,
          data: data,
          successStatus: successStatus,
        );

  factory GetPartnerLikeModel.fromJson(Map<String, dynamic> json) =>
      GetPartnerLikeModel(
        code: json["code"],
        message: json["message"],
        data: json["data"] != null
            ? List<PartnerDataModel>.from(
                json["data"].map((x) => PartnerDataModel.fromJson(x)))
            : List.empty(),
        successStatus: json["success_status"],
      );
}

class PartnerDataModel extends PartnerData {
  PartnerDataModel({
    required String userUuid,
    required String profileUuid,
    required bool isLiked,
  }) : super(
          userUuid: userUuid,
          profileUuid: profileUuid,
          isLiked: isLiked,
        );

  factory PartnerDataModel.fromJson(Map<String, dynamic> json) =>
      PartnerDataModel(
        userUuid: json["user_uuid"],
        profileUuid: json["profile_uuid"],
        isLiked: json["is_liked"],
      );
}
