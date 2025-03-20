// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'update_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UpdateUserModel _$UpdateUserModelFromJson(Map<String, dynamic> json) {
  return _UpdateUserModel.fromJson(json);
}

/// @nodoc
mixin _$UpdateUserModel {
  @JsonKey(name: "code")
  String? get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String? get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DataModel? get data => throw _privateConstructorUsedError;
  @JsonKey(name: "success_status")
  bool? get successStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateUserModelCopyWith<UpdateUserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateUserModelCopyWith<$Res> {
  factory $UpdateUserModelCopyWith(
          UpdateUserModel value, $Res Function(UpdateUserModel) then) =
      _$UpdateUserModelCopyWithImpl<$Res, UpdateUserModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataModel? data,
      @JsonKey(name: "success_status") bool? successStatus});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$UpdateUserModelCopyWithImpl<$Res, $Val extends UpdateUserModel>
    implements $UpdateUserModelCopyWith<$Res> {
  _$UpdateUserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? successStatus = freezed,
  }) {
    return _then(_value.copyWith(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel?,
      successStatus: freezed == successStatus
          ? _value.successStatus
          : successStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataModelCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $DataModelCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UpdateUserModelImplCopyWith<$Res>
    implements $UpdateUserModelCopyWith<$Res> {
  factory _$$UpdateUserModelImplCopyWith(_$UpdateUserModelImpl value,
          $Res Function(_$UpdateUserModelImpl) then) =
      __$$UpdateUserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataModel? data,
      @JsonKey(name: "success_status") bool? successStatus});

  @override
  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class __$$UpdateUserModelImplCopyWithImpl<$Res>
    extends _$UpdateUserModelCopyWithImpl<$Res, _$UpdateUserModelImpl>
    implements _$$UpdateUserModelImplCopyWith<$Res> {
  __$$UpdateUserModelImplCopyWithImpl(
      _$UpdateUserModelImpl _value, $Res Function(_$UpdateUserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? successStatus = freezed,
  }) {
    return _then(_$UpdateUserModelImpl(
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel?,
      successStatus: freezed == successStatus
          ? _value.successStatus
          : successStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UpdateUserModelImpl implements _UpdateUserModel {
  const _$UpdateUserModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "success_status") this.successStatus});

  factory _$UpdateUserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UpdateUserModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final String? code;
  @override
  @JsonKey(name: "message")
  final String? message;
  @override
  @JsonKey(name: "data")
  final DataModel? data;
  @override
  @JsonKey(name: "success_status")
  final bool? successStatus;

  @override
  String toString() {
    return 'UpdateUserModel(code: $code, message: $message, data: $data, successStatus: $successStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUserModelImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.successStatus, successStatus) ||
                other.successStatus == successStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, code, message, data, successStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUserModelImplCopyWith<_$UpdateUserModelImpl> get copyWith =>
      __$$UpdateUserModelImplCopyWithImpl<_$UpdateUserModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UpdateUserModelImplToJson(
      this,
    );
  }
}

abstract class _UpdateUserModel implements UpdateUserModel {
  const factory _UpdateUserModel(
          {@JsonKey(name: "code") final String? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final DataModel? data,
          @JsonKey(name: "success_status") final bool? successStatus}) =
      _$UpdateUserModelImpl;

  factory _UpdateUserModel.fromJson(Map<String, dynamic> json) =
      _$UpdateUserModelImpl.fromJson;

  @override
  @JsonKey(name: "code")
  String? get code;
  @override
  @JsonKey(name: "message")
  String? get message;
  @override
  @JsonKey(name: "data")
  DataModel? get data;
  @override
  @JsonKey(name: "success_status")
  bool? get successStatus;
  @override
  @JsonKey(ignore: true)
  _$$UpdateUserModelImplCopyWith<_$UpdateUserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: "user_uuid")
  String? get userUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "patron_level")
  int? get patronLevel => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_image")
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: "first_name")
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: "last_name")
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: "full_name")
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: "email")
  String? get email => throw _privateConstructorUsedError;
  @JsonKey(name: "mobile_number")
  String? get mobileNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "password")
  String? get password => throw _privateConstructorUsedError;
  @JsonKey(name: "date_of_birth")
  DateTime? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: "gender")
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: "user_address")
  UserAddressModel? get userAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "created_on")
  DateTime? get createdOn => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_on")
  DateTime? get updatedOn => throw _privateConstructorUsedError;
  @JsonKey(name: "fcmToken")
  List<String>? get fcmToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res, DataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "user_uuid") String? userUuid,
      @JsonKey(name: "patron_level") int? patronLevel,
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
      @JsonKey(name: "fcmToken") List<String>? fcmToken});

  $UserAddressModelCopyWith<$Res>? get userAddress;
}

/// @nodoc
class _$DataModelCopyWithImpl<$Res, $Val extends DataModel>
    implements $DataModelCopyWith<$Res> {
  _$DataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUuid = freezed,
    Object? patronLevel = freezed,
    Object? profileImage = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? mobileNumber = freezed,
    Object? password = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? userAddress = freezed,
    Object? createdOn = freezed,
    Object? updatedOn = freezed,
    Object? fcmToken = freezed,
  }) {
    return _then(_value.copyWith(
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      patronLevel: freezed == patronLevel
          ? _value.patronLevel
          : patronLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      userAddress: freezed == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as UserAddressModel?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fcmToken: freezed == fcmToken
          ? _value.fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserAddressModelCopyWith<$Res>? get userAddress {
    if (_value.userAddress == null) {
      return null;
    }

    return $UserAddressModelCopyWith<$Res>(_value.userAddress!, (value) {
      return _then(_value.copyWith(userAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DataModelImplCopyWith<$Res>
    implements $DataModelCopyWith<$Res> {
  factory _$$DataModelImplCopyWith(
          _$DataModelImpl value, $Res Function(_$DataModelImpl) then) =
      __$$DataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "user_uuid") String? userUuid,
      @JsonKey(name: "patron_level") int? patronLevel,
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
      @JsonKey(name: "fcmToken") List<String>? fcmToken});

  @override
  $UserAddressModelCopyWith<$Res>? get userAddress;
}

/// @nodoc
class __$$DataModelImplCopyWithImpl<$Res>
    extends _$DataModelCopyWithImpl<$Res, _$DataModelImpl>
    implements _$$DataModelImplCopyWith<$Res> {
  __$$DataModelImplCopyWithImpl(
      _$DataModelImpl _value, $Res Function(_$DataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userUuid = freezed,
    Object? patronLevel = freezed,
    Object? profileImage = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? mobileNumber = freezed,
    Object? password = freezed,
    Object? dateOfBirth = freezed,
    Object? gender = freezed,
    Object? userAddress = freezed,
    Object? createdOn = freezed,
    Object? updatedOn = freezed,
    Object? fcmToken = freezed,
  }) {
    return _then(_$DataModelImpl(
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      patronLevel: freezed == patronLevel
          ? _value.patronLevel
          : patronLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      mobileNumber: freezed == mobileNumber
          ? _value.mobileNumber
          : mobileNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: freezed == dateOfBirth
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      userAddress: freezed == userAddress
          ? _value.userAddress
          : userAddress // ignore: cast_nullable_to_non_nullable
              as UserAddressModel?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fcmToken: freezed == fcmToken
          ? _value._fcmToken
          : fcmToken // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl implements _DataModel {
  const _$DataModelImpl(
      {@JsonKey(name: "user_uuid") this.userUuid,
      @JsonKey(name: "patron_level") this.patronLevel = 0,
      @JsonKey(name: "profile_image") this.profileImage,
      @JsonKey(name: "first_name") this.firstName,
      @JsonKey(name: "last_name") this.lastName,
      @JsonKey(name: "full_name") this.fullName,
      @JsonKey(name: "email") this.email,
      @JsonKey(name: "mobile_number") this.mobileNumber,
      @JsonKey(name: "password") this.password,
      @JsonKey(name: "date_of_birth") this.dateOfBirth,
      @JsonKey(name: "gender") this.gender,
      @JsonKey(name: "user_address") this.userAddress,
      @JsonKey(name: "created_on") this.createdOn,
      @JsonKey(name: "updated_on") this.updatedOn,
      @JsonKey(name: "fcmToken") final List<String>? fcmToken})
      : _fcmToken = fcmToken;

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  @override
  @JsonKey(name: "user_uuid")
  final String? userUuid;
  @override
  @JsonKey(name: "patron_level")
  final int? patronLevel;
  @override
  @JsonKey(name: "profile_image")
  final String? profileImage;
  @override
  @JsonKey(name: "first_name")
  final String? firstName;
  @override
  @JsonKey(name: "last_name")
  final String? lastName;
  @override
  @JsonKey(name: "full_name")
  final String? fullName;
  @override
  @JsonKey(name: "email")
  final String? email;
  @override
  @JsonKey(name: "mobile_number")
  final String? mobileNumber;
  @override
  @JsonKey(name: "password")
  final String? password;
  @override
  @JsonKey(name: "date_of_birth")
  final DateTime? dateOfBirth;
  @override
  @JsonKey(name: "gender")
  final String? gender;
  @override
  @JsonKey(name: "user_address")
  final UserAddressModel? userAddress;
  @override
  @JsonKey(name: "created_on")
  final DateTime? createdOn;
  @override
  @JsonKey(name: "updated_on")
  final DateTime? updatedOn;
  final List<String>? _fcmToken;
  @override
  @JsonKey(name: "fcmToken")
  List<String>? get fcmToken {
    final value = _fcmToken;
    if (value == null) return null;
    if (_fcmToken is EqualUnmodifiableListView) return _fcmToken;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DataModel(userUuid: $userUuid, patronLevel: $patronLevel, profileImage: $profileImage, firstName: $firstName, lastName: $lastName, fullName: $fullName, email: $email, mobileNumber: $mobileNumber, password: $password, dateOfBirth: $dateOfBirth, gender: $gender, userAddress: $userAddress, createdOn: $createdOn, updatedOn: $updatedOn, fcmToken: $fcmToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            (identical(other.userUuid, userUuid) ||
                other.userUuid == userUuid) &&
            (identical(other.patronLevel, patronLevel) ||
                other.patronLevel == patronLevel) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.mobileNumber, mobileNumber) ||
                other.mobileNumber == mobileNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.dateOfBirth, dateOfBirth) ||
                other.dateOfBirth == dateOfBirth) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.userAddress, userAddress) ||
                other.userAddress == userAddress) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn) &&
            const DeepCollectionEquality().equals(other._fcmToken, _fcmToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userUuid,
      patronLevel,
      profileImage,
      firstName,
      lastName,
      fullName,
      email,
      mobileNumber,
      password,
      dateOfBirth,
      gender,
      userAddress,
      createdOn,
      updatedOn,
      const DeepCollectionEquality().hash(_fcmToken));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      __$$DataModelImplCopyWithImpl<_$DataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataModelImplToJson(
      this,
    );
  }
}

abstract class _DataModel implements DataModel {
  const factory _DataModel(
          {@JsonKey(name: "user_uuid") final String? userUuid,
          @JsonKey(name: "patron_level") final int? patronLevel,
          @JsonKey(name: "profile_image") final String? profileImage,
          @JsonKey(name: "first_name") final String? firstName,
          @JsonKey(name: "last_name") final String? lastName,
          @JsonKey(name: "full_name") final String? fullName,
          @JsonKey(name: "email") final String? email,
          @JsonKey(name: "mobile_number") final String? mobileNumber,
          @JsonKey(name: "password") final String? password,
          @JsonKey(name: "date_of_birth") final DateTime? dateOfBirth,
          @JsonKey(name: "gender") final String? gender,
          @JsonKey(name: "user_address") final UserAddressModel? userAddress,
          @JsonKey(name: "created_on") final DateTime? createdOn,
          @JsonKey(name: "updated_on") final DateTime? updatedOn,
          @JsonKey(name: "fcmToken") final List<String>? fcmToken}) =
      _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @JsonKey(name: "user_uuid")
  String? get userUuid;
  @override
  @JsonKey(name: "patron_level")
  int? get patronLevel;
  @override
  @JsonKey(name: "profile_image")
  String? get profileImage;
  @override
  @JsonKey(name: "first_name")
  String? get firstName;
  @override
  @JsonKey(name: "last_name")
  String? get lastName;
  @override
  @JsonKey(name: "full_name")
  String? get fullName;
  @override
  @JsonKey(name: "email")
  String? get email;
  @override
  @JsonKey(name: "mobile_number")
  String? get mobileNumber;
  @override
  @JsonKey(name: "password")
  String? get password;
  @override
  @JsonKey(name: "date_of_birth")
  DateTime? get dateOfBirth;
  @override
  @JsonKey(name: "gender")
  String? get gender;
  @override
  @JsonKey(name: "user_address")
  UserAddressModel? get userAddress;
  @override
  @JsonKey(name: "created_on")
  DateTime? get createdOn;
  @override
  @JsonKey(name: "updated_on")
  DateTime? get updatedOn;
  @override
  @JsonKey(name: "fcmToken")
  List<String>? get fcmToken;
  @override
  @JsonKey(ignore: true)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserAddressModel _$UserAddressModelFromJson(Map<String, dynamic> json) {
  return _UserAddressModel.fromJson(json);
}

/// @nodoc
mixin _$UserAddressModel {
  @JsonKey(name: "address_type")
  String? get addressType => throw _privateConstructorUsedError;
  @JsonKey(name: "address_line1")
  String? get addressLine1 => throw _privateConstructorUsedError;
  @JsonKey(name: "address_line2")
  String? get addressLine2 => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: "pinCode")
  int? get pinCode => throw _privateConstructorUsedError;
  @JsonKey(name: "landmark")
  String? get landmark => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAddressModelCopyWith<UserAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAddressModelCopyWith<$Res> {
  factory $UserAddressModelCopyWith(
          UserAddressModel value, $Res Function(UserAddressModel) then) =
      _$UserAddressModelCopyWithImpl<$Res, UserAddressModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "address_type") String? addressType,
      @JsonKey(name: "address_line1") String? addressLine1,
      @JsonKey(name: "address_line2") String? addressLine2,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "pinCode") int? pinCode,
      @JsonKey(name: "landmark") String? landmark});
}

/// @nodoc
class _$UserAddressModelCopyWithImpl<$Res, $Val extends UserAddressModel>
    implements $UserAddressModelCopyWith<$Res> {
  _$UserAddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressType = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? pinCode = freezed,
    Object? landmark = freezed,
  }) {
    return _then(_value.copyWith(
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as int?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserAddressModelImplCopyWith<$Res>
    implements $UserAddressModelCopyWith<$Res> {
  factory _$$UserAddressModelImplCopyWith(_$UserAddressModelImpl value,
          $Res Function(_$UserAddressModelImpl) then) =
      __$$UserAddressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "address_type") String? addressType,
      @JsonKey(name: "address_line1") String? addressLine1,
      @JsonKey(name: "address_line2") String? addressLine2,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "pinCode") int? pinCode,
      @JsonKey(name: "landmark") String? landmark});
}

/// @nodoc
class __$$UserAddressModelImplCopyWithImpl<$Res>
    extends _$UserAddressModelCopyWithImpl<$Res, _$UserAddressModelImpl>
    implements _$$UserAddressModelImplCopyWith<$Res> {
  __$$UserAddressModelImplCopyWithImpl(_$UserAddressModelImpl _value,
      $Res Function(_$UserAddressModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressType = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? pinCode = freezed,
    Object? landmark = freezed,
  }) {
    return _then(_$UserAddressModelImpl(
      addressType: freezed == addressType
          ? _value.addressType
          : addressType // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine1: freezed == addressLine1
          ? _value.addressLine1
          : addressLine1 // ignore: cast_nullable_to_non_nullable
              as String?,
      addressLine2: freezed == addressLine2
          ? _value.addressLine2
          : addressLine2 // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as int?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAddressModelImpl implements _UserAddressModel {
  const _$UserAddressModelImpl(
      {@JsonKey(name: "address_type") this.addressType,
      @JsonKey(name: "address_line1") this.addressLine1,
      @JsonKey(name: "address_line2") this.addressLine2,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "state") this.state,
      @JsonKey(name: "pinCode") this.pinCode,
      @JsonKey(name: "landmark") this.landmark});

  factory _$UserAddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserAddressModelImplFromJson(json);

  @override
  @JsonKey(name: "address_type")
  final String? addressType;
  @override
  @JsonKey(name: "address_line1")
  final String? addressLine1;
  @override
  @JsonKey(name: "address_line2")
  final String? addressLine2;
  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "state")
  final String? state;
  @override
  @JsonKey(name: "pinCode")
  final int? pinCode;
  @override
  @JsonKey(name: "landmark")
  final String? landmark;

  @override
  String toString() {
    return 'UserAddressModel(addressType: $addressType, addressLine1: $addressLine1, addressLine2: $addressLine2, city: $city, state: $state, pinCode: $pinCode, landmark: $landmark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserAddressModelImpl &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.addressLine1, addressLine1) ||
                other.addressLine1 == addressLine1) &&
            (identical(other.addressLine2, addressLine2) ||
                other.addressLine2 == addressLine2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, addressType, addressLine1,
      addressLine2, city, state, pinCode, landmark);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserAddressModelImplCopyWith<_$UserAddressModelImpl> get copyWith =>
      __$$UserAddressModelImplCopyWithImpl<_$UserAddressModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAddressModelImplToJson(
      this,
    );
  }
}

abstract class _UserAddressModel implements UserAddressModel {
  const factory _UserAddressModel(
          {@JsonKey(name: "address_type") final String? addressType,
          @JsonKey(name: "address_line1") final String? addressLine1,
          @JsonKey(name: "address_line2") final String? addressLine2,
          @JsonKey(name: "city") final String? city,
          @JsonKey(name: "state") final String? state,
          @JsonKey(name: "pinCode") final int? pinCode,
          @JsonKey(name: "landmark") final String? landmark}) =
      _$UserAddressModelImpl;

  factory _UserAddressModel.fromJson(Map<String, dynamic> json) =
      _$UserAddressModelImpl.fromJson;

  @override
  @JsonKey(name: "address_type")
  String? get addressType;
  @override
  @JsonKey(name: "address_line1")
  String? get addressLine1;
  @override
  @JsonKey(name: "address_line2")
  String? get addressLine2;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "state")
  String? get state;
  @override
  @JsonKey(name: "pinCode")
  int? get pinCode;
  @override
  @JsonKey(name: "landmark")
  String? get landmark;
  @override
  @JsonKey(ignore: true)
  _$$UserAddressModelImplCopyWith<_$UserAddressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
