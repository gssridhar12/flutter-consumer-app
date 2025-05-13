// To parse this JSON data, do
//
//     final updateUserModel = updateUserModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:flutter_consumer_app/features/home_section/domain/entities/response/update_user_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_user_model.freezed.dart';
part 'update_user_model.g.dart';

@freezed
class UpdateUserModel extends UpdateUserEntity with _$UpdateUserModel {
  const factory UpdateUserModel({
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") DataModel? data,
    @JsonKey(name: "success_status") bool? successStatus,
  }) = _UpdateUserModel;

  factory UpdateUserModel.fromJson(Map<String, dynamic> json) => _$UpdateUserModelFromJson(json);
}

@freezed
class DataModel extends Data with _$DataModel {
  const factory DataModel({
    @JsonKey(name: "user_uuid") String? userUuid,
    @JsonKey(name: "patron_level") @Default(0) int? patronLevel,
    @JsonKey(name: "profile_image") String? profileImage,
    @JsonKey(name: "first_name") String? firstName,
    @JsonKey(name: "last_name") String? lastName,
    @JsonKey(name: "full_name") String? fullName,
    @JsonKey(name: "email") String? email,
    @JsonKey(name: "mobile_number") String? mobileNumber,
    @JsonKey(name: "password") String? password,
    @JsonKey(name: "date_of_birth") DateTime? dateOfBirth,
    @JsonKey(name: "gender") String? gender,
    @JsonKey(name: "user_address") UserAddressModel? userAddress,
    @JsonKey(name: "created_on") DateTime? createdOn,
    @JsonKey(name: "updated_on") DateTime? updatedOn,
    @JsonKey(name: "fcmToken") List<String>? fcmToken,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
}

@freezed
class UserAddressModel extends UserAddress with _$UserAddressModel {
  const factory UserAddressModel({
    @JsonKey(name: "address_type") String? addressType,
    @JsonKey(name: "address_line1") String? addressLine1,
    @JsonKey(name: "address_line2") String? addressLine2,
    @JsonKey(name: "city") String? city,
    @JsonKey(name: "state") String? state,
    @JsonKey(name: "pinCode") int? pinCode,
    @JsonKey(name: "landmark") String? landmark,
  }) = _UserAddressModel;

  factory UserAddressModel.fromJson(Map<String, dynamic> json) => _$UserAddressModelFromJson(json);
}
