import 'package:flutter_consumer_app/features/auth_section/domain/entities/response/auth_entity.dart';

class AuthModel extends AuthEntity {
  AuthModel({
    required String code,
    required String message,
    required DataModel data,
    required bool successStatus,
  }) : super(
          code: code,
          message: message,
          data: data,
          successStatus: successStatus,
        );

  factory AuthModel.fromJson(Map<String, dynamic> json) {
    return AuthModel(
      code: json["code"],
      message: json["message"],
      data: DataModel.fromJson(json["data"]),
      successStatus: json["success_status"],
    );
  }
}

class DataModel extends Data {
  DataModel({
    required String id,
    required String userUuid,
    required String fullName,
    required String email,
    required String password,
    required DateTime createdOn,
  }) : super(
          id: id,
          userUuid: userUuid,
          fullName: fullName,
          email: email,
          password: password,
          createdOn: createdOn,
        );

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(
      id: json["id"],
      userUuid: json["user_uuid"],
      fullName: json["full_name"]??"",
      email: json["email"]??"",
      password: json["password"]??"",
      createdOn: DateTime.parse(json["created_on"]),
    );
  }
}