class AuthEntity {
  String code;
  String message;
  Data data;
  bool successStatus;

  AuthEntity({
    required this.code,
    required this.message,
    required this.data,
    required this.successStatus,
  });

  factory AuthEntity.fromJson(Map<String, dynamic> json) => AuthEntity(
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
  String id;
  String userUuid;
  String fullName;
  String email;
  String password;
  DateTime createdOn;

  Data({
    required this.id,
    required this.userUuid,
    required this.fullName,
    required this.email,
    required this.password,
    required this.createdOn,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        userUuid: json["user_uuid"],
        fullName: json["full_name"],
        email: json["email"],
        password: json["password"],
        createdOn: DateTime.parse(json["created_on"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "user_uuid": userUuid,
        "full_name": fullName,
        "email": email,
        "password": password,
        "created_on": createdOn.toIso8601String(),
      };
}
