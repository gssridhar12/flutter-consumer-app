class UpdateUserRequest {
    final String? userUuid;
    final int? patronLevel;
    final String? profileImage;
    final String? firstName;
    final String? lastName;
    final String? fullName;
    final String? email;
    final String? mobileNumber;
    final String? password;
    final DateTime? dateOfBirth;
    final String? gender;
    final AddressUser? addressUser;
    final DateTime? createdOn;
    final DateTime? updatedOn;
    final List<String>? fcmToken;

    UpdateUserRequest({
        this.userUuid,
        this.patronLevel,
        this.profileImage,
        this.firstName,
        this.lastName,
        this.fullName,
        this.email,
        this.mobileNumber,
        this.password,
        this.dateOfBirth,
        this.gender,
        this.addressUser,
        this.createdOn,
        this.updatedOn,
        this.fcmToken,
    });

    factory UpdateUserRequest.fromJson(Map<String, dynamic> json) => UpdateUserRequest(
        userUuid: json["user_uuid"],
        patronLevel: json["patron_level"],
        profileImage: json["profile_image"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        fullName: json["full_name"],
        email: json["email"],
        mobileNumber: json["mobile_number"],
        password: json["password"],
        dateOfBirth: json["date_of_birth"] != null ? DateTime.parse(json["date_of_birth"]) : null,
        gender: json["gender"],
        addressUser: json["user_address"] != null ? AddressUser.fromJson(json["user_address"]) : null,
        createdOn: json["created_on"] != null ? DateTime.parse(json["created_on"]) : null,
        updatedOn: json["updated_on"] != null ? DateTime.parse(json["updated_on"]) : null,
        fcmToken: json["fcmToken"] != null ? List<String>.from(json["fcmToken"].map((x) => x)) : null,
    );

    Map<String, dynamic> toJson() => {
        "user_uuid": userUuid,
        "patron_level": patronLevel,
        "profile_image": profileImage,
        "first_name": firstName,
        "last_name": lastName,
        "full_name": fullName,
        "email": email,
        "mobile_number": mobileNumber,
        "password": password,
        "date_of_birth": dateOfBirth?.toIso8601String(),
        "gender": gender,
        "user_address": addressUser?.toJson(),
        "created_on": createdOn?.toIso8601String(),
        "updated_on": updatedOn?.toIso8601String(),
        "fcmToken": fcmToken != null ? List<dynamic>.from(fcmToken!.map((x) => x)) : null,
    };
}

class AddressUser {
    final String? addressType;
    final String? addressLine1;
    final String? addressLine2;
    final String? city;
    final String? state;
    final String? landmark;
    final int? pinCode;

    AddressUser({
        this.addressType,
        this.addressLine1,
        this.addressLine2,
        this.city,
        this.state,
        this.landmark,
        this.pinCode,
    });

    factory AddressUser.fromJson(Map<String, dynamic> json) => AddressUser(
        addressType: json["address_type"],
        addressLine1: json["address_line1"],
        addressLine2: json["address_line2"],
        city: json["city"],
        state: json["state"],
        landmark: json["landmark"],
        pinCode: json["pinCode"],
    );

    Map<String, dynamic> toJson() => {
        "address_type": addressType,
        "address_line1": addressLine1,
        "address_line2": addressLine2,
        "city": city,
        "state": state,
        "landmark": landmark,
        "pinCode": pinCode,
    };
}
