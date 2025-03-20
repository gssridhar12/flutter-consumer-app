class GetUserEntity {
    final String? code;
    final String? message;
    final Data? data;
    final bool? successStatus;

    GetUserEntity({
        this.code,
        this.message,
        this.data,
        this.successStatus,
    });
}

class Data {
    final String? id;
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
    final UserAddress? userAddress;
    final DateTime? createdOn;
    final DateTime? updatedOn;
    final List<String>? fcmToken;

    Data({
        this.id,
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
        this.userAddress,
        this.createdOn,
        this.updatedOn,
        this.fcmToken,
    });
}

class UserAddress {
    final String? addressType;
    final String? addressLine1;
    final String? addressLine2;
    final String? city;
    final String? state;
    final int? pinCode;
    final String? landmark;

    UserAddress({
        this.addressType,
        this.addressLine1,
        this.addressLine2,
        this.city,
        this.state,
        this.pinCode,
        this.landmark,
    });
}
