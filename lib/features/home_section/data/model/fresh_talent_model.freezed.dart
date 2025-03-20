// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fresh_talent_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FreshTalentModel _$FreshTalentModelFromJson(Map<String, dynamic> json) {
  return _FreshTalentModel.fromJson(json);
}

/// @nodoc
mixin _$FreshTalentModel {
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
  $FreshTalentModelCopyWith<FreshTalentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreshTalentModelCopyWith<$Res> {
  factory $FreshTalentModelCopyWith(
          FreshTalentModel value, $Res Function(FreshTalentModel) then) =
      _$FreshTalentModelCopyWithImpl<$Res, FreshTalentModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataModel? data,
      @JsonKey(name: "success_status") bool? successStatus});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$FreshTalentModelCopyWithImpl<$Res, $Val extends FreshTalentModel>
    implements $FreshTalentModelCopyWith<$Res> {
  _$FreshTalentModelCopyWithImpl(this._value, this._then);

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
abstract class _$$FreshTalentModelImplCopyWith<$Res>
    implements $FreshTalentModelCopyWith<$Res> {
  factory _$$FreshTalentModelImplCopyWith(_$FreshTalentModelImpl value,
          $Res Function(_$FreshTalentModelImpl) then) =
      __$$FreshTalentModelImplCopyWithImpl<$Res>;
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
class __$$FreshTalentModelImplCopyWithImpl<$Res>
    extends _$FreshTalentModelCopyWithImpl<$Res, _$FreshTalentModelImpl>
    implements _$$FreshTalentModelImplCopyWith<$Res> {
  __$$FreshTalentModelImplCopyWithImpl(_$FreshTalentModelImpl _value,
      $Res Function(_$FreshTalentModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? successStatus = freezed,
  }) {
    return _then(_$FreshTalentModelImpl(
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
class _$FreshTalentModelImpl implements _FreshTalentModel {
  const _$FreshTalentModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "success_status") this.successStatus});

  factory _$FreshTalentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FreshTalentModelImplFromJson(json);

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
    return 'FreshTalentModel(code: $code, message: $message, data: $data, successStatus: $successStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FreshTalentModelImpl &&
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
  _$$FreshTalentModelImplCopyWith<_$FreshTalentModelImpl> get copyWith =>
      __$$FreshTalentModelImplCopyWithImpl<_$FreshTalentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FreshTalentModelImplToJson(
      this,
    );
  }
}

abstract class _FreshTalentModel implements FreshTalentModel {
  const factory _FreshTalentModel(
          {@JsonKey(name: "code") final String? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final DataModel? data,
          @JsonKey(name: "success_status") final bool? successStatus}) =
      _$FreshTalentModelImpl;

  factory _FreshTalentModel.fromJson(Map<String, dynamic> json) =
      _$FreshTalentModelImpl.fromJson;

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
  _$$FreshTalentModelImplCopyWith<_$FreshTalentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: "profiles")
  List<ProfileElementModel>? get profiles => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: "size")
  int? get size => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "count") int? count,
      @JsonKey(name: "profiles") List<ProfileElementModel>? profiles,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "size") int? size});
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
    Object? count = freezed,
    Object? profiles = freezed,
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      profiles: freezed == profiles
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<ProfileElementModel>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
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
      {@JsonKey(name: "count") int? count,
      @JsonKey(name: "profiles") List<ProfileElementModel>? profiles,
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "size") int? size});
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
    Object? count = freezed,
    Object? profiles = freezed,
    Object? page = freezed,
    Object? size = freezed,
  }) {
    return _then(_$DataModelImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      profiles: freezed == profiles
          ? _value._profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<ProfileElementModel>?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl implements _DataModel {
  const _$DataModelImpl(
      {@JsonKey(name: "count") this.count,
      @JsonKey(name: "profiles") final List<ProfileElementModel>? profiles,
      @JsonKey(name: "page") this.page,
      @JsonKey(name: "size") this.size})
      : _profiles = profiles;

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  @override
  @JsonKey(name: "count")
  final int? count;
  final List<ProfileElementModel>? _profiles;
  @override
  @JsonKey(name: "profiles")
  List<ProfileElementModel>? get profiles {
    final value = _profiles;
    if (value == null) return null;
    if (_profiles is EqualUnmodifiableListView) return _profiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "page")
  final int? page;
  @override
  @JsonKey(name: "size")
  final int? size;

  @override
  String toString() {
    return 'DataModel(count: $count, profiles: $profiles, page: $page, size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            const DeepCollectionEquality().equals(other._profiles, _profiles) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count,
      const DeepCollectionEquality().hash(_profiles), page, size);

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
      {@JsonKey(name: "count") final int? count,
      @JsonKey(name: "profiles") final List<ProfileElementModel>? profiles,
      @JsonKey(name: "page") final int? page,
      @JsonKey(name: "size") final int? size}) = _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @JsonKey(name: "count")
  int? get count;
  @override
  @JsonKey(name: "profiles")
  List<ProfileElementModel>? get profiles;
  @override
  @JsonKey(name: "page")
  int? get page;
  @override
  @JsonKey(name: "size")
  int? get size;
  @override
  @JsonKey(ignore: true)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileElementModel _$ProfileElementModelFromJson(Map<String, dynamic> json) {
  return _ProfileElementModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileElementModel {
  @JsonKey(name: "profileReviews")
  List<ProfileReviewModel>? get profileReviews =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "profile")
  ProfileProfileModel? get profile => throw _privateConstructorUsedError;
  @JsonKey(name: "megmoGigsCount")
  int? get megmoGigsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileElementModelCopyWith<ProfileElementModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileElementModelCopyWith<$Res> {
  factory $ProfileElementModelCopyWith(
          ProfileElementModel value, $Res Function(ProfileElementModel) then) =
      _$ProfileElementModelCopyWithImpl<$Res, ProfileElementModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "profileReviews")
      List<ProfileReviewModel>? profileReviews,
      @JsonKey(name: "profile") ProfileProfileModel? profile,
      @JsonKey(name: "megmoGigsCount") int? megmoGigsCount});

  $ProfileProfileModelCopyWith<$Res>? get profile;
}

/// @nodoc
class _$ProfileElementModelCopyWithImpl<$Res, $Val extends ProfileElementModel>
    implements $ProfileElementModelCopyWith<$Res> {
  _$ProfileElementModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileReviews = freezed,
    Object? profile = freezed,
    Object? megmoGigsCount = freezed,
  }) {
    return _then(_value.copyWith(
      profileReviews: freezed == profileReviews
          ? _value.profileReviews
          : profileReviews // ignore: cast_nullable_to_non_nullable
              as List<ProfileReviewModel>?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileProfileModel?,
      megmoGigsCount: freezed == megmoGigsCount
          ? _value.megmoGigsCount
          : megmoGigsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileProfileModelCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileProfileModelCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileElementModelImplCopyWith<$Res>
    implements $ProfileElementModelCopyWith<$Res> {
  factory _$$ProfileElementModelImplCopyWith(_$ProfileElementModelImpl value,
          $Res Function(_$ProfileElementModelImpl) then) =
      __$$ProfileElementModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "profileReviews")
      List<ProfileReviewModel>? profileReviews,
      @JsonKey(name: "profile") ProfileProfileModel? profile,
      @JsonKey(name: "megmoGigsCount") int? megmoGigsCount});

  @override
  $ProfileProfileModelCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$ProfileElementModelImplCopyWithImpl<$Res>
    extends _$ProfileElementModelCopyWithImpl<$Res, _$ProfileElementModelImpl>
    implements _$$ProfileElementModelImplCopyWith<$Res> {
  __$$ProfileElementModelImplCopyWithImpl(_$ProfileElementModelImpl _value,
      $Res Function(_$ProfileElementModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileReviews = freezed,
    Object? profile = freezed,
    Object? megmoGigsCount = freezed,
  }) {
    return _then(_$ProfileElementModelImpl(
      profileReviews: freezed == profileReviews
          ? _value._profileReviews
          : profileReviews // ignore: cast_nullable_to_non_nullable
              as List<ProfileReviewModel>?,
      profile: freezed == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileProfileModel?,
      megmoGigsCount: freezed == megmoGigsCount
          ? _value.megmoGigsCount
          : megmoGigsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileElementModelImpl implements _ProfileElementModel {
  const _$ProfileElementModelImpl(
      {@JsonKey(name: "profileReviews")
      final List<ProfileReviewModel>? profileReviews,
      @JsonKey(name: "profile") this.profile,
      @JsonKey(name: "megmoGigsCount") this.megmoGigsCount})
      : _profileReviews = profileReviews;

  factory _$ProfileElementModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileElementModelImplFromJson(json);

  final List<ProfileReviewModel>? _profileReviews;
  @override
  @JsonKey(name: "profileReviews")
  List<ProfileReviewModel>? get profileReviews {
    final value = _profileReviews;
    if (value == null) return null;
    if (_profileReviews is EqualUnmodifiableListView) return _profileReviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "profile")
  final ProfileProfileModel? profile;
  @override
  @JsonKey(name: "megmoGigsCount")
  final int? megmoGigsCount;

  @override
  String toString() {
    return 'ProfileElementModel(profileReviews: $profileReviews, profile: $profile, megmoGigsCount: $megmoGigsCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileElementModelImpl &&
            const DeepCollectionEquality()
                .equals(other._profileReviews, _profileReviews) &&
            (identical(other.profile, profile) || other.profile == profile) &&
            (identical(other.megmoGigsCount, megmoGigsCount) ||
                other.megmoGigsCount == megmoGigsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_profileReviews),
      profile,
      megmoGigsCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileElementModelImplCopyWith<_$ProfileElementModelImpl> get copyWith =>
      __$$ProfileElementModelImplCopyWithImpl<_$ProfileElementModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileElementModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileElementModel implements ProfileElementModel {
  const factory _ProfileElementModel(
          {@JsonKey(name: "profileReviews")
          final List<ProfileReviewModel>? profileReviews,
          @JsonKey(name: "profile") final ProfileProfileModel? profile,
          @JsonKey(name: "megmoGigsCount") final int? megmoGigsCount}) =
      _$ProfileElementModelImpl;

  factory _ProfileElementModel.fromJson(Map<String, dynamic> json) =
      _$ProfileElementModelImpl.fromJson;

  @override
  @JsonKey(name: "profileReviews")
  List<ProfileReviewModel>? get profileReviews;
  @override
  @JsonKey(name: "profile")
  ProfileProfileModel? get profile;
  @override
  @JsonKey(name: "megmoGigsCount")
  int? get megmoGigsCount;
  @override
  @JsonKey(ignore: true)
  _$$ProfileElementModelImplCopyWith<_$ProfileElementModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileProfileModel _$ProfileProfileModelFromJson(Map<String, dynamic> json) {
  return _ProfileProfileModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileProfileModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_uuid")
  String? get profileUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_uuid")
  String? get partnerUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_details")
  ProfileDetailsModel? get profileDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "portfolio")
  List<PortfolioModel>? get portfolio => throw _privateConstructorUsedError;
  @JsonKey(name: "megmo_gigs")
  List<MegmoGigModel>? get megmoGigs => throw _privateConstructorUsedError;
  @JsonKey(name: "FAQs")
  List<FaqModel>? get faQs => throw _privateConstructorUsedError;
  @JsonKey(name: "created_on")
  DateTime? get createdOn => throw _privateConstructorUsedError;
  @JsonKey(name: "availability")
  AvailabilityModel? get availability => throw _privateConstructorUsedError;
  @JsonKey(name: "partnerLocation")
  List<PartnerLocationModel>? get partnerLocation =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "gallery")
  List<GalleryModel>? get gallery => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileProfileModelCopyWith<ProfileProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileProfileModelCopyWith<$Res> {
  factory $ProfileProfileModelCopyWith(
          ProfileProfileModel value, $Res Function(ProfileProfileModel) then) =
      _$ProfileProfileModelCopyWithImpl<$Res, ProfileProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "profile_uuid") String? profileUuid,
      @JsonKey(name: "partner_uuid") String? partnerUuid,
      @JsonKey(name: "profile_details") ProfileDetailsModel? profileDetails,
      @JsonKey(name: "portfolio") List<PortfolioModel>? portfolio,
      @JsonKey(name: "megmo_gigs") List<MegmoGigModel>? megmoGigs,
      @JsonKey(name: "FAQs") List<FaqModel>? faQs,
      @JsonKey(name: "created_on") DateTime? createdOn,
      @JsonKey(name: "availability") AvailabilityModel? availability,
      @JsonKey(name: "partnerLocation")
      List<PartnerLocationModel>? partnerLocation,
      @JsonKey(name: "gallery") List<GalleryModel>? gallery});

  $ProfileDetailsModelCopyWith<$Res>? get profileDetails;
  $AvailabilityModelCopyWith<$Res>? get availability;
}

/// @nodoc
class _$ProfileProfileModelCopyWithImpl<$Res, $Val extends ProfileProfileModel>
    implements $ProfileProfileModelCopyWith<$Res> {
  _$ProfileProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? profileUuid = freezed,
    Object? partnerUuid = freezed,
    Object? profileDetails = freezed,
    Object? portfolio = freezed,
    Object? megmoGigs = freezed,
    Object? faQs = freezed,
    Object? createdOn = freezed,
    Object? availability = freezed,
    Object? partnerLocation = freezed,
    Object? gallery = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      profileUuid: freezed == profileUuid
          ? _value.profileUuid
          : profileUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerUuid: freezed == partnerUuid
          ? _value.partnerUuid
          : partnerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      profileDetails: freezed == profileDetails
          ? _value.profileDetails
          : profileDetails // ignore: cast_nullable_to_non_nullable
              as ProfileDetailsModel?,
      portfolio: freezed == portfolio
          ? _value.portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as List<PortfolioModel>?,
      megmoGigs: freezed == megmoGigs
          ? _value.megmoGigs
          : megmoGigs // ignore: cast_nullable_to_non_nullable
              as List<MegmoGigModel>?,
      faQs: freezed == faQs
          ? _value.faQs
          : faQs // ignore: cast_nullable_to_non_nullable
              as List<FaqModel>?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as AvailabilityModel?,
      partnerLocation: freezed == partnerLocation
          ? _value.partnerLocation
          : partnerLocation // ignore: cast_nullable_to_non_nullable
              as List<PartnerLocationModel>?,
      gallery: freezed == gallery
          ? _value.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<GalleryModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileDetailsModelCopyWith<$Res>? get profileDetails {
    if (_value.profileDetails == null) {
      return null;
    }

    return $ProfileDetailsModelCopyWith<$Res>(_value.profileDetails!, (value) {
      return _then(_value.copyWith(profileDetails: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AvailabilityModelCopyWith<$Res>? get availability {
    if (_value.availability == null) {
      return null;
    }

    return $AvailabilityModelCopyWith<$Res>(_value.availability!, (value) {
      return _then(_value.copyWith(availability: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProfileProfileModelImplCopyWith<$Res>
    implements $ProfileProfileModelCopyWith<$Res> {
  factory _$$ProfileProfileModelImplCopyWith(_$ProfileProfileModelImpl value,
          $Res Function(_$ProfileProfileModelImpl) then) =
      __$$ProfileProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "profile_uuid") String? profileUuid,
      @JsonKey(name: "partner_uuid") String? partnerUuid,
      @JsonKey(name: "profile_details") ProfileDetailsModel? profileDetails,
      @JsonKey(name: "portfolio") List<PortfolioModel>? portfolio,
      @JsonKey(name: "megmo_gigs") List<MegmoGigModel>? megmoGigs,
      @JsonKey(name: "FAQs") List<FaqModel>? faQs,
      @JsonKey(name: "created_on") DateTime? createdOn,
      @JsonKey(name: "availability") AvailabilityModel? availability,
      @JsonKey(name: "partnerLocation")
      List<PartnerLocationModel>? partnerLocation,
      @JsonKey(name: "gallery") List<GalleryModel>? gallery});

  @override
  $ProfileDetailsModelCopyWith<$Res>? get profileDetails;
  @override
  $AvailabilityModelCopyWith<$Res>? get availability;
}

/// @nodoc
class __$$ProfileProfileModelImplCopyWithImpl<$Res>
    extends _$ProfileProfileModelCopyWithImpl<$Res, _$ProfileProfileModelImpl>
    implements _$$ProfileProfileModelImplCopyWith<$Res> {
  __$$ProfileProfileModelImplCopyWithImpl(_$ProfileProfileModelImpl _value,
      $Res Function(_$ProfileProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? profileUuid = freezed,
    Object? partnerUuid = freezed,
    Object? profileDetails = freezed,
    Object? portfolio = freezed,
    Object? megmoGigs = freezed,
    Object? faQs = freezed,
    Object? createdOn = freezed,
    Object? availability = freezed,
    Object? partnerLocation = freezed,
    Object? gallery = freezed,
  }) {
    return _then(_$ProfileProfileModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      profileUuid: freezed == profileUuid
          ? _value.profileUuid
          : profileUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerUuid: freezed == partnerUuid
          ? _value.partnerUuid
          : partnerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      profileDetails: freezed == profileDetails
          ? _value.profileDetails
          : profileDetails // ignore: cast_nullable_to_non_nullable
              as ProfileDetailsModel?,
      portfolio: freezed == portfolio
          ? _value._portfolio
          : portfolio // ignore: cast_nullable_to_non_nullable
              as List<PortfolioModel>?,
      megmoGigs: freezed == megmoGigs
          ? _value._megmoGigs
          : megmoGigs // ignore: cast_nullable_to_non_nullable
              as List<MegmoGigModel>?,
      faQs: freezed == faQs
          ? _value._faQs
          : faQs // ignore: cast_nullable_to_non_nullable
              as List<FaqModel>?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      availability: freezed == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as AvailabilityModel?,
      partnerLocation: freezed == partnerLocation
          ? _value._partnerLocation
          : partnerLocation // ignore: cast_nullable_to_non_nullable
              as List<PartnerLocationModel>?,
      gallery: freezed == gallery
          ? _value._gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<GalleryModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileProfileModelImpl implements _ProfileProfileModel {
  const _$ProfileProfileModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "profile_uuid") this.profileUuid,
      @JsonKey(name: "partner_uuid") this.partnerUuid,
      @JsonKey(name: "profile_details") this.profileDetails,
      @JsonKey(name: "portfolio") final List<PortfolioModel>? portfolio,
      @JsonKey(name: "megmo_gigs") final List<MegmoGigModel>? megmoGigs,
      @JsonKey(name: "FAQs") final List<FaqModel>? faQs,
      @JsonKey(name: "created_on") this.createdOn,
      @JsonKey(name: "availability") this.availability,
      @JsonKey(name: "partnerLocation")
      final List<PartnerLocationModel>? partnerLocation,
      @JsonKey(name: "gallery") final List<GalleryModel>? gallery})
      : _portfolio = portfolio,
        _megmoGigs = megmoGigs,
        _faQs = faQs,
        _partnerLocation = partnerLocation,
        _gallery = gallery;

  factory _$ProfileProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileProfileModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "profile_uuid")
  final String? profileUuid;
  @override
  @JsonKey(name: "partner_uuid")
  final String? partnerUuid;
  @override
  @JsonKey(name: "profile_details")
  final ProfileDetailsModel? profileDetails;
  final List<PortfolioModel>? _portfolio;
  @override
  @JsonKey(name: "portfolio")
  List<PortfolioModel>? get portfolio {
    final value = _portfolio;
    if (value == null) return null;
    if (_portfolio is EqualUnmodifiableListView) return _portfolio;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MegmoGigModel>? _megmoGigs;
  @override
  @JsonKey(name: "megmo_gigs")
  List<MegmoGigModel>? get megmoGigs {
    final value = _megmoGigs;
    if (value == null) return null;
    if (_megmoGigs is EqualUnmodifiableListView) return _megmoGigs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FaqModel>? _faQs;
  @override
  @JsonKey(name: "FAQs")
  List<FaqModel>? get faQs {
    final value = _faQs;
    if (value == null) return null;
    if (_faQs is EqualUnmodifiableListView) return _faQs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "created_on")
  final DateTime? createdOn;
  @override
  @JsonKey(name: "availability")
  final AvailabilityModel? availability;
  final List<PartnerLocationModel>? _partnerLocation;
  @override
  @JsonKey(name: "partnerLocation")
  List<PartnerLocationModel>? get partnerLocation {
    final value = _partnerLocation;
    if (value == null) return null;
    if (_partnerLocation is EqualUnmodifiableListView) return _partnerLocation;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<GalleryModel>? _gallery;
  @override
  @JsonKey(name: "gallery")
  List<GalleryModel>? get gallery {
    final value = _gallery;
    if (value == null) return null;
    if (_gallery is EqualUnmodifiableListView) return _gallery;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProfileProfileModel(id: $id, profileUuid: $profileUuid, partnerUuid: $partnerUuid, profileDetails: $profileDetails, portfolio: $portfolio, megmoGigs: $megmoGigs, faQs: $faQs, createdOn: $createdOn, availability: $availability, partnerLocation: $partnerLocation, gallery: $gallery)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileProfileModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.profileUuid, profileUuid) ||
                other.profileUuid == profileUuid) &&
            (identical(other.partnerUuid, partnerUuid) ||
                other.partnerUuid == partnerUuid) &&
            (identical(other.profileDetails, profileDetails) ||
                other.profileDetails == profileDetails) &&
            const DeepCollectionEquality()
                .equals(other._portfolio, _portfolio) &&
            const DeepCollectionEquality()
                .equals(other._megmoGigs, _megmoGigs) &&
            const DeepCollectionEquality().equals(other._faQs, _faQs) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            const DeepCollectionEquality()
                .equals(other._partnerLocation, _partnerLocation) &&
            const DeepCollectionEquality().equals(other._gallery, _gallery));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      profileUuid,
      partnerUuid,
      profileDetails,
      const DeepCollectionEquality().hash(_portfolio),
      const DeepCollectionEquality().hash(_megmoGigs),
      const DeepCollectionEquality().hash(_faQs),
      createdOn,
      availability,
      const DeepCollectionEquality().hash(_partnerLocation),
      const DeepCollectionEquality().hash(_gallery));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileProfileModelImplCopyWith<_$ProfileProfileModelImpl> get copyWith =>
      __$$ProfileProfileModelImplCopyWithImpl<_$ProfileProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileProfileModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileProfileModel implements ProfileProfileModel {
  const factory _ProfileProfileModel(
          {@JsonKey(name: "id") final String? id,
          @JsonKey(name: "profile_uuid") final String? profileUuid,
          @JsonKey(name: "partner_uuid") final String? partnerUuid,
          @JsonKey(name: "profile_details")
          final ProfileDetailsModel? profileDetails,
          @JsonKey(name: "portfolio") final List<PortfolioModel>? portfolio,
          @JsonKey(name: "megmo_gigs") final List<MegmoGigModel>? megmoGigs,
          @JsonKey(name: "FAQs") final List<FaqModel>? faQs,
          @JsonKey(name: "created_on") final DateTime? createdOn,
          @JsonKey(name: "availability") final AvailabilityModel? availability,
          @JsonKey(name: "partnerLocation")
          final List<PartnerLocationModel>? partnerLocation,
          @JsonKey(name: "gallery") final List<GalleryModel>? gallery}) =
      _$ProfileProfileModelImpl;

  factory _ProfileProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileProfileModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "profile_uuid")
  String? get profileUuid;
  @override
  @JsonKey(name: "partner_uuid")
  String? get partnerUuid;
  @override
  @JsonKey(name: "profile_details")
  ProfileDetailsModel? get profileDetails;
  @override
  @JsonKey(name: "portfolio")
  List<PortfolioModel>? get portfolio;
  @override
  @JsonKey(name: "megmo_gigs")
  List<MegmoGigModel>? get megmoGigs;
  @override
  @JsonKey(name: "FAQs")
  List<FaqModel>? get faQs;
  @override
  @JsonKey(name: "created_on")
  DateTime? get createdOn;
  @override
  @JsonKey(name: "availability")
  AvailabilityModel? get availability;
  @override
  @JsonKey(name: "partnerLocation")
  List<PartnerLocationModel>? get partnerLocation;
  @override
  @JsonKey(name: "gallery")
  List<GalleryModel>? get gallery;
  @override
  @JsonKey(ignore: true)
  _$$ProfileProfileModelImplCopyWith<_$ProfileProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AvailabilityModel _$AvailabilityModelFromJson(Map<String, dynamic> json) {
  return _AvailabilityModel.fromJson(json);
}

/// @nodoc
mixin _$AvailabilityModel {
  @JsonKey(name: "working_timing")
  List<WorkingTimingModel>? get workingTiming =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "off_days")
  List<String>? get offDays => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvailabilityModelCopyWith<AvailabilityModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvailabilityModelCopyWith<$Res> {
  factory $AvailabilityModelCopyWith(
          AvailabilityModel value, $Res Function(AvailabilityModel) then) =
      _$AvailabilityModelCopyWithImpl<$Res, AvailabilityModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "working_timing") List<WorkingTimingModel>? workingTiming,
      @JsonKey(name: "off_days") List<String>? offDays});
}

/// @nodoc
class _$AvailabilityModelCopyWithImpl<$Res, $Val extends AvailabilityModel>
    implements $AvailabilityModelCopyWith<$Res> {
  _$AvailabilityModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workingTiming = freezed,
    Object? offDays = freezed,
  }) {
    return _then(_value.copyWith(
      workingTiming: freezed == workingTiming
          ? _value.workingTiming
          : workingTiming // ignore: cast_nullable_to_non_nullable
              as List<WorkingTimingModel>?,
      offDays: freezed == offDays
          ? _value.offDays
          : offDays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AvailabilityModelImplCopyWith<$Res>
    implements $AvailabilityModelCopyWith<$Res> {
  factory _$$AvailabilityModelImplCopyWith(_$AvailabilityModelImpl value,
          $Res Function(_$AvailabilityModelImpl) then) =
      __$$AvailabilityModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "working_timing") List<WorkingTimingModel>? workingTiming,
      @JsonKey(name: "off_days") List<String>? offDays});
}

/// @nodoc
class __$$AvailabilityModelImplCopyWithImpl<$Res>
    extends _$AvailabilityModelCopyWithImpl<$Res, _$AvailabilityModelImpl>
    implements _$$AvailabilityModelImplCopyWith<$Res> {
  __$$AvailabilityModelImplCopyWithImpl(_$AvailabilityModelImpl _value,
      $Res Function(_$AvailabilityModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? workingTiming = freezed,
    Object? offDays = freezed,
  }) {
    return _then(_$AvailabilityModelImpl(
      workingTiming: freezed == workingTiming
          ? _value._workingTiming
          : workingTiming // ignore: cast_nullable_to_non_nullable
              as List<WorkingTimingModel>?,
      offDays: freezed == offDays
          ? _value._offDays
          : offDays // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityModelImpl implements _AvailabilityModel {
  const _$AvailabilityModelImpl(
      {@JsonKey(name: "working_timing")
      final List<WorkingTimingModel>? workingTiming,
      @JsonKey(name: "off_days") final List<String>? offDays})
      : _workingTiming = workingTiming,
        _offDays = offDays;

  factory _$AvailabilityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilityModelImplFromJson(json);

  final List<WorkingTimingModel>? _workingTiming;
  @override
  @JsonKey(name: "working_timing")
  List<WorkingTimingModel>? get workingTiming {
    final value = _workingTiming;
    if (value == null) return null;
    if (_workingTiming is EqualUnmodifiableListView) return _workingTiming;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _offDays;
  @override
  @JsonKey(name: "off_days")
  List<String>? get offDays {
    final value = _offDays;
    if (value == null) return null;
    if (_offDays is EqualUnmodifiableListView) return _offDays;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AvailabilityModel(workingTiming: $workingTiming, offDays: $offDays)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityModelImpl &&
            const DeepCollectionEquality()
                .equals(other._workingTiming, _workingTiming) &&
            const DeepCollectionEquality().equals(other._offDays, _offDays));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_workingTiming),
      const DeepCollectionEquality().hash(_offDays));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AvailabilityModelImplCopyWith<_$AvailabilityModelImpl> get copyWith =>
      __$$AvailabilityModelImplCopyWithImpl<_$AvailabilityModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AvailabilityModelImplToJson(
      this,
    );
  }
}

abstract class _AvailabilityModel implements AvailabilityModel {
  const factory _AvailabilityModel(
          {@JsonKey(name: "working_timing")
          final List<WorkingTimingModel>? workingTiming,
          @JsonKey(name: "off_days") final List<String>? offDays}) =
      _$AvailabilityModelImpl;

  factory _AvailabilityModel.fromJson(Map<String, dynamic> json) =
      _$AvailabilityModelImpl.fromJson;

  @override
  @JsonKey(name: "working_timing")
  List<WorkingTimingModel>? get workingTiming;
  @override
  @JsonKey(name: "off_days")
  List<String>? get offDays;
  @override
  @JsonKey(ignore: true)
  _$$AvailabilityModelImplCopyWith<_$AvailabilityModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WorkingTimingModel _$WorkingTimingModelFromJson(Map<String, dynamic> json) {
  return _WorkingTimingModel.fromJson(json);
}

/// @nodoc
mixin _$WorkingTimingModel {
  @JsonKey(name: "day")
  String? get day => throw _privateConstructorUsedError;
  @JsonKey(name: "from")
  String? get from => throw _privateConstructorUsedError;
  @JsonKey(name: "to")
  String? get to => throw _privateConstructorUsedError;
  @JsonKey(name: "open")
  bool? get open => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkingTimingModelCopyWith<WorkingTimingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkingTimingModelCopyWith<$Res> {
  factory $WorkingTimingModelCopyWith(
          WorkingTimingModel value, $Res Function(WorkingTimingModel) then) =
      _$WorkingTimingModelCopyWithImpl<$Res, WorkingTimingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "day") String? day,
      @JsonKey(name: "from") String? from,
      @JsonKey(name: "to") String? to,
      @JsonKey(name: "open") bool? open});
}

/// @nodoc
class _$WorkingTimingModelCopyWithImpl<$Res, $Val extends WorkingTimingModel>
    implements $WorkingTimingModelCopyWith<$Res> {
  _$WorkingTimingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? open = freezed,
  }) {
    return _then(_value.copyWith(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      open: freezed == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WorkingTimingModelImplCopyWith<$Res>
    implements $WorkingTimingModelCopyWith<$Res> {
  factory _$$WorkingTimingModelImplCopyWith(_$WorkingTimingModelImpl value,
          $Res Function(_$WorkingTimingModelImpl) then) =
      __$$WorkingTimingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "day") String? day,
      @JsonKey(name: "from") String? from,
      @JsonKey(name: "to") String? to,
      @JsonKey(name: "open") bool? open});
}

/// @nodoc
class __$$WorkingTimingModelImplCopyWithImpl<$Res>
    extends _$WorkingTimingModelCopyWithImpl<$Res, _$WorkingTimingModelImpl>
    implements _$$WorkingTimingModelImplCopyWith<$Res> {
  __$$WorkingTimingModelImplCopyWithImpl(_$WorkingTimingModelImpl _value,
      $Res Function(_$WorkingTimingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = freezed,
    Object? from = freezed,
    Object? to = freezed,
    Object? open = freezed,
  }) {
    return _then(_$WorkingTimingModelImpl(
      day: freezed == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String?,
      from: freezed == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String?,
      to: freezed == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      open: freezed == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkingTimingModelImpl implements _WorkingTimingModel {
  const _$WorkingTimingModelImpl(
      {@JsonKey(name: "day") this.day,
      @JsonKey(name: "from") this.from,
      @JsonKey(name: "to") this.to,
      @JsonKey(name: "open") this.open});

  factory _$WorkingTimingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkingTimingModelImplFromJson(json);

  @override
  @JsonKey(name: "day")
  final String? day;
  @override
  @JsonKey(name: "from")
  final String? from;
  @override
  @JsonKey(name: "to")
  final String? to;
  @override
  @JsonKey(name: "open")
  final bool? open;

  @override
  String toString() {
    return 'WorkingTimingModel(day: $day, from: $from, to: $to, open: $open)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WorkingTimingModelImpl &&
            (identical(other.day, day) || other.day == day) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.open, open) || other.open == open));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, day, from, to, open);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WorkingTimingModelImplCopyWith<_$WorkingTimingModelImpl> get copyWith =>
      __$$WorkingTimingModelImplCopyWithImpl<_$WorkingTimingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WorkingTimingModelImplToJson(
      this,
    );
  }
}

abstract class _WorkingTimingModel implements WorkingTimingModel {
  const factory _WorkingTimingModel(
      {@JsonKey(name: "day") final String? day,
      @JsonKey(name: "from") final String? from,
      @JsonKey(name: "to") final String? to,
      @JsonKey(name: "open") final bool? open}) = _$WorkingTimingModelImpl;

  factory _WorkingTimingModel.fromJson(Map<String, dynamic> json) =
      _$WorkingTimingModelImpl.fromJson;

  @override
  @JsonKey(name: "day")
  String? get day;
  @override
  @JsonKey(name: "from")
  String? get from;
  @override
  @JsonKey(name: "to")
  String? get to;
  @override
  @JsonKey(name: "open")
  bool? get open;
  @override
  @JsonKey(ignore: true)
  _$$WorkingTimingModelImplCopyWith<_$WorkingTimingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FaqModel _$FaqModelFromJson(Map<String, dynamic> json) {
  return _FaqModel.fromJson(json);
}

/// @nodoc
mixin _$FaqModel {
  @JsonKey(name: "question")
  String? get question => throw _privateConstructorUsedError;
  @JsonKey(name: "answer")
  String? get answer => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "assigned_to")
  List<String>? get assignedTo => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FaqModelCopyWith<FaqModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FaqModelCopyWith<$Res> {
  factory $FaqModelCopyWith(FaqModel value, $Res Function(FaqModel) then) =
      _$FaqModelCopyWithImpl<$Res, FaqModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "question") String? question,
      @JsonKey(name: "answer") String? answer,
      @JsonKey(name: "tags") List<String>? tags,
      @JsonKey(name: "assigned_to") List<String>? assignedTo,
      @JsonKey(name: "is_active") bool? isActive});
}

/// @nodoc
class _$FaqModelCopyWithImpl<$Res, $Val extends FaqModel>
    implements $FaqModelCopyWith<$Res> {
  _$FaqModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
    Object? tags = freezed,
    Object? assignedTo = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      assignedTo: freezed == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FaqModelImplCopyWith<$Res>
    implements $FaqModelCopyWith<$Res> {
  factory _$$FaqModelImplCopyWith(
          _$FaqModelImpl value, $Res Function(_$FaqModelImpl) then) =
      __$$FaqModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "question") String? question,
      @JsonKey(name: "answer") String? answer,
      @JsonKey(name: "tags") List<String>? tags,
      @JsonKey(name: "assigned_to") List<String>? assignedTo,
      @JsonKey(name: "is_active") bool? isActive});
}

/// @nodoc
class __$$FaqModelImplCopyWithImpl<$Res>
    extends _$FaqModelCopyWithImpl<$Res, _$FaqModelImpl>
    implements _$$FaqModelImplCopyWith<$Res> {
  __$$FaqModelImplCopyWithImpl(
      _$FaqModelImpl _value, $Res Function(_$FaqModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = freezed,
    Object? answer = freezed,
    Object? tags = freezed,
    Object? assignedTo = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$FaqModelImpl(
      question: freezed == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String?,
      answer: freezed == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      assignedTo: freezed == assignedTo
          ? _value._assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaqModelImpl implements _FaqModel {
  const _$FaqModelImpl(
      {@JsonKey(name: "question") this.question,
      @JsonKey(name: "answer") this.answer,
      @JsonKey(name: "tags") final List<String>? tags,
      @JsonKey(name: "assigned_to") final List<String>? assignedTo,
      @JsonKey(name: "is_active") this.isActive})
      : _tags = tags,
        _assignedTo = assignedTo;

  factory _$FaqModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaqModelImplFromJson(json);

  @override
  @JsonKey(name: "question")
  final String? question;
  @override
  @JsonKey(name: "answer")
  final String? answer;
  final List<String>? _tags;
  @override
  @JsonKey(name: "tags")
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _assignedTo;
  @override
  @JsonKey(name: "assigned_to")
  List<String>? get assignedTo {
    final value = _assignedTo;
    if (value == null) return null;
    if (_assignedTo is EqualUnmodifiableListView) return _assignedTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "is_active")
  final bool? isActive;

  @override
  String toString() {
    return 'FaqModel(question: $question, answer: $answer, tags: $tags, assignedTo: $assignedTo, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FaqModelImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.answer, answer) || other.answer == answer) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality()
                .equals(other._assignedTo, _assignedTo) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      question,
      answer,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_assignedTo),
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FaqModelImplCopyWith<_$FaqModelImpl> get copyWith =>
      __$$FaqModelImplCopyWithImpl<_$FaqModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FaqModelImplToJson(
      this,
    );
  }
}

abstract class _FaqModel implements FaqModel {
  const factory _FaqModel(
      {@JsonKey(name: "question") final String? question,
      @JsonKey(name: "answer") final String? answer,
      @JsonKey(name: "tags") final List<String>? tags,
      @JsonKey(name: "assigned_to") final List<String>? assignedTo,
      @JsonKey(name: "is_active") final bool? isActive}) = _$FaqModelImpl;

  factory _FaqModel.fromJson(Map<String, dynamic> json) =
      _$FaqModelImpl.fromJson;

  @override
  @JsonKey(name: "question")
  String? get question;
  @override
  @JsonKey(name: "answer")
  String? get answer;
  @override
  @JsonKey(name: "tags")
  List<String>? get tags;
  @override
  @JsonKey(name: "assigned_to")
  List<String>? get assignedTo;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$FaqModelImplCopyWith<_$FaqModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GalleryModel _$GalleryModelFromJson(Map<String, dynamic> json) {
  return _GalleryModel.fromJson(json);
}

/// @nodoc
mixin _$GalleryModel {
  @JsonKey(name: "media")
  List<MediaModel>? get media => throw _privateConstructorUsedError;
  @JsonKey(name: "assigned_to")
  List<String>? get assignedTo => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool? get isActive => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GalleryModelCopyWith<GalleryModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryModelCopyWith<$Res> {
  factory $GalleryModelCopyWith(
          GalleryModel value, $Res Function(GalleryModel) then) =
      _$GalleryModelCopyWithImpl<$Res, GalleryModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "media") List<MediaModel>? media,
      @JsonKey(name: "assigned_to") List<String>? assignedTo,
      @JsonKey(name: "is_active") bool? isActive});
}

/// @nodoc
class _$GalleryModelCopyWithImpl<$Res, $Val extends GalleryModel>
    implements $GalleryModelCopyWith<$Res> {
  _$GalleryModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = freezed,
    Object? assignedTo = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_value.copyWith(
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>?,
      assignedTo: freezed == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GalleryModelImplCopyWith<$Res>
    implements $GalleryModelCopyWith<$Res> {
  factory _$$GalleryModelImplCopyWith(
          _$GalleryModelImpl value, $Res Function(_$GalleryModelImpl) then) =
      __$$GalleryModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "media") List<MediaModel>? media,
      @JsonKey(name: "assigned_to") List<String>? assignedTo,
      @JsonKey(name: "is_active") bool? isActive});
}

/// @nodoc
class __$$GalleryModelImplCopyWithImpl<$Res>
    extends _$GalleryModelCopyWithImpl<$Res, _$GalleryModelImpl>
    implements _$$GalleryModelImplCopyWith<$Res> {
  __$$GalleryModelImplCopyWithImpl(
      _$GalleryModelImpl _value, $Res Function(_$GalleryModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = freezed,
    Object? assignedTo = freezed,
    Object? isActive = freezed,
  }) {
    return _then(_$GalleryModelImpl(
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>?,
      assignedTo: freezed == assignedTo
          ? _value._assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GalleryModelImpl implements _GalleryModel {
  const _$GalleryModelImpl(
      {@JsonKey(name: "media") final List<MediaModel>? media,
      @JsonKey(name: "assigned_to") final List<String>? assignedTo,
      @JsonKey(name: "is_active") this.isActive})
      : _media = media,
        _assignedTo = assignedTo;

  factory _$GalleryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GalleryModelImplFromJson(json);

  final List<MediaModel>? _media;
  @override
  @JsonKey(name: "media")
  List<MediaModel>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _assignedTo;
  @override
  @JsonKey(name: "assigned_to")
  List<String>? get assignedTo {
    final value = _assignedTo;
    if (value == null) return null;
    if (_assignedTo is EqualUnmodifiableListView) return _assignedTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "is_active")
  final bool? isActive;

  @override
  String toString() {
    return 'GalleryModel(media: $media, assignedTo: $assignedTo, isActive: $isActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryModelImpl &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            const DeepCollectionEquality()
                .equals(other._assignedTo, _assignedTo) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_media),
      const DeepCollectionEquality().hash(_assignedTo),
      isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryModelImplCopyWith<_$GalleryModelImpl> get copyWith =>
      __$$GalleryModelImplCopyWithImpl<_$GalleryModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GalleryModelImplToJson(
      this,
    );
  }
}

abstract class _GalleryModel implements GalleryModel {
  const factory _GalleryModel(
      {@JsonKey(name: "media") final List<MediaModel>? media,
      @JsonKey(name: "assigned_to") final List<String>? assignedTo,
      @JsonKey(name: "is_active") final bool? isActive}) = _$GalleryModelImpl;

  factory _GalleryModel.fromJson(Map<String, dynamic> json) =
      _$GalleryModelImpl.fromJson;

  @override
  @JsonKey(name: "media")
  List<MediaModel>? get media;
  @override
  @JsonKey(name: "assigned_to")
  List<String>? get assignedTo;
  @override
  @JsonKey(name: "is_active")
  bool? get isActive;
  @override
  @JsonKey(ignore: true)
  _$$GalleryModelImplCopyWith<_$GalleryModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MediaModel _$MediaModelFromJson(Map<String, dynamic> json) {
  return _MediaModel.fromJson(json);
}

/// @nodoc
mixin _$MediaModel {
  @JsonKey(name: "media_type")
  String? get mediaType => throw _privateConstructorUsedError;
  @JsonKey(name: "description")
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MediaModelCopyWith<MediaModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MediaModelCopyWith<$Res> {
  factory $MediaModelCopyWith(
          MediaModel value, $Res Function(MediaModel) then) =
      _$MediaModelCopyWithImpl<$Res, MediaModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "media_type") String? mediaType,
      @JsonKey(name: "description") String? description});
}

/// @nodoc
class _$MediaModelCopyWithImpl<$Res, $Val extends MediaModel>
    implements $MediaModelCopyWith<$Res> {
  _$MediaModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaType = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MediaModelImplCopyWith<$Res>
    implements $MediaModelCopyWith<$Res> {
  factory _$$MediaModelImplCopyWith(
          _$MediaModelImpl value, $Res Function(_$MediaModelImpl) then) =
      __$$MediaModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "media_type") String? mediaType,
      @JsonKey(name: "description") String? description});
}

/// @nodoc
class __$$MediaModelImplCopyWithImpl<$Res>
    extends _$MediaModelCopyWithImpl<$Res, _$MediaModelImpl>
    implements _$$MediaModelImplCopyWith<$Res> {
  __$$MediaModelImplCopyWithImpl(
      _$MediaModelImpl _value, $Res Function(_$MediaModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mediaType = freezed,
    Object? description = freezed,
  }) {
    return _then(_$MediaModelImpl(
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaModelImpl implements _MediaModel {
  const _$MediaModelImpl(
      {@JsonKey(name: "media_type") this.mediaType,
      @JsonKey(name: "description") this.description});

  factory _$MediaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaModelImplFromJson(json);

  @override
  @JsonKey(name: "media_type")
  final String? mediaType;
  @override
  @JsonKey(name: "description")
  final String? description;

  @override
  String toString() {
    return 'MediaModel(mediaType: $mediaType, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MediaModelImpl &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mediaType, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MediaModelImplCopyWith<_$MediaModelImpl> get copyWith =>
      __$$MediaModelImplCopyWithImpl<_$MediaModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MediaModelImplToJson(
      this,
    );
  }
}

abstract class _MediaModel implements MediaModel {
  const factory _MediaModel(
          {@JsonKey(name: "media_type") final String? mediaType,
          @JsonKey(name: "description") final String? description}) =
      _$MediaModelImpl;

  factory _MediaModel.fromJson(Map<String, dynamic> json) =
      _$MediaModelImpl.fromJson;

  @override
  @JsonKey(name: "media_type")
  String? get mediaType;
  @override
  @JsonKey(name: "description")
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$MediaModelImplCopyWith<_$MediaModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MegmoGigModel _$MegmoGigModelFromJson(Map<String, dynamic> json) {
  return _MegmoGigModel.fromJson(json);
}

/// @nodoc
mixin _$MegmoGigModel {
  @JsonKey(name: "tags")
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "skills")
  List<String>? get skills => throw _privateConstructorUsedError;
  @JsonKey(name: "media")
  List<MediaModel>? get media => throw _privateConstructorUsedError;
  @JsonKey(name: "otherMedia")
  List<String>? get otherMedia => throw _privateConstructorUsedError;
  @JsonKey(name: "gig_headline")
  String? get gigHeadline => throw _privateConstructorUsedError;
  @JsonKey(name: "gig_description")
  String? get gigDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "gig_cover")
  String? get gigCover => throw _privateConstructorUsedError;
  @JsonKey(name: "gig_url")
  String? get gigUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MegmoGigModelCopyWith<MegmoGigModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MegmoGigModelCopyWith<$Res> {
  factory $MegmoGigModelCopyWith(
          MegmoGigModel value, $Res Function(MegmoGigModel) then) =
      _$MegmoGigModelCopyWithImpl<$Res, MegmoGigModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "tags") List<String>? tags,
      @JsonKey(name: "skills") List<String>? skills,
      @JsonKey(name: "media") List<MediaModel>? media,
      @JsonKey(name: "otherMedia") List<String>? otherMedia,
      @JsonKey(name: "gig_headline") String? gigHeadline,
      @JsonKey(name: "gig_description") String? gigDescription,
      @JsonKey(name: "gig_cover") String? gigCover,
      @JsonKey(name: "gig_url") String? gigUrl});
}

/// @nodoc
class _$MegmoGigModelCopyWithImpl<$Res, $Val extends MegmoGigModel>
    implements $MegmoGigModelCopyWith<$Res> {
  _$MegmoGigModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = freezed,
    Object? skills = freezed,
    Object? media = freezed,
    Object? otherMedia = freezed,
    Object? gigHeadline = freezed,
    Object? gigDescription = freezed,
    Object? gigCover = freezed,
    Object? gigUrl = freezed,
  }) {
    return _then(_value.copyWith(
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      skills: freezed == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>?,
      otherMedia: freezed == otherMedia
          ? _value.otherMedia
          : otherMedia // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      gigHeadline: freezed == gigHeadline
          ? _value.gigHeadline
          : gigHeadline // ignore: cast_nullable_to_non_nullable
              as String?,
      gigDescription: freezed == gigDescription
          ? _value.gigDescription
          : gigDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      gigCover: freezed == gigCover
          ? _value.gigCover
          : gigCover // ignore: cast_nullable_to_non_nullable
              as String?,
      gigUrl: freezed == gigUrl
          ? _value.gigUrl
          : gigUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MegmoGigModelImplCopyWith<$Res>
    implements $MegmoGigModelCopyWith<$Res> {
  factory _$$MegmoGigModelImplCopyWith(
          _$MegmoGigModelImpl value, $Res Function(_$MegmoGigModelImpl) then) =
      __$$MegmoGigModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "tags") List<String>? tags,
      @JsonKey(name: "skills") List<String>? skills,
      @JsonKey(name: "media") List<MediaModel>? media,
      @JsonKey(name: "otherMedia") List<String>? otherMedia,
      @JsonKey(name: "gig_headline") String? gigHeadline,
      @JsonKey(name: "gig_description") String? gigDescription,
      @JsonKey(name: "gig_cover") String? gigCover,
      @JsonKey(name: "gig_url") String? gigUrl});
}

/// @nodoc
class __$$MegmoGigModelImplCopyWithImpl<$Res>
    extends _$MegmoGigModelCopyWithImpl<$Res, _$MegmoGigModelImpl>
    implements _$$MegmoGigModelImplCopyWith<$Res> {
  __$$MegmoGigModelImplCopyWithImpl(
      _$MegmoGigModelImpl _value, $Res Function(_$MegmoGigModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tags = freezed,
    Object? skills = freezed,
    Object? media = freezed,
    Object? otherMedia = freezed,
    Object? gigHeadline = freezed,
    Object? gigDescription = freezed,
    Object? gigCover = freezed,
    Object? gigUrl = freezed,
  }) {
    return _then(_$MegmoGigModelImpl(
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      skills: freezed == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>?,
      otherMedia: freezed == otherMedia
          ? _value._otherMedia
          : otherMedia // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      gigHeadline: freezed == gigHeadline
          ? _value.gigHeadline
          : gigHeadline // ignore: cast_nullable_to_non_nullable
              as String?,
      gigDescription: freezed == gigDescription
          ? _value.gigDescription
          : gigDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      gigCover: freezed == gigCover
          ? _value.gigCover
          : gigCover // ignore: cast_nullable_to_non_nullable
              as String?,
      gigUrl: freezed == gigUrl
          ? _value.gigUrl
          : gigUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MegmoGigModelImpl implements _MegmoGigModel {
  const _$MegmoGigModelImpl(
      {@JsonKey(name: "tags") final List<String>? tags,
      @JsonKey(name: "skills") final List<String>? skills,
      @JsonKey(name: "media") final List<MediaModel>? media,
      @JsonKey(name: "otherMedia") final List<String>? otherMedia,
      @JsonKey(name: "gig_headline") this.gigHeadline,
      @JsonKey(name: "gig_description") this.gigDescription,
      @JsonKey(name: "gig_cover") this.gigCover,
      @JsonKey(name: "gig_url") this.gigUrl})
      : _tags = tags,
        _skills = skills,
        _media = media,
        _otherMedia = otherMedia;

  factory _$MegmoGigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MegmoGigModelImplFromJson(json);

  final List<String>? _tags;
  @override
  @JsonKey(name: "tags")
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _skills;
  @override
  @JsonKey(name: "skills")
  List<String>? get skills {
    final value = _skills;
    if (value == null) return null;
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<MediaModel>? _media;
  @override
  @JsonKey(name: "media")
  List<MediaModel>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _otherMedia;
  @override
  @JsonKey(name: "otherMedia")
  List<String>? get otherMedia {
    final value = _otherMedia;
    if (value == null) return null;
    if (_otherMedia is EqualUnmodifiableListView) return _otherMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "gig_headline")
  final String? gigHeadline;
  @override
  @JsonKey(name: "gig_description")
  final String? gigDescription;
  @override
  @JsonKey(name: "gig_cover")
  final String? gigCover;
  @override
  @JsonKey(name: "gig_url")
  final String? gigUrl;

  @override
  String toString() {
    return 'MegmoGigModel(tags: $tags, skills: $skills, media: $media, otherMedia: $otherMedia, gigHeadline: $gigHeadline, gigDescription: $gigDescription, gigCover: $gigCover, gigUrl: $gigUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MegmoGigModelImpl &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            const DeepCollectionEquality()
                .equals(other._otherMedia, _otherMedia) &&
            (identical(other.gigHeadline, gigHeadline) ||
                other.gigHeadline == gigHeadline) &&
            (identical(other.gigDescription, gigDescription) ||
                other.gigDescription == gigDescription) &&
            (identical(other.gigCover, gigCover) ||
                other.gigCover == gigCover) &&
            (identical(other.gigUrl, gigUrl) || other.gigUrl == gigUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_skills),
      const DeepCollectionEquality().hash(_media),
      const DeepCollectionEquality().hash(_otherMedia),
      gigHeadline,
      gigDescription,
      gigCover,
      gigUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MegmoGigModelImplCopyWith<_$MegmoGigModelImpl> get copyWith =>
      __$$MegmoGigModelImplCopyWithImpl<_$MegmoGigModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MegmoGigModelImplToJson(
      this,
    );
  }
}

abstract class _MegmoGigModel implements MegmoGigModel {
  const factory _MegmoGigModel(
      {@JsonKey(name: "tags") final List<String>? tags,
      @JsonKey(name: "skills") final List<String>? skills,
      @JsonKey(name: "media") final List<MediaModel>? media,
      @JsonKey(name: "otherMedia") final List<String>? otherMedia,
      @JsonKey(name: "gig_headline") final String? gigHeadline,
      @JsonKey(name: "gig_description") final String? gigDescription,
      @JsonKey(name: "gig_cover") final String? gigCover,
      @JsonKey(name: "gig_url") final String? gigUrl}) = _$MegmoGigModelImpl;

  factory _MegmoGigModel.fromJson(Map<String, dynamic> json) =
      _$MegmoGigModelImpl.fromJson;

  @override
  @JsonKey(name: "tags")
  List<String>? get tags;
  @override
  @JsonKey(name: "skills")
  List<String>? get skills;
  @override
  @JsonKey(name: "media")
  List<MediaModel>? get media;
  @override
  @JsonKey(name: "otherMedia")
  List<String>? get otherMedia;
  @override
  @JsonKey(name: "gig_headline")
  String? get gigHeadline;
  @override
  @JsonKey(name: "gig_description")
  String? get gigDescription;
  @override
  @JsonKey(name: "gig_cover")
  String? get gigCover;
  @override
  @JsonKey(name: "gig_url")
  String? get gigUrl;
  @override
  @JsonKey(ignore: true)
  _$$MegmoGigModelImplCopyWith<_$MegmoGigModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PartnerLocationModel _$PartnerLocationModelFromJson(Map<String, dynamic> json) {
  return _PartnerLocationModel.fromJson(json);
}

/// @nodoc
mixin _$PartnerLocationModel {
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
  @JsonKey(name: "country")
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: "pinCode")
  int? get pinCode => throw _privateConstructorUsedError;
  @JsonKey(name: "landmark")
  String? get landmark => throw _privateConstructorUsedError;
  @JsonKey(name: "latitude")
  String? get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  String? get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PartnerLocationModelCopyWith<PartnerLocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerLocationModelCopyWith<$Res> {
  factory $PartnerLocationModelCopyWith(PartnerLocationModel value,
          $Res Function(PartnerLocationModel) then) =
      _$PartnerLocationModelCopyWithImpl<$Res, PartnerLocationModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "address_type") String? addressType,
      @JsonKey(name: "address_line1") String? addressLine1,
      @JsonKey(name: "address_line2") String? addressLine2,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "pinCode") int? pinCode,
      @JsonKey(name: "landmark") String? landmark,
      @JsonKey(name: "latitude") String? latitude,
      @JsonKey(name: "longitude") String? longitude,
      @JsonKey(name: "status") String? status});
}

/// @nodoc
class _$PartnerLocationModelCopyWithImpl<$Res,
        $Val extends PartnerLocationModel>
    implements $PartnerLocationModelCopyWith<$Res> {
  _$PartnerLocationModelCopyWithImpl(this._value, this._then);

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
    Object? country = freezed,
    Object? pinCode = freezed,
    Object? landmark = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? status = freezed,
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
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as int?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PartnerLocationModelImplCopyWith<$Res>
    implements $PartnerLocationModelCopyWith<$Res> {
  factory _$$PartnerLocationModelImplCopyWith(_$PartnerLocationModelImpl value,
          $Res Function(_$PartnerLocationModelImpl) then) =
      __$$PartnerLocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "address_type") String? addressType,
      @JsonKey(name: "address_line1") String? addressLine1,
      @JsonKey(name: "address_line2") String? addressLine2,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "pinCode") int? pinCode,
      @JsonKey(name: "landmark") String? landmark,
      @JsonKey(name: "latitude") String? latitude,
      @JsonKey(name: "longitude") String? longitude,
      @JsonKey(name: "status") String? status});
}

/// @nodoc
class __$$PartnerLocationModelImplCopyWithImpl<$Res>
    extends _$PartnerLocationModelCopyWithImpl<$Res, _$PartnerLocationModelImpl>
    implements _$$PartnerLocationModelImplCopyWith<$Res> {
  __$$PartnerLocationModelImplCopyWithImpl(_$PartnerLocationModelImpl _value,
      $Res Function(_$PartnerLocationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? addressType = freezed,
    Object? addressLine1 = freezed,
    Object? addressLine2 = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? pinCode = freezed,
    Object? landmark = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? status = freezed,
  }) {
    return _then(_$PartnerLocationModelImpl(
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
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      pinCode: freezed == pinCode
          ? _value.pinCode
          : pinCode // ignore: cast_nullable_to_non_nullable
              as int?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PartnerLocationModelImpl implements _PartnerLocationModel {
  const _$PartnerLocationModelImpl(
      {@JsonKey(name: "address_type") this.addressType,
      @JsonKey(name: "address_line1") this.addressLine1,
      @JsonKey(name: "address_line2") this.addressLine2,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "state") this.state,
      @JsonKey(name: "country") this.country,
      @JsonKey(name: "pinCode") this.pinCode,
      @JsonKey(name: "landmark") this.landmark,
      @JsonKey(name: "latitude") this.latitude,
      @JsonKey(name: "longitude") this.longitude,
      @JsonKey(name: "status") this.status});

  factory _$PartnerLocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartnerLocationModelImplFromJson(json);

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
  @JsonKey(name: "country")
  final String? country;
  @override
  @JsonKey(name: "pinCode")
  final int? pinCode;
  @override
  @JsonKey(name: "landmark")
  final String? landmark;
  @override
  @JsonKey(name: "latitude")
  final String? latitude;
  @override
  @JsonKey(name: "longitude")
  final String? longitude;
  @override
  @JsonKey(name: "status")
  final String? status;

  @override
  String toString() {
    return 'PartnerLocationModel(addressType: $addressType, addressLine1: $addressLine1, addressLine2: $addressLine2, city: $city, state: $state, country: $country, pinCode: $pinCode, landmark: $landmark, latitude: $latitude, longitude: $longitude, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnerLocationModelImpl &&
            (identical(other.addressType, addressType) ||
                other.addressType == addressType) &&
            (identical(other.addressLine1, addressLine1) ||
                other.addressLine1 == addressLine1) &&
            (identical(other.addressLine2, addressLine2) ||
                other.addressLine2 == addressLine2) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.pinCode, pinCode) || other.pinCode == pinCode) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      addressType,
      addressLine1,
      addressLine2,
      city,
      state,
      country,
      pinCode,
      landmark,
      latitude,
      longitude,
      status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PartnerLocationModelImplCopyWith<_$PartnerLocationModelImpl>
      get copyWith =>
          __$$PartnerLocationModelImplCopyWithImpl<_$PartnerLocationModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartnerLocationModelImplToJson(
      this,
    );
  }
}

abstract class _PartnerLocationModel implements PartnerLocationModel {
  const factory _PartnerLocationModel(
          {@JsonKey(name: "address_type") final String? addressType,
          @JsonKey(name: "address_line1") final String? addressLine1,
          @JsonKey(name: "address_line2") final String? addressLine2,
          @JsonKey(name: "city") final String? city,
          @JsonKey(name: "state") final String? state,
          @JsonKey(name: "country") final String? country,
          @JsonKey(name: "pinCode") final int? pinCode,
          @JsonKey(name: "landmark") final String? landmark,
          @JsonKey(name: "latitude") final String? latitude,
          @JsonKey(name: "longitude") final String? longitude,
          @JsonKey(name: "status") final String? status}) =
      _$PartnerLocationModelImpl;

  factory _PartnerLocationModel.fromJson(Map<String, dynamic> json) =
      _$PartnerLocationModelImpl.fromJson;

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
  @JsonKey(name: "country")
  String? get country;
  @override
  @JsonKey(name: "pinCode")
  int? get pinCode;
  @override
  @JsonKey(name: "landmark")
  String? get landmark;
  @override
  @JsonKey(name: "latitude")
  String? get latitude;
  @override
  @JsonKey(name: "longitude")
  String? get longitude;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$PartnerLocationModelImplCopyWith<_$PartnerLocationModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

PortfolioModel _$PortfolioModelFromJson(Map<String, dynamic> json) {
  return _PortfolioModel.fromJson(json);
}

/// @nodoc
mixin _$PortfolioModel {
  @JsonKey(name: "project_headline")
  String? get projectHeadline => throw _privateConstructorUsedError;
  @JsonKey(name: "project_completion_date")
  DateTime? get projectCompletionDate => throw _privateConstructorUsedError;
  @JsonKey(name: "project_description")
  String? get projectDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "skills")
  List<String>? get skills => throw _privateConstructorUsedError;
  @JsonKey(name: "project_url")
  String? get projectUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "media")
  List<MediaModel>? get media => throw _privateConstructorUsedError;
  @JsonKey(name: "otherMedia")
  List<String>? get otherMedia => throw _privateConstructorUsedError;
  @JsonKey(name: "project_cover")
  String? get projectCover => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PortfolioModelCopyWith<PortfolioModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PortfolioModelCopyWith<$Res> {
  factory $PortfolioModelCopyWith(
          PortfolioModel value, $Res Function(PortfolioModel) then) =
      _$PortfolioModelCopyWithImpl<$Res, PortfolioModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "project_headline") String? projectHeadline,
      @JsonKey(name: "project_completion_date") DateTime? projectCompletionDate,
      @JsonKey(name: "project_description") String? projectDescription,
      @JsonKey(name: "tags") List<String>? tags,
      @JsonKey(name: "skills") List<String>? skills,
      @JsonKey(name: "project_url") String? projectUrl,
      @JsonKey(name: "media") List<MediaModel>? media,
      @JsonKey(name: "otherMedia") List<String>? otherMedia,
      @JsonKey(name: "project_cover") String? projectCover});
}

/// @nodoc
class _$PortfolioModelCopyWithImpl<$Res, $Val extends PortfolioModel>
    implements $PortfolioModelCopyWith<$Res> {
  _$PortfolioModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectHeadline = freezed,
    Object? projectCompletionDate = freezed,
    Object? projectDescription = freezed,
    Object? tags = freezed,
    Object? skills = freezed,
    Object? projectUrl = freezed,
    Object? media = freezed,
    Object? otherMedia = freezed,
    Object? projectCover = freezed,
  }) {
    return _then(_value.copyWith(
      projectHeadline: freezed == projectHeadline
          ? _value.projectHeadline
          : projectHeadline // ignore: cast_nullable_to_non_nullable
              as String?,
      projectCompletionDate: freezed == projectCompletionDate
          ? _value.projectCompletionDate
          : projectCompletionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      projectDescription: freezed == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      skills: freezed == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      projectUrl: freezed == projectUrl
          ? _value.projectUrl
          : projectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>?,
      otherMedia: freezed == otherMedia
          ? _value.otherMedia
          : otherMedia // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      projectCover: freezed == projectCover
          ? _value.projectCover
          : projectCover // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PortfolioModelImplCopyWith<$Res>
    implements $PortfolioModelCopyWith<$Res> {
  factory _$$PortfolioModelImplCopyWith(_$PortfolioModelImpl value,
          $Res Function(_$PortfolioModelImpl) then) =
      __$$PortfolioModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "project_headline") String? projectHeadline,
      @JsonKey(name: "project_completion_date") DateTime? projectCompletionDate,
      @JsonKey(name: "project_description") String? projectDescription,
      @JsonKey(name: "tags") List<String>? tags,
      @JsonKey(name: "skills") List<String>? skills,
      @JsonKey(name: "project_url") String? projectUrl,
      @JsonKey(name: "media") List<MediaModel>? media,
      @JsonKey(name: "otherMedia") List<String>? otherMedia,
      @JsonKey(name: "project_cover") String? projectCover});
}

/// @nodoc
class __$$PortfolioModelImplCopyWithImpl<$Res>
    extends _$PortfolioModelCopyWithImpl<$Res, _$PortfolioModelImpl>
    implements _$$PortfolioModelImplCopyWith<$Res> {
  __$$PortfolioModelImplCopyWithImpl(
      _$PortfolioModelImpl _value, $Res Function(_$PortfolioModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectHeadline = freezed,
    Object? projectCompletionDate = freezed,
    Object? projectDescription = freezed,
    Object? tags = freezed,
    Object? skills = freezed,
    Object? projectUrl = freezed,
    Object? media = freezed,
    Object? otherMedia = freezed,
    Object? projectCover = freezed,
  }) {
    return _then(_$PortfolioModelImpl(
      projectHeadline: freezed == projectHeadline
          ? _value.projectHeadline
          : projectHeadline // ignore: cast_nullable_to_non_nullable
              as String?,
      projectCompletionDate: freezed == projectCompletionDate
          ? _value.projectCompletionDate
          : projectCompletionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      projectDescription: freezed == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      skills: freezed == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      projectUrl: freezed == projectUrl
          ? _value.projectUrl
          : projectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>?,
      otherMedia: freezed == otherMedia
          ? _value._otherMedia
          : otherMedia // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      projectCover: freezed == projectCover
          ? _value.projectCover
          : projectCover // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PortfolioModelImpl implements _PortfolioModel {
  const _$PortfolioModelImpl(
      {@JsonKey(name: "project_headline") this.projectHeadline,
      @JsonKey(name: "project_completion_date") this.projectCompletionDate,
      @JsonKey(name: "project_description") this.projectDescription,
      @JsonKey(name: "tags") final List<String>? tags,
      @JsonKey(name: "skills") final List<String>? skills,
      @JsonKey(name: "project_url") this.projectUrl,
      @JsonKey(name: "media") final List<MediaModel>? media,
      @JsonKey(name: "otherMedia") final List<String>? otherMedia,
      @JsonKey(name: "project_cover") this.projectCover})
      : _tags = tags,
        _skills = skills,
        _media = media,
        _otherMedia = otherMedia;

  factory _$PortfolioModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PortfolioModelImplFromJson(json);

  @override
  @JsonKey(name: "project_headline")
  final String? projectHeadline;
  @override
  @JsonKey(name: "project_completion_date")
  final DateTime? projectCompletionDate;
  @override
  @JsonKey(name: "project_description")
  final String? projectDescription;
  final List<String>? _tags;
  @override
  @JsonKey(name: "tags")
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _skills;
  @override
  @JsonKey(name: "skills")
  List<String>? get skills {
    final value = _skills;
    if (value == null) return null;
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "project_url")
  final String? projectUrl;
  final List<MediaModel>? _media;
  @override
  @JsonKey(name: "media")
  List<MediaModel>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _otherMedia;
  @override
  @JsonKey(name: "otherMedia")
  List<String>? get otherMedia {
    final value = _otherMedia;
    if (value == null) return null;
    if (_otherMedia is EqualUnmodifiableListView) return _otherMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "project_cover")
  final String? projectCover;

  @override
  String toString() {
    return 'PortfolioModel(projectHeadline: $projectHeadline, projectCompletionDate: $projectCompletionDate, projectDescription: $projectDescription, tags: $tags, skills: $skills, projectUrl: $projectUrl, media: $media, otherMedia: $otherMedia, projectCover: $projectCover)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PortfolioModelImpl &&
            (identical(other.projectHeadline, projectHeadline) ||
                other.projectHeadline == projectHeadline) &&
            (identical(other.projectCompletionDate, projectCompletionDate) ||
                other.projectCompletionDate == projectCompletionDate) &&
            (identical(other.projectDescription, projectDescription) ||
                other.projectDescription == projectDescription) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            (identical(other.projectUrl, projectUrl) ||
                other.projectUrl == projectUrl) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            const DeepCollectionEquality()
                .equals(other._otherMedia, _otherMedia) &&
            (identical(other.projectCover, projectCover) ||
                other.projectCover == projectCover));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      projectHeadline,
      projectCompletionDate,
      projectDescription,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_skills),
      projectUrl,
      const DeepCollectionEquality().hash(_media),
      const DeepCollectionEquality().hash(_otherMedia),
      projectCover);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PortfolioModelImplCopyWith<_$PortfolioModelImpl> get copyWith =>
      __$$PortfolioModelImplCopyWithImpl<_$PortfolioModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PortfolioModelImplToJson(
      this,
    );
  }
}

abstract class _PortfolioModel implements PortfolioModel {
  const factory _PortfolioModel(
      {@JsonKey(name: "project_headline") final String? projectHeadline,
      @JsonKey(name: "project_completion_date")
      final DateTime? projectCompletionDate,
      @JsonKey(name: "project_description") final String? projectDescription,
      @JsonKey(name: "tags") final List<String>? tags,
      @JsonKey(name: "skills") final List<String>? skills,
      @JsonKey(name: "project_url") final String? projectUrl,
      @JsonKey(name: "media") final List<MediaModel>? media,
      @JsonKey(name: "otherMedia") final List<String>? otherMedia,
      @JsonKey(name: "project_cover")
      final String? projectCover}) = _$PortfolioModelImpl;

  factory _PortfolioModel.fromJson(Map<String, dynamic> json) =
      _$PortfolioModelImpl.fromJson;

  @override
  @JsonKey(name: "project_headline")
  String? get projectHeadline;
  @override
  @JsonKey(name: "project_completion_date")
  DateTime? get projectCompletionDate;
  @override
  @JsonKey(name: "project_description")
  String? get projectDescription;
  @override
  @JsonKey(name: "tags")
  List<String>? get tags;
  @override
  @JsonKey(name: "skills")
  List<String>? get skills;
  @override
  @JsonKey(name: "project_url")
  String? get projectUrl;
  @override
  @JsonKey(name: "media")
  List<MediaModel>? get media;
  @override
  @JsonKey(name: "otherMedia")
  List<String>? get otherMedia;
  @override
  @JsonKey(name: "project_cover")
  String? get projectCover;
  @override
  @JsonKey(ignore: true)
  _$$PortfolioModelImplCopyWith<_$PortfolioModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileDetailsModel _$ProfileDetailsModelFromJson(Map<String, dynamic> json) {
  return _ProfileDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileDetailsModel {
  @JsonKey(name: "profile_image")
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_name")
  String? get profileName => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_cover")
  String? get profileCover => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_cover_description")
  String? get profileCoverDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_service_offered")
  List<String>? get parentServiceOffered => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_headline")
  String? get profileHeadline => throw _privateConstructorUsedError;
  @JsonKey(name: "fresh_talent")
  bool? get freshTalent => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_in_demand")
  bool? get partnerInDemand => throw _privateConstructorUsedError;
  @JsonKey(name: "trending_partner")
  bool? get trendingPartner => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_information")
  String? get partnerInformation => throw _privateConstructorUsedError;
  @JsonKey(name: "languages")
  List<String>? get languages => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String? get city => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  String? get state => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String? get country => throw _privateConstructorUsedError;
  @JsonKey(name: "education")
  String? get education => throw _privateConstructorUsedError;
  @JsonKey(name: "certification")
  String? get certification => throw _privateConstructorUsedError;
  @JsonKey(name: "skills")
  List<String>? get skills => throw _privateConstructorUsedError;
  @JsonKey(name: "locke_profile")
  bool? get lockeProfile => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String? get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "media")
  List<MediaModel>? get media => throw _privateConstructorUsedError;
  @JsonKey(name: "created_on")
  DateTime? get createdOn => throw _privateConstructorUsedError;
  @JsonKey(name: "unlock_cost")
  int? get unlockCost => throw _privateConstructorUsedError;
  @JsonKey(name: "megmo_preferred_partner")
  bool? get megmoPreferredPartner => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDetailsModelCopyWith<ProfileDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDetailsModelCopyWith<$Res> {
  factory $ProfileDetailsModelCopyWith(
          ProfileDetailsModel value, $Res Function(ProfileDetailsModel) then) =
      _$ProfileDetailsModelCopyWithImpl<$Res, ProfileDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "profile_image") String? profileImage,
      @JsonKey(name: "profile_name") String? profileName,
      @JsonKey(name: "profile_cover") String? profileCover,
      @JsonKey(name: "profile_cover_description")
      String? profileCoverDescription,
      @JsonKey(name: "parent_service_offered")
      List<String>? parentServiceOffered,
      @JsonKey(name: "profile_headline") String? profileHeadline,
      @JsonKey(name: "fresh_talent") bool? freshTalent,
      @JsonKey(name: "partner_in_demand") bool? partnerInDemand,
      @JsonKey(name: "trending_partner") bool? trendingPartner,
      @JsonKey(name: "partner_information") String? partnerInformation,
      @JsonKey(name: "languages") List<String>? languages,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "education") String? education,
      @JsonKey(name: "certification") String? certification,
      @JsonKey(name: "skills") List<String>? skills,
      @JsonKey(name: "locke_profile") bool? lockeProfile,
      @JsonKey(name: "currency_code") String? currencyCode,
      @JsonKey(name: "media") List<MediaModel>? media,
      @JsonKey(name: "created_on") DateTime? createdOn,
      @JsonKey(name: "unlock_cost") int? unlockCost,
      @JsonKey(name: "megmo_preferred_partner") bool? megmoPreferredPartner});
}

/// @nodoc
class _$ProfileDetailsModelCopyWithImpl<$Res, $Val extends ProfileDetailsModel>
    implements $ProfileDetailsModelCopyWith<$Res> {
  _$ProfileDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileImage = freezed,
    Object? profileName = freezed,
    Object? profileCover = freezed,
    Object? profileCoverDescription = freezed,
    Object? parentServiceOffered = freezed,
    Object? profileHeadline = freezed,
    Object? freshTalent = freezed,
    Object? partnerInDemand = freezed,
    Object? trendingPartner = freezed,
    Object? partnerInformation = freezed,
    Object? languages = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? education = freezed,
    Object? certification = freezed,
    Object? skills = freezed,
    Object? lockeProfile = freezed,
    Object? currencyCode = freezed,
    Object? media = freezed,
    Object? createdOn = freezed,
    Object? unlockCost = freezed,
    Object? megmoPreferredPartner = freezed,
  }) {
    return _then(_value.copyWith(
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      profileName: freezed == profileName
          ? _value.profileName
          : profileName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileCover: freezed == profileCover
          ? _value.profileCover
          : profileCover // ignore: cast_nullable_to_non_nullable
              as String?,
      profileCoverDescription: freezed == profileCoverDescription
          ? _value.profileCoverDescription
          : profileCoverDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      parentServiceOffered: freezed == parentServiceOffered
          ? _value.parentServiceOffered
          : parentServiceOffered // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      profileHeadline: freezed == profileHeadline
          ? _value.profileHeadline
          : profileHeadline // ignore: cast_nullable_to_non_nullable
              as String?,
      freshTalent: freezed == freshTalent
          ? _value.freshTalent
          : freshTalent // ignore: cast_nullable_to_non_nullable
              as bool?,
      partnerInDemand: freezed == partnerInDemand
          ? _value.partnerInDemand
          : partnerInDemand // ignore: cast_nullable_to_non_nullable
              as bool?,
      trendingPartner: freezed == trendingPartner
          ? _value.trendingPartner
          : trendingPartner // ignore: cast_nullable_to_non_nullable
              as bool?,
      partnerInformation: freezed == partnerInformation
          ? _value.partnerInformation
          : partnerInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
      certification: freezed == certification
          ? _value.certification
          : certification // ignore: cast_nullable_to_non_nullable
              as String?,
      skills: freezed == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lockeProfile: freezed == lockeProfile
          ? _value.lockeProfile
          : lockeProfile // ignore: cast_nullable_to_non_nullable
              as bool?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unlockCost: freezed == unlockCost
          ? _value.unlockCost
          : unlockCost // ignore: cast_nullable_to_non_nullable
              as int?,
      megmoPreferredPartner: freezed == megmoPreferredPartner
          ? _value.megmoPreferredPartner
          : megmoPreferredPartner // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileDetailsModelImplCopyWith<$Res>
    implements $ProfileDetailsModelCopyWith<$Res> {
  factory _$$ProfileDetailsModelImplCopyWith(_$ProfileDetailsModelImpl value,
          $Res Function(_$ProfileDetailsModelImpl) then) =
      __$$ProfileDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "profile_image") String? profileImage,
      @JsonKey(name: "profile_name") String? profileName,
      @JsonKey(name: "profile_cover") String? profileCover,
      @JsonKey(name: "profile_cover_description")
      String? profileCoverDescription,
      @JsonKey(name: "parent_service_offered")
      List<String>? parentServiceOffered,
      @JsonKey(name: "profile_headline") String? profileHeadline,
      @JsonKey(name: "fresh_talent") bool? freshTalent,
      @JsonKey(name: "partner_in_demand") bool? partnerInDemand,
      @JsonKey(name: "trending_partner") bool? trendingPartner,
      @JsonKey(name: "partner_information") String? partnerInformation,
      @JsonKey(name: "languages") List<String>? languages,
      @JsonKey(name: "city") String? city,
      @JsonKey(name: "state") String? state,
      @JsonKey(name: "country") String? country,
      @JsonKey(name: "education") String? education,
      @JsonKey(name: "certification") String? certification,
      @JsonKey(name: "skills") List<String>? skills,
      @JsonKey(name: "locke_profile") bool? lockeProfile,
      @JsonKey(name: "currency_code") String? currencyCode,
      @JsonKey(name: "media") List<MediaModel>? media,
      @JsonKey(name: "created_on") DateTime? createdOn,
      @JsonKey(name: "unlock_cost") int? unlockCost,
      @JsonKey(name: "megmo_preferred_partner") bool? megmoPreferredPartner});
}

/// @nodoc
class __$$ProfileDetailsModelImplCopyWithImpl<$Res>
    extends _$ProfileDetailsModelCopyWithImpl<$Res, _$ProfileDetailsModelImpl>
    implements _$$ProfileDetailsModelImplCopyWith<$Res> {
  __$$ProfileDetailsModelImplCopyWithImpl(_$ProfileDetailsModelImpl _value,
      $Res Function(_$ProfileDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileImage = freezed,
    Object? profileName = freezed,
    Object? profileCover = freezed,
    Object? profileCoverDescription = freezed,
    Object? parentServiceOffered = freezed,
    Object? profileHeadline = freezed,
    Object? freshTalent = freezed,
    Object? partnerInDemand = freezed,
    Object? trendingPartner = freezed,
    Object? partnerInformation = freezed,
    Object? languages = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? education = freezed,
    Object? certification = freezed,
    Object? skills = freezed,
    Object? lockeProfile = freezed,
    Object? currencyCode = freezed,
    Object? media = freezed,
    Object? createdOn = freezed,
    Object? unlockCost = freezed,
    Object? megmoPreferredPartner = freezed,
  }) {
    return _then(_$ProfileDetailsModelImpl(
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      profileName: freezed == profileName
          ? _value.profileName
          : profileName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileCover: freezed == profileCover
          ? _value.profileCover
          : profileCover // ignore: cast_nullable_to_non_nullable
              as String?,
      profileCoverDescription: freezed == profileCoverDescription
          ? _value.profileCoverDescription
          : profileCoverDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      parentServiceOffered: freezed == parentServiceOffered
          ? _value._parentServiceOffered
          : parentServiceOffered // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      profileHeadline: freezed == profileHeadline
          ? _value.profileHeadline
          : profileHeadline // ignore: cast_nullable_to_non_nullable
              as String?,
      freshTalent: freezed == freshTalent
          ? _value.freshTalent
          : freshTalent // ignore: cast_nullable_to_non_nullable
              as bool?,
      partnerInDemand: freezed == partnerInDemand
          ? _value.partnerInDemand
          : partnerInDemand // ignore: cast_nullable_to_non_nullable
              as bool?,
      trendingPartner: freezed == trendingPartner
          ? _value.trendingPartner
          : trendingPartner // ignore: cast_nullable_to_non_nullable
              as bool?,
      partnerInformation: freezed == partnerInformation
          ? _value.partnerInformation
          : partnerInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      education: freezed == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String?,
      certification: freezed == certification
          ? _value.certification
          : certification // ignore: cast_nullable_to_non_nullable
              as String?,
      skills: freezed == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      lockeProfile: freezed == lockeProfile
          ? _value.lockeProfile
          : lockeProfile // ignore: cast_nullable_to_non_nullable
              as bool?,
      currencyCode: freezed == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      unlockCost: freezed == unlockCost
          ? _value.unlockCost
          : unlockCost // ignore: cast_nullable_to_non_nullable
              as int?,
      megmoPreferredPartner: freezed == megmoPreferredPartner
          ? _value.megmoPreferredPartner
          : megmoPreferredPartner // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileDetailsModelImpl implements _ProfileDetailsModel {
  const _$ProfileDetailsModelImpl(
      {@JsonKey(name: "profile_image") this.profileImage,
      @JsonKey(name: "profile_name") this.profileName,
      @JsonKey(name: "profile_cover") this.profileCover,
      @JsonKey(name: "profile_cover_description") this.profileCoverDescription,
      @JsonKey(name: "parent_service_offered")
      final List<String>? parentServiceOffered,
      @JsonKey(name: "profile_headline") this.profileHeadline,
      @JsonKey(name: "fresh_talent") this.freshTalent,
      @JsonKey(name: "partner_in_demand") this.partnerInDemand,
      @JsonKey(name: "trending_partner") this.trendingPartner,
      @JsonKey(name: "partner_information") this.partnerInformation,
      @JsonKey(name: "languages") final List<String>? languages,
      @JsonKey(name: "city") this.city,
      @JsonKey(name: "state") this.state,
      @JsonKey(name: "country") this.country,
      @JsonKey(name: "education") this.education,
      @JsonKey(name: "certification") this.certification,
      @JsonKey(name: "skills") final List<String>? skills,
      @JsonKey(name: "locke_profile") this.lockeProfile,
      @JsonKey(name: "currency_code") this.currencyCode,
      @JsonKey(name: "media") final List<MediaModel>? media,
      @JsonKey(name: "created_on") this.createdOn,
      @JsonKey(name: "unlock_cost") this.unlockCost,
      @JsonKey(name: "megmo_preferred_partner") this.megmoPreferredPartner})
      : _parentServiceOffered = parentServiceOffered,
        _languages = languages,
        _skills = skills,
        _media = media;

  factory _$ProfileDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: "profile_image")
  final String? profileImage;
  @override
  @JsonKey(name: "profile_name")
  final String? profileName;
  @override
  @JsonKey(name: "profile_cover")
  final String? profileCover;
  @override
  @JsonKey(name: "profile_cover_description")
  final String? profileCoverDescription;
  final List<String>? _parentServiceOffered;
  @override
  @JsonKey(name: "parent_service_offered")
  List<String>? get parentServiceOffered {
    final value = _parentServiceOffered;
    if (value == null) return null;
    if (_parentServiceOffered is EqualUnmodifiableListView)
      return _parentServiceOffered;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "profile_headline")
  final String? profileHeadline;
  @override
  @JsonKey(name: "fresh_talent")
  final bool? freshTalent;
  @override
  @JsonKey(name: "partner_in_demand")
  final bool? partnerInDemand;
  @override
  @JsonKey(name: "trending_partner")
  final bool? trendingPartner;
  @override
  @JsonKey(name: "partner_information")
  final String? partnerInformation;
  final List<String>? _languages;
  @override
  @JsonKey(name: "languages")
  List<String>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "city")
  final String? city;
  @override
  @JsonKey(name: "state")
  final String? state;
  @override
  @JsonKey(name: "country")
  final String? country;
  @override
  @JsonKey(name: "education")
  final String? education;
  @override
  @JsonKey(name: "certification")
  final String? certification;
  final List<String>? _skills;
  @override
  @JsonKey(name: "skills")
  List<String>? get skills {
    final value = _skills;
    if (value == null) return null;
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "locke_profile")
  final bool? lockeProfile;
  @override
  @JsonKey(name: "currency_code")
  final String? currencyCode;
  final List<MediaModel>? _media;
  @override
  @JsonKey(name: "media")
  List<MediaModel>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "created_on")
  final DateTime? createdOn;
  @override
  @JsonKey(name: "unlock_cost")
  final int? unlockCost;
  @override
  @JsonKey(name: "megmo_preferred_partner")
  final bool? megmoPreferredPartner;

  @override
  String toString() {
    return 'ProfileDetailsModel(profileImage: $profileImage, profileName: $profileName, profileCover: $profileCover, profileCoverDescription: $profileCoverDescription, parentServiceOffered: $parentServiceOffered, profileHeadline: $profileHeadline, freshTalent: $freshTalent, partnerInDemand: $partnerInDemand, trendingPartner: $trendingPartner, partnerInformation: $partnerInformation, languages: $languages, city: $city, state: $state, country: $country, education: $education, certification: $certification, skills: $skills, lockeProfile: $lockeProfile, currencyCode: $currencyCode, media: $media, createdOn: $createdOn, unlockCost: $unlockCost, megmoPreferredPartner: $megmoPreferredPartner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileDetailsModelImpl &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.profileName, profileName) ||
                other.profileName == profileName) &&
            (identical(other.profileCover, profileCover) ||
                other.profileCover == profileCover) &&
            (identical(
                    other.profileCoverDescription, profileCoverDescription) ||
                other.profileCoverDescription == profileCoverDescription) &&
            const DeepCollectionEquality()
                .equals(other._parentServiceOffered, _parentServiceOffered) &&
            (identical(other.profileHeadline, profileHeadline) ||
                other.profileHeadline == profileHeadline) &&
            (identical(other.freshTalent, freshTalent) ||
                other.freshTalent == freshTalent) &&
            (identical(other.partnerInDemand, partnerInDemand) ||
                other.partnerInDemand == partnerInDemand) &&
            (identical(other.trendingPartner, trendingPartner) ||
                other.trendingPartner == trendingPartner) &&
            (identical(other.partnerInformation, partnerInformation) ||
                other.partnerInformation == partnerInformation) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.education, education) ||
                other.education == education) &&
            (identical(other.certification, certification) ||
                other.certification == certification) &&
            const DeepCollectionEquality().equals(other._skills, _skills) &&
            (identical(other.lockeProfile, lockeProfile) ||
                other.lockeProfile == lockeProfile) &&
            (identical(other.currencyCode, currencyCode) ||
                other.currencyCode == currencyCode) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.unlockCost, unlockCost) ||
                other.unlockCost == unlockCost) &&
            (identical(other.megmoPreferredPartner, megmoPreferredPartner) ||
                other.megmoPreferredPartner == megmoPreferredPartner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        profileImage,
        profileName,
        profileCover,
        profileCoverDescription,
        const DeepCollectionEquality().hash(_parentServiceOffered),
        profileHeadline,
        freshTalent,
        partnerInDemand,
        trendingPartner,
        partnerInformation,
        const DeepCollectionEquality().hash(_languages),
        city,
        state,
        country,
        education,
        certification,
        const DeepCollectionEquality().hash(_skills),
        lockeProfile,
        currencyCode,
        const DeepCollectionEquality().hash(_media),
        createdOn,
        unlockCost,
        megmoPreferredPartner
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileDetailsModelImplCopyWith<_$ProfileDetailsModelImpl> get copyWith =>
      __$$ProfileDetailsModelImplCopyWithImpl<_$ProfileDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileDetailsModel implements ProfileDetailsModel {
  const factory _ProfileDetailsModel(
      {@JsonKey(name: "profile_image") final String? profileImage,
      @JsonKey(name: "profile_name") final String? profileName,
      @JsonKey(name: "profile_cover") final String? profileCover,
      @JsonKey(name: "profile_cover_description")
      final String? profileCoverDescription,
      @JsonKey(name: "parent_service_offered")
      final List<String>? parentServiceOffered,
      @JsonKey(name: "profile_headline") final String? profileHeadline,
      @JsonKey(name: "fresh_talent") final bool? freshTalent,
      @JsonKey(name: "partner_in_demand") final bool? partnerInDemand,
      @JsonKey(name: "trending_partner") final bool? trendingPartner,
      @JsonKey(name: "partner_information") final String? partnerInformation,
      @JsonKey(name: "languages") final List<String>? languages,
      @JsonKey(name: "city") final String? city,
      @JsonKey(name: "state") final String? state,
      @JsonKey(name: "country") final String? country,
      @JsonKey(name: "education") final String? education,
      @JsonKey(name: "certification") final String? certification,
      @JsonKey(name: "skills") final List<String>? skills,
      @JsonKey(name: "locke_profile") final bool? lockeProfile,
      @JsonKey(name: "currency_code") final String? currencyCode,
      @JsonKey(name: "media") final List<MediaModel>? media,
      @JsonKey(name: "created_on") final DateTime? createdOn,
      @JsonKey(name: "unlock_cost") final int? unlockCost,
      @JsonKey(name: "megmo_preferred_partner")
      final bool? megmoPreferredPartner}) = _$ProfileDetailsModelImpl;

  factory _ProfileDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ProfileDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: "profile_image")
  String? get profileImage;
  @override
  @JsonKey(name: "profile_name")
  String? get profileName;
  @override
  @JsonKey(name: "profile_cover")
  String? get profileCover;
  @override
  @JsonKey(name: "profile_cover_description")
  String? get profileCoverDescription;
  @override
  @JsonKey(name: "parent_service_offered")
  List<String>? get parentServiceOffered;
  @override
  @JsonKey(name: "profile_headline")
  String? get profileHeadline;
  @override
  @JsonKey(name: "fresh_talent")
  bool? get freshTalent;
  @override
  @JsonKey(name: "partner_in_demand")
  bool? get partnerInDemand;
  @override
  @JsonKey(name: "trending_partner")
  bool? get trendingPartner;
  @override
  @JsonKey(name: "partner_information")
  String? get partnerInformation;
  @override
  @JsonKey(name: "languages")
  List<String>? get languages;
  @override
  @JsonKey(name: "city")
  String? get city;
  @override
  @JsonKey(name: "state")
  String? get state;
  @override
  @JsonKey(name: "country")
  String? get country;
  @override
  @JsonKey(name: "education")
  String? get education;
  @override
  @JsonKey(name: "certification")
  String? get certification;
  @override
  @JsonKey(name: "skills")
  List<String>? get skills;
  @override
  @JsonKey(name: "locke_profile")
  bool? get lockeProfile;
  @override
  @JsonKey(name: "currency_code")
  String? get currencyCode;
  @override
  @JsonKey(name: "media")
  List<MediaModel>? get media;
  @override
  @JsonKey(name: "created_on")
  DateTime? get createdOn;
  @override
  @JsonKey(name: "unlock_cost")
  int? get unlockCost;
  @override
  @JsonKey(name: "megmo_preferred_partner")
  bool? get megmoPreferredPartner;
  @override
  @JsonKey(ignore: true)
  _$$ProfileDetailsModelImplCopyWith<_$ProfileDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileReviewModel _$ProfileReviewModelFromJson(Map<String, dynamic> json) {
  return _ProfileReviewModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileReviewModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_uuid")
  String? get userUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_uuid")
  String? get partnerUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "review_uuid")
  String? get reviewUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "communication")
  double? get communication => throw _privateConstructorUsedError;
  @JsonKey(name: "service_described")
  double? get serviceDescribed => throw _privateConstructorUsedError;
  @JsonKey(name: "recommended")
  double? get recommended => throw _privateConstructorUsedError;
  @JsonKey(name: "source")
  String? get source => throw _privateConstructorUsedError;
  @JsonKey(name: "review")
  String? get review => throw _privateConstructorUsedError;
  @JsonKey(name: "media")
  List<String>? get media => throw _privateConstructorUsedError;
  @JsonKey(name: "created_on")
  DateTime? get createdOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileReviewModelCopyWith<ProfileReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileReviewModelCopyWith<$Res> {
  factory $ProfileReviewModelCopyWith(
          ProfileReviewModel value, $Res Function(ProfileReviewModel) then) =
      _$ProfileReviewModelCopyWithImpl<$Res, ProfileReviewModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_uuid") String? userUuid,
      @JsonKey(name: "partner_uuid") String? partnerUuid,
      @JsonKey(name: "review_uuid") String? reviewUuid,
      @JsonKey(name: "communication") double? communication,
      @JsonKey(name: "service_described") double? serviceDescribed,
      @JsonKey(name: "recommended") double? recommended,
      @JsonKey(name: "source") String? source,
      @JsonKey(name: "review") String? review,
      @JsonKey(name: "media") List<String>? media,
      @JsonKey(name: "created_on") DateTime? createdOn});
}

/// @nodoc
class _$ProfileReviewModelCopyWithImpl<$Res, $Val extends ProfileReviewModel>
    implements $ProfileReviewModelCopyWith<$Res> {
  _$ProfileReviewModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userUuid = freezed,
    Object? partnerUuid = freezed,
    Object? reviewUuid = freezed,
    Object? communication = freezed,
    Object? serviceDescribed = freezed,
    Object? recommended = freezed,
    Object? source = freezed,
    Object? review = freezed,
    Object? media = freezed,
    Object? createdOn = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerUuid: freezed == partnerUuid
          ? _value.partnerUuid
          : partnerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewUuid: freezed == reviewUuid
          ? _value.reviewUuid
          : reviewUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      communication: freezed == communication
          ? _value.communication
          : communication // ignore: cast_nullable_to_non_nullable
              as double?,
      serviceDescribed: freezed == serviceDescribed
          ? _value.serviceDescribed
          : serviceDescribed // ignore: cast_nullable_to_non_nullable
              as double?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as double?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProfileReviewModelImplCopyWith<$Res>
    implements $ProfileReviewModelCopyWith<$Res> {
  factory _$$ProfileReviewModelImplCopyWith(_$ProfileReviewModelImpl value,
          $Res Function(_$ProfileReviewModelImpl) then) =
      __$$ProfileReviewModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_uuid") String? userUuid,
      @JsonKey(name: "partner_uuid") String? partnerUuid,
      @JsonKey(name: "review_uuid") String? reviewUuid,
      @JsonKey(name: "communication") double? communication,
      @JsonKey(name: "service_described") double? serviceDescribed,
      @JsonKey(name: "recommended") double? recommended,
      @JsonKey(name: "source") String? source,
      @JsonKey(name: "review") String? review,
      @JsonKey(name: "media") List<String>? media,
      @JsonKey(name: "created_on") DateTime? createdOn});
}

/// @nodoc
class __$$ProfileReviewModelImplCopyWithImpl<$Res>
    extends _$ProfileReviewModelCopyWithImpl<$Res, _$ProfileReviewModelImpl>
    implements _$$ProfileReviewModelImplCopyWith<$Res> {
  __$$ProfileReviewModelImplCopyWithImpl(_$ProfileReviewModelImpl _value,
      $Res Function(_$ProfileReviewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userUuid = freezed,
    Object? partnerUuid = freezed,
    Object? reviewUuid = freezed,
    Object? communication = freezed,
    Object? serviceDescribed = freezed,
    Object? recommended = freezed,
    Object? source = freezed,
    Object? review = freezed,
    Object? media = freezed,
    Object? createdOn = freezed,
  }) {
    return _then(_$ProfileReviewModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerUuid: freezed == partnerUuid
          ? _value.partnerUuid
          : partnerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewUuid: freezed == reviewUuid
          ? _value.reviewUuid
          : reviewUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      communication: freezed == communication
          ? _value.communication
          : communication // ignore: cast_nullable_to_non_nullable
              as double?,
      serviceDescribed: freezed == serviceDescribed
          ? _value.serviceDescribed
          : serviceDescribed // ignore: cast_nullable_to_non_nullable
              as double?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as double?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      review: freezed == review
          ? _value.review
          : review // ignore: cast_nullable_to_non_nullable
              as String?,
      media: freezed == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileReviewModelImpl implements _ProfileReviewModel {
  const _$ProfileReviewModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "user_uuid") this.userUuid,
      @JsonKey(name: "partner_uuid") this.partnerUuid,
      @JsonKey(name: "review_uuid") this.reviewUuid,
      @JsonKey(name: "communication") this.communication,
      @JsonKey(name: "service_described") this.serviceDescribed,
      @JsonKey(name: "recommended") this.recommended,
      @JsonKey(name: "source") this.source,
      @JsonKey(name: "review") this.review,
      @JsonKey(name: "media") final List<String>? media,
      @JsonKey(name: "created_on") this.createdOn})
      : _media = media;

  factory _$ProfileReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileReviewModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "user_uuid")
  final String? userUuid;
  @override
  @JsonKey(name: "partner_uuid")
  final String? partnerUuid;
  @override
  @JsonKey(name: "review_uuid")
  final String? reviewUuid;
  @override
  @JsonKey(name: "communication")
  final double? communication;
  @override
  @JsonKey(name: "service_described")
  final double? serviceDescribed;
  @override
  @JsonKey(name: "recommended")
  final double? recommended;
  @override
  @JsonKey(name: "source")
  final String? source;
  @override
  @JsonKey(name: "review")
  final String? review;
  final List<String>? _media;
  @override
  @JsonKey(name: "media")
  List<String>? get media {
    final value = _media;
    if (value == null) return null;
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "created_on")
  final DateTime? createdOn;

  @override
  String toString() {
    return 'ProfileReviewModel(id: $id, userUuid: $userUuid, partnerUuid: $partnerUuid, reviewUuid: $reviewUuid, communication: $communication, serviceDescribed: $serviceDescribed, recommended: $recommended, source: $source, review: $review, media: $media, createdOn: $createdOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileReviewModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userUuid, userUuid) ||
                other.userUuid == userUuid) &&
            (identical(other.partnerUuid, partnerUuid) ||
                other.partnerUuid == partnerUuid) &&
            (identical(other.reviewUuid, reviewUuid) ||
                other.reviewUuid == reviewUuid) &&
            (identical(other.communication, communication) ||
                other.communication == communication) &&
            (identical(other.serviceDescribed, serviceDescribed) ||
                other.serviceDescribed == serviceDescribed) &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.review, review) || other.review == review) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      userUuid,
      partnerUuid,
      reviewUuid,
      communication,
      serviceDescribed,
      recommended,
      source,
      review,
      const DeepCollectionEquality().hash(_media),
      createdOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProfileReviewModelImplCopyWith<_$ProfileReviewModelImpl> get copyWith =>
      __$$ProfileReviewModelImplCopyWithImpl<_$ProfileReviewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProfileReviewModelImplToJson(
      this,
    );
  }
}

abstract class _ProfileReviewModel implements ProfileReviewModel {
  const factory _ProfileReviewModel(
          {@JsonKey(name: "id") final String? id,
          @JsonKey(name: "user_uuid") final String? userUuid,
          @JsonKey(name: "partner_uuid") final String? partnerUuid,
          @JsonKey(name: "review_uuid") final String? reviewUuid,
          @JsonKey(name: "communication") final double? communication,
          @JsonKey(name: "service_described") final double? serviceDescribed,
          @JsonKey(name: "recommended") final double? recommended,
          @JsonKey(name: "source") final String? source,
          @JsonKey(name: "review") final String? review,
          @JsonKey(name: "media") final List<String>? media,
          @JsonKey(name: "created_on") final DateTime? createdOn}) =
      _$ProfileReviewModelImpl;

  factory _ProfileReviewModel.fromJson(Map<String, dynamic> json) =
      _$ProfileReviewModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "user_uuid")
  String? get userUuid;
  @override
  @JsonKey(name: "partner_uuid")
  String? get partnerUuid;
  @override
  @JsonKey(name: "review_uuid")
  String? get reviewUuid;
  @override
  @JsonKey(name: "communication")
  double? get communication;
  @override
  @JsonKey(name: "service_described")
  double? get serviceDescribed;
  @override
  @JsonKey(name: "recommended")
  double? get recommended;
  @override
  @JsonKey(name: "source")
  String? get source;
  @override
  @JsonKey(name: "review")
  String? get review;
  @override
  @JsonKey(name: "media")
  List<String>? get media;
  @override
  @JsonKey(name: "created_on")
  DateTime? get createdOn;
  @override
  @JsonKey(ignore: true)
  _$$ProfileReviewModelImplCopyWith<_$ProfileReviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
