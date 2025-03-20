// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_profiles_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AllProfileModel _$AllProfileModelFromJson(Map<String, dynamic> json) {
  return _AllProfileModel.fromJson(json);
}

/// @nodoc
mixin _$AllProfileModel {
  @JsonKey(name: "code")
  String get code => throw _privateConstructorUsedError;
  @JsonKey(name: "message")
  String get message => throw _privateConstructorUsedError;
  @JsonKey(name: "data")
  DataModel get data => throw _privateConstructorUsedError;
  @JsonKey(name: "success_status")
  bool get successStatus => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllProfileModelCopyWith<AllProfileModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllProfileModelCopyWith<$Res> {
  factory $AllProfileModelCopyWith(
          AllProfileModel value, $Res Function(AllProfileModel) then) =
      _$AllProfileModelCopyWithImpl<$Res, AllProfileModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") DataModel data,
      @JsonKey(name: "success_status") bool successStatus});

  $DataModelCopyWith<$Res> get data;
}

/// @nodoc
class _$AllProfileModelCopyWithImpl<$Res, $Val extends AllProfileModel>
    implements $AllProfileModelCopyWith<$Res> {
  _$AllProfileModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = null,
    Object? successStatus = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel,
      successStatus: null == successStatus
          ? _value.successStatus
          : successStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataModelCopyWith<$Res> get data {
    return $DataModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AllProfileModelImplCopyWith<$Res>
    implements $AllProfileModelCopyWith<$Res> {
  factory _$$AllProfileModelImplCopyWith(_$AllProfileModelImpl value,
          $Res Function(_$AllProfileModelImpl) then) =
      __$$AllProfileModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "code") String code,
      @JsonKey(name: "message") String message,
      @JsonKey(name: "data") DataModel data,
      @JsonKey(name: "success_status") bool successStatus});

  @override
  $DataModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$AllProfileModelImplCopyWithImpl<$Res>
    extends _$AllProfileModelCopyWithImpl<$Res, _$AllProfileModelImpl>
    implements _$$AllProfileModelImplCopyWith<$Res> {
  __$$AllProfileModelImplCopyWithImpl(
      _$AllProfileModelImpl _value, $Res Function(_$AllProfileModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? message = null,
    Object? data = null,
    Object? successStatus = null,
  }) {
    return _then(_$AllProfileModelImpl(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataModel,
      successStatus: null == successStatus
          ? _value.successStatus
          : successStatus // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AllProfileModelImpl implements _AllProfileModel {
  const _$AllProfileModelImpl(
      {@JsonKey(name: "code") required this.code,
      @JsonKey(name: "message") required this.message,
      @JsonKey(name: "data") required this.data,
      @JsonKey(name: "success_status") required this.successStatus});

  factory _$AllProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AllProfileModelImplFromJson(json);

  @override
  @JsonKey(name: "code")
  final String code;
  @override
  @JsonKey(name: "message")
  final String message;
  @override
  @JsonKey(name: "data")
  final DataModel data;
  @override
  @JsonKey(name: "success_status")
  final bool successStatus;

  @override
  String toString() {
    return 'AllProfileModel(code: $code, message: $message, data: $data, successStatus: $successStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AllProfileModelImpl &&
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
  _$$AllProfileModelImplCopyWith<_$AllProfileModelImpl> get copyWith =>
      __$$AllProfileModelImplCopyWithImpl<_$AllProfileModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AllProfileModelImplToJson(
      this,
    );
  }
}

abstract class _AllProfileModel implements AllProfileModel {
  const factory _AllProfileModel(
          {@JsonKey(name: "code") required final String code,
          @JsonKey(name: "message") required final String message,
          @JsonKey(name: "data") required final DataModel data,
          @JsonKey(name: "success_status") required final bool successStatus}) =
      _$AllProfileModelImpl;

  factory _AllProfileModel.fromJson(Map<String, dynamic> json) =
      _$AllProfileModelImpl.fromJson;

  @override
  @JsonKey(name: "code")
  String get code;
  @override
  @JsonKey(name: "message")
  String get message;
  @override
  @JsonKey(name: "data")
  DataModel get data;
  @override
  @JsonKey(name: "success_status")
  bool get successStatus;
  @override
  @JsonKey(ignore: true)
  _$$AllProfileModelImplCopyWith<_$AllProfileModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: "count")
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: "profiles")
  List<ProfileElementModel> get profiles => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "size")
  int get size => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "count") int count,
      @JsonKey(name: "profiles") List<ProfileElementModel> profiles,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "size") int size});
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
    Object? count = null,
    Object? profiles = null,
    Object? page = null,
    Object? size = null,
  }) {
    return _then(_value.copyWith(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      profiles: null == profiles
          ? _value.profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<ProfileElementModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
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
      {@JsonKey(name: "count") int count,
      @JsonKey(name: "profiles") List<ProfileElementModel> profiles,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "size") int size});
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
    Object? count = null,
    Object? profiles = null,
    Object? page = null,
    Object? size = null,
  }) {
    return _then(_$DataModelImpl(
      count: null == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      profiles: null == profiles
          ? _value._profiles
          : profiles // ignore: cast_nullable_to_non_nullable
              as List<ProfileElementModel>,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl implements _DataModel {
  const _$DataModelImpl(
      {@JsonKey(name: "count") required this.count,
      @JsonKey(name: "profiles")
      required final List<ProfileElementModel> profiles,
      @JsonKey(name: "page") required this.page,
      @JsonKey(name: "size") required this.size})
      : _profiles = profiles;

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  @override
  @JsonKey(name: "count")
  final int count;
  final List<ProfileElementModel> _profiles;
  @override
  @JsonKey(name: "profiles")
  List<ProfileElementModel> get profiles {
    if (_profiles is EqualUnmodifiableListView) return _profiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_profiles);
  }

  @override
  @JsonKey(name: "page")
  final int page;
  @override
  @JsonKey(name: "size")
  final int size;

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
      {@JsonKey(name: "count") required final int count,
      @JsonKey(name: "profiles")
      required final List<ProfileElementModel> profiles,
      @JsonKey(name: "page") required final int page,
      @JsonKey(name: "size") required final int size}) = _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @JsonKey(name: "count")
  int get count;
  @override
  @JsonKey(name: "profiles")
  List<ProfileElementModel> get profiles;
  @override
  @JsonKey(name: "page")
  int get page;
  @override
  @JsonKey(name: "size")
  int get size;
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
  @JsonKey(name: "subscriptionAgreement")
  SubscriptionAgreementModel? get subscriptionAgreement =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "profile")
  ProfileProfileModel get profile => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "subscriptionAgreement")
      SubscriptionAgreementModel? subscriptionAgreement,
      @JsonKey(name: "profile") ProfileProfileModel profile});

  $SubscriptionAgreementModelCopyWith<$Res>? get subscriptionAgreement;
  $ProfileProfileModelCopyWith<$Res> get profile;
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
    Object? subscriptionAgreement = freezed,
    Object? profile = null,
  }) {
    return _then(_value.copyWith(
      subscriptionAgreement: freezed == subscriptionAgreement
          ? _value.subscriptionAgreement
          : subscriptionAgreement // ignore: cast_nullable_to_non_nullable
              as SubscriptionAgreementModel?,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileProfileModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SubscriptionAgreementModelCopyWith<$Res>? get subscriptionAgreement {
    if (_value.subscriptionAgreement == null) {
      return null;
    }

    return $SubscriptionAgreementModelCopyWith<$Res>(
        _value.subscriptionAgreement!, (value) {
      return _then(_value.copyWith(subscriptionAgreement: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileProfileModelCopyWith<$Res> get profile {
    return $ProfileProfileModelCopyWith<$Res>(_value.profile, (value) {
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
      {@JsonKey(name: "subscriptionAgreement")
      SubscriptionAgreementModel? subscriptionAgreement,
      @JsonKey(name: "profile") ProfileProfileModel profile});

  @override
  $SubscriptionAgreementModelCopyWith<$Res>? get subscriptionAgreement;
  @override
  $ProfileProfileModelCopyWith<$Res> get profile;
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
    Object? subscriptionAgreement = freezed,
    Object? profile = null,
  }) {
    return _then(_$ProfileElementModelImpl(
      subscriptionAgreement: freezed == subscriptionAgreement
          ? _value.subscriptionAgreement
          : subscriptionAgreement // ignore: cast_nullable_to_non_nullable
              as SubscriptionAgreementModel?,
      profile: null == profile
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as ProfileProfileModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileElementModelImpl implements _ProfileElementModel {
  const _$ProfileElementModelImpl(
      {@JsonKey(name: "subscriptionAgreement")
      required this.subscriptionAgreement,
      @JsonKey(name: "profile") required this.profile});

  factory _$ProfileElementModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileElementModelImplFromJson(json);

  @override
  @JsonKey(name: "subscriptionAgreement")
  final SubscriptionAgreementModel? subscriptionAgreement;
  @override
  @JsonKey(name: "profile")
  final ProfileProfileModel profile;

  @override
  String toString() {
    return 'ProfileElementModel(subscriptionAgreement: $subscriptionAgreement, profile: $profile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileElementModelImpl &&
            (identical(other.subscriptionAgreement, subscriptionAgreement) ||
                other.subscriptionAgreement == subscriptionAgreement) &&
            (identical(other.profile, profile) || other.profile == profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subscriptionAgreement, profile);

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
      {@JsonKey(name: "subscriptionAgreement")
      required final SubscriptionAgreementModel? subscriptionAgreement,
      @JsonKey(name: "profile")
      required final ProfileProfileModel profile}) = _$ProfileElementModelImpl;

  factory _ProfileElementModel.fromJson(Map<String, dynamic> json) =
      _$ProfileElementModelImpl.fromJson;

  @override
  @JsonKey(name: "subscriptionAgreement")
  SubscriptionAgreementModel? get subscriptionAgreement;
  @override
  @JsonKey(name: "profile")
  ProfileProfileModel get profile;
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
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_uuid")
  String get profileUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_uuid")
  String get partnerUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_details")
  ProfileDetailsModel get profileDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "partnerLocation")
  List<PartnerLocationModel>? get partnerLocation =>
      throw _privateConstructorUsedError;
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
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "profile_uuid") String profileUuid,
      @JsonKey(name: "partner_uuid") String partnerUuid,
      @JsonKey(name: "profile_details") ProfileDetailsModel profileDetails,
      @JsonKey(name: "partnerLocation")
      List<PartnerLocationModel>? partnerLocation,
      @JsonKey(name: "portfolio") List<PortfolioModel>? portfolio,
      @JsonKey(name: "megmo_gigs") List<MegmoGigModel>? megmoGigs,
      @JsonKey(name: "FAQs") List<FaqModel>? faQs,
      @JsonKey(name: "created_on") DateTime? createdOn,
      @JsonKey(name: "availability") AvailabilityModel? availability,
      @JsonKey(name: "gallery") List<GalleryModel>? gallery});

  $ProfileDetailsModelCopyWith<$Res> get profileDetails;
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
    Object? id = null,
    Object? profileUuid = null,
    Object? partnerUuid = null,
    Object? profileDetails = null,
    Object? partnerLocation = freezed,
    Object? portfolio = freezed,
    Object? megmoGigs = freezed,
    Object? faQs = freezed,
    Object? createdOn = freezed,
    Object? availability = freezed,
    Object? gallery = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profileUuid: null == profileUuid
          ? _value.profileUuid
          : profileUuid // ignore: cast_nullable_to_non_nullable
              as String,
      partnerUuid: null == partnerUuid
          ? _value.partnerUuid
          : partnerUuid // ignore: cast_nullable_to_non_nullable
              as String,
      profileDetails: null == profileDetails
          ? _value.profileDetails
          : profileDetails // ignore: cast_nullable_to_non_nullable
              as ProfileDetailsModel,
      partnerLocation: freezed == partnerLocation
          ? _value.partnerLocation
          : partnerLocation // ignore: cast_nullable_to_non_nullable
              as List<PartnerLocationModel>?,
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
      gallery: freezed == gallery
          ? _value.gallery
          : gallery // ignore: cast_nullable_to_non_nullable
              as List<GalleryModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileDetailsModelCopyWith<$Res> get profileDetails {
    return $ProfileDetailsModelCopyWith<$Res>(_value.profileDetails, (value) {
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
      {@JsonKey(name: "id") String id,
      @JsonKey(name: "profile_uuid") String profileUuid,
      @JsonKey(name: "partner_uuid") String partnerUuid,
      @JsonKey(name: "profile_details") ProfileDetailsModel profileDetails,
      @JsonKey(name: "partnerLocation")
      List<PartnerLocationModel>? partnerLocation,
      @JsonKey(name: "portfolio") List<PortfolioModel>? portfolio,
      @JsonKey(name: "megmo_gigs") List<MegmoGigModel>? megmoGigs,
      @JsonKey(name: "FAQs") List<FaqModel>? faQs,
      @JsonKey(name: "created_on") DateTime? createdOn,
      @JsonKey(name: "availability") AvailabilityModel? availability,
      @JsonKey(name: "gallery") List<GalleryModel>? gallery});

  @override
  $ProfileDetailsModelCopyWith<$Res> get profileDetails;
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
    Object? id = null,
    Object? profileUuid = null,
    Object? partnerUuid = null,
    Object? profileDetails = null,
    Object? partnerLocation = freezed,
    Object? portfolio = freezed,
    Object? megmoGigs = freezed,
    Object? faQs = freezed,
    Object? createdOn = freezed,
    Object? availability = freezed,
    Object? gallery = freezed,
  }) {
    return _then(_$ProfileProfileModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      profileUuid: null == profileUuid
          ? _value.profileUuid
          : profileUuid // ignore: cast_nullable_to_non_nullable
              as String,
      partnerUuid: null == partnerUuid
          ? _value.partnerUuid
          : partnerUuid // ignore: cast_nullable_to_non_nullable
              as String,
      profileDetails: null == profileDetails
          ? _value.profileDetails
          : profileDetails // ignore: cast_nullable_to_non_nullable
              as ProfileDetailsModel,
      partnerLocation: freezed == partnerLocation
          ? _value._partnerLocation
          : partnerLocation // ignore: cast_nullable_to_non_nullable
              as List<PartnerLocationModel>?,
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
      {@JsonKey(name: "id") required this.id,
      @JsonKey(name: "profile_uuid") required this.profileUuid,
      @JsonKey(name: "partner_uuid") required this.partnerUuid,
      @JsonKey(name: "profile_details") required this.profileDetails,
      @JsonKey(name: "partnerLocation")
      final List<PartnerLocationModel>? partnerLocation,
      @JsonKey(name: "portfolio") final List<PortfolioModel>? portfolio,
      @JsonKey(name: "megmo_gigs") final List<MegmoGigModel>? megmoGigs,
      @JsonKey(name: "FAQs") final List<FaqModel>? faQs,
      @JsonKey(name: "created_on") this.createdOn,
      @JsonKey(name: "availability") this.availability,
      @JsonKey(name: "gallery") final List<GalleryModel>? gallery})
      : _partnerLocation = partnerLocation,
        _portfolio = portfolio,
        _megmoGigs = megmoGigs,
        _faQs = faQs,
        _gallery = gallery;

  factory _$ProfileProfileModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileProfileModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "profile_uuid")
  final String profileUuid;
  @override
  @JsonKey(name: "partner_uuid")
  final String partnerUuid;
  @override
  @JsonKey(name: "profile_details")
  final ProfileDetailsModel profileDetails;
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
    return 'ProfileProfileModel(id: $id, profileUuid: $profileUuid, partnerUuid: $partnerUuid, profileDetails: $profileDetails, partnerLocation: $partnerLocation, portfolio: $portfolio, megmoGigs: $megmoGigs, faQs: $faQs, createdOn: $createdOn, availability: $availability, gallery: $gallery)';
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
                .equals(other._partnerLocation, _partnerLocation) &&
            const DeepCollectionEquality()
                .equals(other._portfolio, _portfolio) &&
            const DeepCollectionEquality()
                .equals(other._megmoGigs, _megmoGigs) &&
            const DeepCollectionEquality().equals(other._faQs, _faQs) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
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
      const DeepCollectionEquality().hash(_partnerLocation),
      const DeepCollectionEquality().hash(_portfolio),
      const DeepCollectionEquality().hash(_megmoGigs),
      const DeepCollectionEquality().hash(_faQs),
      createdOn,
      availability,
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
          {@JsonKey(name: "id") required final String id,
          @JsonKey(name: "profile_uuid") required final String profileUuid,
          @JsonKey(name: "partner_uuid") required final String partnerUuid,
          @JsonKey(name: "profile_details")
          required final ProfileDetailsModel profileDetails,
          @JsonKey(name: "partnerLocation")
          final List<PartnerLocationModel>? partnerLocation,
          @JsonKey(name: "portfolio") final List<PortfolioModel>? portfolio,
          @JsonKey(name: "megmo_gigs") final List<MegmoGigModel>? megmoGigs,
          @JsonKey(name: "FAQs") final List<FaqModel>? faQs,
          @JsonKey(name: "created_on") final DateTime? createdOn,
          @JsonKey(name: "availability") final AvailabilityModel? availability,
          @JsonKey(name: "gallery") final List<GalleryModel>? gallery}) =
      _$ProfileProfileModelImpl;

  factory _ProfileProfileModel.fromJson(Map<String, dynamic> json) =
      _$ProfileProfileModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "profile_uuid")
  String get profileUuid;
  @override
  @JsonKey(name: "partner_uuid")
  String get partnerUuid;
  @override
  @JsonKey(name: "profile_details")
  ProfileDetailsModel get profileDetails;
  @override
  @JsonKey(name: "partnerLocation")
  List<PartnerLocationModel>? get partnerLocation;
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
  List<WorkingTimingModel> get workingTiming =>
      throw _privateConstructorUsedError;

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
      {@JsonKey(name: "working_timing")
      List<WorkingTimingModel> workingTiming});
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
    Object? workingTiming = null,
  }) {
    return _then(_value.copyWith(
      workingTiming: null == workingTiming
          ? _value.workingTiming
          : workingTiming // ignore: cast_nullable_to_non_nullable
              as List<WorkingTimingModel>,
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
      {@JsonKey(name: "working_timing")
      List<WorkingTimingModel> workingTiming});
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
    Object? workingTiming = null,
  }) {
    return _then(_$AvailabilityModelImpl(
      workingTiming: null == workingTiming
          ? _value._workingTiming
          : workingTiming // ignore: cast_nullable_to_non_nullable
              as List<WorkingTimingModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AvailabilityModelImpl implements _AvailabilityModel {
  const _$AvailabilityModelImpl(
      {@JsonKey(name: "working_timing")
      required final List<WorkingTimingModel> workingTiming})
      : _workingTiming = workingTiming;

  factory _$AvailabilityModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AvailabilityModelImplFromJson(json);

  final List<WorkingTimingModel> _workingTiming;
  @override
  @JsonKey(name: "working_timing")
  List<WorkingTimingModel> get workingTiming {
    if (_workingTiming is EqualUnmodifiableListView) return _workingTiming;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_workingTiming);
  }

  @override
  String toString() {
    return 'AvailabilityModel(workingTiming: $workingTiming)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AvailabilityModelImpl &&
            const DeepCollectionEquality()
                .equals(other._workingTiming, _workingTiming));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_workingTiming));

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
          required final List<WorkingTimingModel> workingTiming}) =
      _$AvailabilityModelImpl;

  factory _AvailabilityModel.fromJson(Map<String, dynamic> json) =
      _$AvailabilityModelImpl.fromJson;

  @override
  @JsonKey(name: "working_timing")
  List<WorkingTimingModel> get workingTiming;
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
  String get day => throw _privateConstructorUsedError;
  @JsonKey(name: "from")
  String get from => throw _privateConstructorUsedError;
  @JsonKey(name: "to")
  String get to => throw _privateConstructorUsedError;
  @JsonKey(name: "open")
  bool get open => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "day") String day,
      @JsonKey(name: "from") String from,
      @JsonKey(name: "to") String to,
      @JsonKey(name: "open") bool open});
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
    Object? day = null,
    Object? from = null,
    Object? to = null,
    Object? open = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
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
      {@JsonKey(name: "day") String day,
      @JsonKey(name: "from") String from,
      @JsonKey(name: "to") String to,
      @JsonKey(name: "open") bool open});
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
    Object? day = null,
    Object? from = null,
    Object? to = null,
    Object? open = null,
  }) {
    return _then(_$WorkingTimingModelImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      open: null == open
          ? _value.open
          : open // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WorkingTimingModelImpl implements _WorkingTimingModel {
  const _$WorkingTimingModelImpl(
      {@JsonKey(name: "day") required this.day,
      @JsonKey(name: "from") required this.from,
      @JsonKey(name: "to") required this.to,
      @JsonKey(name: "open") required this.open});

  factory _$WorkingTimingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$WorkingTimingModelImplFromJson(json);

  @override
  @JsonKey(name: "day")
  final String day;
  @override
  @JsonKey(name: "from")
  final String from;
  @override
  @JsonKey(name: "to")
  final String to;
  @override
  @JsonKey(name: "open")
  final bool open;

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
          {@JsonKey(name: "day") required final String day,
          @JsonKey(name: "from") required final String from,
          @JsonKey(name: "to") required final String to,
          @JsonKey(name: "open") required final bool open}) =
      _$WorkingTimingModelImpl;

  factory _WorkingTimingModel.fromJson(Map<String, dynamic> json) =
      _$WorkingTimingModelImpl.fromJson;

  @override
  @JsonKey(name: "day")
  String get day;
  @override
  @JsonKey(name: "from")
  String get from;
  @override
  @JsonKey(name: "to")
  String get to;
  @override
  @JsonKey(name: "open")
  bool get open;
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
  String get question => throw _privateConstructorUsedError;
  @JsonKey(name: "answer")
  String get answer => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "assigned_to")
  List<String> get assignedTo => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "question") String question,
      @JsonKey(name: "answer") String answer,
      @JsonKey(name: "tags") List<String> tags,
      @JsonKey(name: "assigned_to") List<String> assignedTo});
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
    Object? question = null,
    Object? answer = null,
    Object? tags = null,
    Object? assignedTo = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      assignedTo: null == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      {@JsonKey(name: "question") String question,
      @JsonKey(name: "answer") String answer,
      @JsonKey(name: "tags") List<String> tags,
      @JsonKey(name: "assigned_to") List<String> assignedTo});
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
    Object? question = null,
    Object? answer = null,
    Object? tags = null,
    Object? assignedTo = null,
  }) {
    return _then(_$FaqModelImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      answer: null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      assignedTo: null == assignedTo
          ? _value._assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FaqModelImpl implements _FaqModel {
  const _$FaqModelImpl(
      {@JsonKey(name: "question") required this.question,
      @JsonKey(name: "answer") required this.answer,
      @JsonKey(name: "tags") required final List<String> tags,
      @JsonKey(name: "assigned_to") required final List<String> assignedTo})
      : _tags = tags,
        _assignedTo = assignedTo;

  factory _$FaqModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FaqModelImplFromJson(json);

  @override
  @JsonKey(name: "question")
  final String question;
  @override
  @JsonKey(name: "answer")
  final String answer;
  final List<String> _tags;
  @override
  @JsonKey(name: "tags")
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String> _assignedTo;
  @override
  @JsonKey(name: "assigned_to")
  List<String> get assignedTo {
    if (_assignedTo is EqualUnmodifiableListView) return _assignedTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assignedTo);
  }

  @override
  String toString() {
    return 'FaqModel(question: $question, answer: $answer, tags: $tags, assignedTo: $assignedTo)';
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
                .equals(other._assignedTo, _assignedTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      question,
      answer,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_assignedTo));

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
      {@JsonKey(name: "question") required final String question,
      @JsonKey(name: "answer") required final String answer,
      @JsonKey(name: "tags") required final List<String> tags,
      @JsonKey(name: "assigned_to")
      required final List<String> assignedTo}) = _$FaqModelImpl;

  factory _FaqModel.fromJson(Map<String, dynamic> json) =
      _$FaqModelImpl.fromJson;

  @override
  @JsonKey(name: "question")
  String get question;
  @override
  @JsonKey(name: "answer")
  String get answer;
  @override
  @JsonKey(name: "tags")
  List<String> get tags;
  @override
  @JsonKey(name: "assigned_to")
  List<String> get assignedTo;
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
  List<MediaModel> get media => throw _privateConstructorUsedError;
  @JsonKey(name: "assigned_to")
  List<String> get assignedTo => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "media") List<MediaModel> media,
      @JsonKey(name: "assigned_to") List<String> assignedTo});
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
    Object? media = null,
    Object? assignedTo = null,
  }) {
    return _then(_value.copyWith(
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>,
      assignedTo: null == assignedTo
          ? _value.assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      {@JsonKey(name: "media") List<MediaModel> media,
      @JsonKey(name: "assigned_to") List<String> assignedTo});
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
    Object? media = null,
    Object? assignedTo = null,
  }) {
    return _then(_$GalleryModelImpl(
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>,
      assignedTo: null == assignedTo
          ? _value._assignedTo
          : assignedTo // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GalleryModelImpl implements _GalleryModel {
  const _$GalleryModelImpl(
      {@JsonKey(name: "media") required final List<MediaModel> media,
      @JsonKey(name: "assigned_to") required final List<String> assignedTo})
      : _media = media,
        _assignedTo = assignedTo;

  factory _$GalleryModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GalleryModelImplFromJson(json);

  final List<MediaModel> _media;
  @override
  @JsonKey(name: "media")
  List<MediaModel> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  final List<String> _assignedTo;
  @override
  @JsonKey(name: "assigned_to")
  List<String> get assignedTo {
    if (_assignedTo is EqualUnmodifiableListView) return _assignedTo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_assignedTo);
  }

  @override
  String toString() {
    return 'GalleryModel(media: $media, assignedTo: $assignedTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryModelImpl &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            const DeepCollectionEquality()
                .equals(other._assignedTo, _assignedTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_media),
      const DeepCollectionEquality().hash(_assignedTo));

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
      {@JsonKey(name: "media") required final List<MediaModel> media,
      @JsonKey(name: "assigned_to")
      required final List<String> assignedTo}) = _$GalleryModelImpl;

  factory _GalleryModel.fromJson(Map<String, dynamic> json) =
      _$GalleryModelImpl.fromJson;

  @override
  @JsonKey(name: "media")
  List<MediaModel> get media;
  @override
  @JsonKey(name: "assigned_to")
  List<String> get assignedTo;
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
  String get description => throw _privateConstructorUsedError;

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
      @JsonKey(name: "description") String description});
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
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
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
      @JsonKey(name: "description") String description});
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
    Object? description = null,
  }) {
    return _then(_$MediaModelImpl(
      mediaType: freezed == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MediaModelImpl implements _MediaModel {
  const _$MediaModelImpl(
      {@JsonKey(name: "media_type") this.mediaType,
      @JsonKey(name: "description") required this.description});

  factory _$MediaModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MediaModelImplFromJson(json);

  @override
  @JsonKey(name: "media_type")
  final String? mediaType;
  @override
  @JsonKey(name: "description")
  final String description;

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
          @JsonKey(name: "description") required final String description}) =
      _$MediaModelImpl;

  factory _MediaModel.fromJson(Map<String, dynamic> json) =
      _$MediaModelImpl.fromJson;

  @override
  @JsonKey(name: "media_type")
  String? get mediaType;
  @override
  @JsonKey(name: "description")
  String get description;
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
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "skills")
  List<String> get skills => throw _privateConstructorUsedError;
  @JsonKey(name: "media")
  List<dynamic> get media => throw _privateConstructorUsedError;
  @JsonKey(name: "otherMedia")
  List<String> get otherMedia => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "tags") List<String> tags,
      @JsonKey(name: "skills") List<String> skills,
      @JsonKey(name: "media") List<dynamic> media,
      @JsonKey(name: "otherMedia") List<String> otherMedia});
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
    Object? tags = null,
    Object? skills = null,
    Object? media = null,
    Object? otherMedia = null,
  }) {
    return _then(_value.copyWith(
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      otherMedia: null == otherMedia
          ? _value.otherMedia
          : otherMedia // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      {@JsonKey(name: "tags") List<String> tags,
      @JsonKey(name: "skills") List<String> skills,
      @JsonKey(name: "media") List<dynamic> media,
      @JsonKey(name: "otherMedia") List<String> otherMedia});
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
    Object? tags = null,
    Object? skills = null,
    Object? media = null,
    Object? otherMedia = null,
  }) {
    return _then(_$MegmoGigModelImpl(
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skills: null == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<dynamic>,
      otherMedia: null == otherMedia
          ? _value._otherMedia
          : otherMedia // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MegmoGigModelImpl implements _MegmoGigModel {
  const _$MegmoGigModelImpl(
      {@JsonKey(name: "tags") required final List<String> tags,
      @JsonKey(name: "skills") required final List<String> skills,
      @JsonKey(name: "media") required final List<dynamic> media,
      @JsonKey(name: "otherMedia") required final List<String> otherMedia})
      : _tags = tags,
        _skills = skills,
        _media = media,
        _otherMedia = otherMedia;

  factory _$MegmoGigModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MegmoGigModelImplFromJson(json);

  final List<String> _tags;
  @override
  @JsonKey(name: "tags")
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String> _skills;
  @override
  @JsonKey(name: "skills")
  List<String> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  final List<dynamic> _media;
  @override
  @JsonKey(name: "media")
  List<dynamic> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  final List<String> _otherMedia;
  @override
  @JsonKey(name: "otherMedia")
  List<String> get otherMedia {
    if (_otherMedia is EqualUnmodifiableListView) return _otherMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otherMedia);
  }

  @override
  String toString() {
    return 'MegmoGigModel(tags: $tags, skills: $skills, media: $media, otherMedia: $otherMedia)';
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
                .equals(other._otherMedia, _otherMedia));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_tags),
      const DeepCollectionEquality().hash(_skills),
      const DeepCollectionEquality().hash(_media),
      const DeepCollectionEquality().hash(_otherMedia));

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
      {@JsonKey(name: "tags") required final List<String> tags,
      @JsonKey(name: "skills") required final List<String> skills,
      @JsonKey(name: "media") required final List<dynamic> media,
      @JsonKey(name: "otherMedia")
      required final List<String> otherMedia}) = _$MegmoGigModelImpl;

  factory _MegmoGigModel.fromJson(Map<String, dynamic> json) =
      _$MegmoGigModelImpl.fromJson;

  @override
  @JsonKey(name: "tags")
  List<String> get tags;
  @override
  @JsonKey(name: "skills")
  List<String> get skills;
  @override
  @JsonKey(name: "media")
  List<dynamic> get media;
  @override
  @JsonKey(name: "otherMedia")
  List<String> get otherMedia;
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
  String get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: "longitude")
  String get longitude => throw _privateConstructorUsedError;
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
      @JsonKey(name: "latitude") String latitude,
      @JsonKey(name: "longitude") String longitude,
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
    Object? latitude = null,
    Object? longitude = null,
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
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
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
      @JsonKey(name: "latitude") String latitude,
      @JsonKey(name: "longitude") String longitude,
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
    Object? latitude = null,
    Object? longitude = null,
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
      latitude: null == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as String,
      longitude: null == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as String,
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
      @JsonKey(name: "latitude") required this.latitude,
      @JsonKey(name: "longitude") required this.longitude,
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
  final String latitude;
  @override
  @JsonKey(name: "longitude")
  final String longitude;
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
          @JsonKey(name: "latitude") required final String latitude,
          @JsonKey(name: "longitude") required final String longitude,
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
  String get latitude;
  @override
  @JsonKey(name: "longitude")
  String get longitude;
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
  String get projectHeadline => throw _privateConstructorUsedError;
  @JsonKey(name: "project_completion_date")
  DateTime get projectCompletionDate => throw _privateConstructorUsedError;
  @JsonKey(name: "project_description")
  String get projectDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "tags")
  List<String> get tags => throw _privateConstructorUsedError;
  @JsonKey(name: "skills")
  List<String> get skills => throw _privateConstructorUsedError;
  @JsonKey(name: "project_url")
  String get projectUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "media")
  List<MediaModel> get media => throw _privateConstructorUsedError;
  @JsonKey(name: "otherMedia")
  List<String> get otherMedia => throw _privateConstructorUsedError;
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
      {@JsonKey(name: "project_headline") String projectHeadline,
      @JsonKey(name: "project_completion_date") DateTime projectCompletionDate,
      @JsonKey(name: "project_description") String projectDescription,
      @JsonKey(name: "tags") List<String> tags,
      @JsonKey(name: "skills") List<String> skills,
      @JsonKey(name: "project_url") String projectUrl,
      @JsonKey(name: "media") List<MediaModel> media,
      @JsonKey(name: "otherMedia") List<String> otherMedia,
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
    Object? projectHeadline = null,
    Object? projectCompletionDate = null,
    Object? projectDescription = null,
    Object? tags = null,
    Object? skills = null,
    Object? projectUrl = null,
    Object? media = null,
    Object? otherMedia = null,
    Object? projectCover = freezed,
  }) {
    return _then(_value.copyWith(
      projectHeadline: null == projectHeadline
          ? _value.projectHeadline
          : projectHeadline // ignore: cast_nullable_to_non_nullable
              as String,
      projectCompletionDate: null == projectCompletionDate
          ? _value.projectCompletionDate
          : projectCompletionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      projectDescription: null == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      projectUrl: null == projectUrl
          ? _value.projectUrl
          : projectUrl // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>,
      otherMedia: null == otherMedia
          ? _value.otherMedia
          : otherMedia // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      {@JsonKey(name: "project_headline") String projectHeadline,
      @JsonKey(name: "project_completion_date") DateTime projectCompletionDate,
      @JsonKey(name: "project_description") String projectDescription,
      @JsonKey(name: "tags") List<String> tags,
      @JsonKey(name: "skills") List<String> skills,
      @JsonKey(name: "project_url") String projectUrl,
      @JsonKey(name: "media") List<MediaModel> media,
      @JsonKey(name: "otherMedia") List<String> otherMedia,
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
    Object? projectHeadline = null,
    Object? projectCompletionDate = null,
    Object? projectDescription = null,
    Object? tags = null,
    Object? skills = null,
    Object? projectUrl = null,
    Object? media = null,
    Object? otherMedia = null,
    Object? projectCover = freezed,
  }) {
    return _then(_$PortfolioModelImpl(
      projectHeadline: null == projectHeadline
          ? _value.projectHeadline
          : projectHeadline // ignore: cast_nullable_to_non_nullable
              as String,
      projectCompletionDate: null == projectCompletionDate
          ? _value.projectCompletionDate
          : projectCompletionDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      projectDescription: null == projectDescription
          ? _value.projectDescription
          : projectDescription // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      skills: null == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      projectUrl: null == projectUrl
          ? _value.projectUrl
          : projectUrl // ignore: cast_nullable_to_non_nullable
              as String,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>,
      otherMedia: null == otherMedia
          ? _value._otherMedia
          : otherMedia // ignore: cast_nullable_to_non_nullable
              as List<String>,
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
      {@JsonKey(name: "project_headline") required this.projectHeadline,
      @JsonKey(name: "project_completion_date")
      required this.projectCompletionDate,
      @JsonKey(name: "project_description") required this.projectDescription,
      @JsonKey(name: "tags") required final List<String> tags,
      @JsonKey(name: "skills") required final List<String> skills,
      @JsonKey(name: "project_url") required this.projectUrl,
      @JsonKey(name: "media") required final List<MediaModel> media,
      @JsonKey(name: "otherMedia") required final List<String> otherMedia,
      @JsonKey(name: "project_cover") this.projectCover})
      : _tags = tags,
        _skills = skills,
        _media = media,
        _otherMedia = otherMedia;

  factory _$PortfolioModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PortfolioModelImplFromJson(json);

  @override
  @JsonKey(name: "project_headline")
  final String projectHeadline;
  @override
  @JsonKey(name: "project_completion_date")
  final DateTime projectCompletionDate;
  @override
  @JsonKey(name: "project_description")
  final String projectDescription;
  final List<String> _tags;
  @override
  @JsonKey(name: "tags")
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

  final List<String> _skills;
  @override
  @JsonKey(name: "skills")
  List<String> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  @override
  @JsonKey(name: "project_url")
  final String projectUrl;
  final List<MediaModel> _media;
  @override
  @JsonKey(name: "media")
  List<MediaModel> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  final List<String> _otherMedia;
  @override
  @JsonKey(name: "otherMedia")
  List<String> get otherMedia {
    if (_otherMedia is EqualUnmodifiableListView) return _otherMedia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_otherMedia);
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
      {@JsonKey(name: "project_headline") required final String projectHeadline,
      @JsonKey(name: "project_completion_date")
      required final DateTime projectCompletionDate,
      @JsonKey(name: "project_description")
      required final String projectDescription,
      @JsonKey(name: "tags") required final List<String> tags,
      @JsonKey(name: "skills") required final List<String> skills,
      @JsonKey(name: "project_url") required final String projectUrl,
      @JsonKey(name: "media") required final List<MediaModel> media,
      @JsonKey(name: "otherMedia") required final List<String> otherMedia,
      @JsonKey(name: "project_cover")
      final String? projectCover}) = _$PortfolioModelImpl;

  factory _PortfolioModel.fromJson(Map<String, dynamic> json) =
      _$PortfolioModelImpl.fromJson;

  @override
  @JsonKey(name: "project_headline")
  String get projectHeadline;
  @override
  @JsonKey(name: "project_completion_date")
  DateTime get projectCompletionDate;
  @override
  @JsonKey(name: "project_description")
  String get projectDescription;
  @override
  @JsonKey(name: "tags")
  List<String> get tags;
  @override
  @JsonKey(name: "skills")
  List<String> get skills;
  @override
  @JsonKey(name: "project_url")
  String get projectUrl;
  @override
  @JsonKey(name: "media")
  List<MediaModel> get media;
  @override
  @JsonKey(name: "otherMedia")
  List<String> get otherMedia;
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
  String get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_name")
  String get profileName => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_cover")
  String get profileCover => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_cover_description")
  String get profileCoverDescription => throw _privateConstructorUsedError;
  @JsonKey(name: "parent_service_offered")
  List<String> get parentServiceOffered => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_headline")
  String get profileHeadline => throw _privateConstructorUsedError;
  @JsonKey(name: "megmo_preferred_partner")
  bool? get megmoPreferredPartner => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_level")
  int? get partnerLevel => throw _privateConstructorUsedError;
  @JsonKey(name: "fresh_talent")
  bool get freshTalent => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_in_demand")
  bool get partnerInDemand => throw _privateConstructorUsedError;
  @JsonKey(name: "trending_partner")
  bool get trendingPartner => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_information")
  String get partnerInformation => throw _privateConstructorUsedError;
  @JsonKey(name: "languages")
  List<String> get languages => throw _privateConstructorUsedError;
  @JsonKey(name: "city")
  String get city => throw _privateConstructorUsedError;
  @JsonKey(name: "state")
  String get state => throw _privateConstructorUsedError;
  @JsonKey(name: "country")
  String get country => throw _privateConstructorUsedError;
  @JsonKey(name: "education")
  String get education => throw _privateConstructorUsedError;
  @JsonKey(name: "certification")
  String get certification => throw _privateConstructorUsedError;
  @JsonKey(name: "skills")
  List<String> get skills => throw _privateConstructorUsedError;
  @JsonKey(name: "locke_profile")
  bool get lockeProfile => throw _privateConstructorUsedError;
  @JsonKey(name: "currency_code")
  String get currencyCode => throw _privateConstructorUsedError;
  @JsonKey(name: "unlock_cost")
  int? get unlockCost => throw _privateConstructorUsedError;
  @JsonKey(name: "media")
  List<MediaModel> get media => throw _privateConstructorUsedError;
  @JsonKey(name: "created_on")
  DateTime? get createdOn => throw _privateConstructorUsedError;
  @JsonKey(name: "updated_on")
  DateTime? get updatedOn => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "profile_image") String profileImage,
      @JsonKey(name: "profile_name") String profileName,
      @JsonKey(name: "profile_cover") String profileCover,
      @JsonKey(name: "profile_cover_description")
      String profileCoverDescription,
      @JsonKey(name: "parent_service_offered")
      List<String> parentServiceOffered,
      @JsonKey(name: "profile_headline") String profileHeadline,
      @JsonKey(name: "megmo_preferred_partner") bool? megmoPreferredPartner,
      @JsonKey(name: "partner_level") int? partnerLevel,
      @JsonKey(name: "fresh_talent") bool freshTalent,
      @JsonKey(name: "partner_in_demand") bool partnerInDemand,
      @JsonKey(name: "trending_partner") bool trendingPartner,
      @JsonKey(name: "partner_information") String partnerInformation,
      @JsonKey(name: "languages") List<String> languages,
      @JsonKey(name: "city") String city,
      @JsonKey(name: "state") String state,
      @JsonKey(name: "country") String country,
      @JsonKey(name: "education") String education,
      @JsonKey(name: "certification") String certification,
      @JsonKey(name: "skills") List<String> skills,
      @JsonKey(name: "locke_profile") bool lockeProfile,
      @JsonKey(name: "currency_code") String currencyCode,
      @JsonKey(name: "unlock_cost") int? unlockCost,
      @JsonKey(name: "media") List<MediaModel> media,
      @JsonKey(name: "created_on") DateTime? createdOn,
      @JsonKey(name: "updated_on") DateTime? updatedOn});
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
    Object? profileImage = null,
    Object? profileName = null,
    Object? profileCover = null,
    Object? profileCoverDescription = null,
    Object? parentServiceOffered = null,
    Object? profileHeadline = null,
    Object? megmoPreferredPartner = freezed,
    Object? partnerLevel = freezed,
    Object? freshTalent = null,
    Object? partnerInDemand = null,
    Object? trendingPartner = null,
    Object? partnerInformation = null,
    Object? languages = null,
    Object? city = null,
    Object? state = null,
    Object? country = null,
    Object? education = null,
    Object? certification = null,
    Object? skills = null,
    Object? lockeProfile = null,
    Object? currencyCode = null,
    Object? unlockCost = freezed,
    Object? media = null,
    Object? createdOn = freezed,
    Object? updatedOn = freezed,
  }) {
    return _then(_value.copyWith(
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      profileName: null == profileName
          ? _value.profileName
          : profileName // ignore: cast_nullable_to_non_nullable
              as String,
      profileCover: null == profileCover
          ? _value.profileCover
          : profileCover // ignore: cast_nullable_to_non_nullable
              as String,
      profileCoverDescription: null == profileCoverDescription
          ? _value.profileCoverDescription
          : profileCoverDescription // ignore: cast_nullable_to_non_nullable
              as String,
      parentServiceOffered: null == parentServiceOffered
          ? _value.parentServiceOffered
          : parentServiceOffered // ignore: cast_nullable_to_non_nullable
              as List<String>,
      profileHeadline: null == profileHeadline
          ? _value.profileHeadline
          : profileHeadline // ignore: cast_nullable_to_non_nullable
              as String,
      megmoPreferredPartner: freezed == megmoPreferredPartner
          ? _value.megmoPreferredPartner
          : megmoPreferredPartner // ignore: cast_nullable_to_non_nullable
              as bool?,
      partnerLevel: freezed == partnerLevel
          ? _value.partnerLevel
          : partnerLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      freshTalent: null == freshTalent
          ? _value.freshTalent
          : freshTalent // ignore: cast_nullable_to_non_nullable
              as bool,
      partnerInDemand: null == partnerInDemand
          ? _value.partnerInDemand
          : partnerInDemand // ignore: cast_nullable_to_non_nullable
              as bool,
      trendingPartner: null == trendingPartner
          ? _value.trendingPartner
          : trendingPartner // ignore: cast_nullable_to_non_nullable
              as bool,
      partnerInformation: null == partnerInformation
          ? _value.partnerInformation
          : partnerInformation // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      education: null == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String,
      certification: null == certification
          ? _value.certification
          : certification // ignore: cast_nullable_to_non_nullable
              as String,
      skills: null == skills
          ? _value.skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lockeProfile: null == lockeProfile
          ? _value.lockeProfile
          : lockeProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      unlockCost: freezed == unlockCost
          ? _value.unlockCost
          : unlockCost // ignore: cast_nullable_to_non_nullable
              as int?,
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      {@JsonKey(name: "profile_image") String profileImage,
      @JsonKey(name: "profile_name") String profileName,
      @JsonKey(name: "profile_cover") String profileCover,
      @JsonKey(name: "profile_cover_description")
      String profileCoverDescription,
      @JsonKey(name: "parent_service_offered")
      List<String> parentServiceOffered,
      @JsonKey(name: "profile_headline") String profileHeadline,
      @JsonKey(name: "megmo_preferred_partner") bool? megmoPreferredPartner,
      @JsonKey(name: "partner_level") int? partnerLevel,
      @JsonKey(name: "fresh_talent") bool freshTalent,
      @JsonKey(name: "partner_in_demand") bool partnerInDemand,
      @JsonKey(name: "trending_partner") bool trendingPartner,
      @JsonKey(name: "partner_information") String partnerInformation,
      @JsonKey(name: "languages") List<String> languages,
      @JsonKey(name: "city") String city,
      @JsonKey(name: "state") String state,
      @JsonKey(name: "country") String country,
      @JsonKey(name: "education") String education,
      @JsonKey(name: "certification") String certification,
      @JsonKey(name: "skills") List<String> skills,
      @JsonKey(name: "locke_profile") bool lockeProfile,
      @JsonKey(name: "currency_code") String currencyCode,
      @JsonKey(name: "unlock_cost") int? unlockCost,
      @JsonKey(name: "media") List<MediaModel> media,
      @JsonKey(name: "created_on") DateTime? createdOn,
      @JsonKey(name: "updated_on") DateTime? updatedOn});
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
    Object? profileImage = null,
    Object? profileName = null,
    Object? profileCover = null,
    Object? profileCoverDescription = null,
    Object? parentServiceOffered = null,
    Object? profileHeadline = null,
    Object? megmoPreferredPartner = freezed,
    Object? partnerLevel = freezed,
    Object? freshTalent = null,
    Object? partnerInDemand = null,
    Object? trendingPartner = null,
    Object? partnerInformation = null,
    Object? languages = null,
    Object? city = null,
    Object? state = null,
    Object? country = null,
    Object? education = null,
    Object? certification = null,
    Object? skills = null,
    Object? lockeProfile = null,
    Object? currencyCode = null,
    Object? unlockCost = freezed,
    Object? media = null,
    Object? createdOn = freezed,
    Object? updatedOn = freezed,
  }) {
    return _then(_$ProfileDetailsModelImpl(
      profileImage: null == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String,
      profileName: null == profileName
          ? _value.profileName
          : profileName // ignore: cast_nullable_to_non_nullable
              as String,
      profileCover: null == profileCover
          ? _value.profileCover
          : profileCover // ignore: cast_nullable_to_non_nullable
              as String,
      profileCoverDescription: null == profileCoverDescription
          ? _value.profileCoverDescription
          : profileCoverDescription // ignore: cast_nullable_to_non_nullable
              as String,
      parentServiceOffered: null == parentServiceOffered
          ? _value._parentServiceOffered
          : parentServiceOffered // ignore: cast_nullable_to_non_nullable
              as List<String>,
      profileHeadline: null == profileHeadline
          ? _value.profileHeadline
          : profileHeadline // ignore: cast_nullable_to_non_nullable
              as String,
      megmoPreferredPartner: freezed == megmoPreferredPartner
          ? _value.megmoPreferredPartner
          : megmoPreferredPartner // ignore: cast_nullable_to_non_nullable
              as bool?,
      partnerLevel: freezed == partnerLevel
          ? _value.partnerLevel
          : partnerLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      freshTalent: null == freshTalent
          ? _value.freshTalent
          : freshTalent // ignore: cast_nullable_to_non_nullable
              as bool,
      partnerInDemand: null == partnerInDemand
          ? _value.partnerInDemand
          : partnerInDemand // ignore: cast_nullable_to_non_nullable
              as bool,
      trendingPartner: null == trendingPartner
          ? _value.trendingPartner
          : trendingPartner // ignore: cast_nullable_to_non_nullable
              as bool,
      partnerInformation: null == partnerInformation
          ? _value.partnerInformation
          : partnerInformation // ignore: cast_nullable_to_non_nullable
              as String,
      languages: null == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>,
      city: null == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      education: null == education
          ? _value.education
          : education // ignore: cast_nullable_to_non_nullable
              as String,
      certification: null == certification
          ? _value.certification
          : certification // ignore: cast_nullable_to_non_nullable
              as String,
      skills: null == skills
          ? _value._skills
          : skills // ignore: cast_nullable_to_non_nullable
              as List<String>,
      lockeProfile: null == lockeProfile
          ? _value.lockeProfile
          : lockeProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      currencyCode: null == currencyCode
          ? _value.currencyCode
          : currencyCode // ignore: cast_nullable_to_non_nullable
              as String,
      unlockCost: freezed == unlockCost
          ? _value.unlockCost
          : unlockCost // ignore: cast_nullable_to_non_nullable
              as int?,
      media: null == media
          ? _value._media
          : media // ignore: cast_nullable_to_non_nullable
              as List<MediaModel>,
      createdOn: freezed == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedOn: freezed == updatedOn
          ? _value.updatedOn
          : updatedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileDetailsModelImpl implements _ProfileDetailsModel {
  const _$ProfileDetailsModelImpl(
      {@JsonKey(name: "profile_image") required this.profileImage,
      @JsonKey(name: "profile_name") required this.profileName,
      @JsonKey(name: "profile_cover") required this.profileCover,
      @JsonKey(name: "profile_cover_description")
      required this.profileCoverDescription,
      @JsonKey(name: "parent_service_offered")
      required final List<String> parentServiceOffered,
      @JsonKey(name: "profile_headline") required this.profileHeadline,
      @JsonKey(name: "megmo_preferred_partner") this.megmoPreferredPartner,
      @JsonKey(name: "partner_level") this.partnerLevel,
      @JsonKey(name: "fresh_talent") required this.freshTalent,
      @JsonKey(name: "partner_in_demand") required this.partnerInDemand,
      @JsonKey(name: "trending_partner") required this.trendingPartner,
      @JsonKey(name: "partner_information") required this.partnerInformation,
      @JsonKey(name: "languages") required final List<String> languages,
      @JsonKey(name: "city") required this.city,
      @JsonKey(name: "state") required this.state,
      @JsonKey(name: "country") required this.country,
      @JsonKey(name: "education") required this.education,
      @JsonKey(name: "certification") required this.certification,
      @JsonKey(name: "skills") required final List<String> skills,
      @JsonKey(name: "locke_profile") required this.lockeProfile,
      @JsonKey(name: "currency_code") required this.currencyCode,
      @JsonKey(name: "unlock_cost") this.unlockCost,
      @JsonKey(name: "media") required final List<MediaModel> media,
      @JsonKey(name: "created_on") this.createdOn,
      @JsonKey(name: "updated_on") this.updatedOn})
      : _parentServiceOffered = parentServiceOffered,
        _languages = languages,
        _skills = skills,
        _media = media;

  factory _$ProfileDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: "profile_image")
  final String profileImage;
  @override
  @JsonKey(name: "profile_name")
  final String profileName;
  @override
  @JsonKey(name: "profile_cover")
  final String profileCover;
  @override
  @JsonKey(name: "profile_cover_description")
  final String profileCoverDescription;
  final List<String> _parentServiceOffered;
  @override
  @JsonKey(name: "parent_service_offered")
  List<String> get parentServiceOffered {
    if (_parentServiceOffered is EqualUnmodifiableListView)
      return _parentServiceOffered;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parentServiceOffered);
  }

  @override
  @JsonKey(name: "profile_headline")
  final String profileHeadline;
  @override
  @JsonKey(name: "megmo_preferred_partner")
  final bool? megmoPreferredPartner;
  @override
  @JsonKey(name: "partner_level")
  final int? partnerLevel;
  @override
  @JsonKey(name: "fresh_talent")
  final bool freshTalent;
  @override
  @JsonKey(name: "partner_in_demand")
  final bool partnerInDemand;
  @override
  @JsonKey(name: "trending_partner")
  final bool trendingPartner;
  @override
  @JsonKey(name: "partner_information")
  final String partnerInformation;
  final List<String> _languages;
  @override
  @JsonKey(name: "languages")
  List<String> get languages {
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_languages);
  }

  @override
  @JsonKey(name: "city")
  final String city;
  @override
  @JsonKey(name: "state")
  final String state;
  @override
  @JsonKey(name: "country")
  final String country;
  @override
  @JsonKey(name: "education")
  final String education;
  @override
  @JsonKey(name: "certification")
  final String certification;
  final List<String> _skills;
  @override
  @JsonKey(name: "skills")
  List<String> get skills {
    if (_skills is EqualUnmodifiableListView) return _skills;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_skills);
  }

  @override
  @JsonKey(name: "locke_profile")
  final bool lockeProfile;
  @override
  @JsonKey(name: "currency_code")
  final String currencyCode;
  @override
  @JsonKey(name: "unlock_cost")
  final int? unlockCost;
  final List<MediaModel> _media;
  @override
  @JsonKey(name: "media")
  List<MediaModel> get media {
    if (_media is EqualUnmodifiableListView) return _media;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_media);
  }

  @override
  @JsonKey(name: "created_on")
  final DateTime? createdOn;
  @override
  @JsonKey(name: "updated_on")
  final DateTime? updatedOn;

  @override
  String toString() {
    return 'ProfileDetailsModel(profileImage: $profileImage, profileName: $profileName, profileCover: $profileCover, profileCoverDescription: $profileCoverDescription, parentServiceOffered: $parentServiceOffered, profileHeadline: $profileHeadline, megmoPreferredPartner: $megmoPreferredPartner, partnerLevel: $partnerLevel, freshTalent: $freshTalent, partnerInDemand: $partnerInDemand, trendingPartner: $trendingPartner, partnerInformation: $partnerInformation, languages: $languages, city: $city, state: $state, country: $country, education: $education, certification: $certification, skills: $skills, lockeProfile: $lockeProfile, currencyCode: $currencyCode, unlockCost: $unlockCost, media: $media, createdOn: $createdOn, updatedOn: $updatedOn)';
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
            (identical(other.megmoPreferredPartner, megmoPreferredPartner) ||
                other.megmoPreferredPartner == megmoPreferredPartner) &&
            (identical(other.partnerLevel, partnerLevel) ||
                other.partnerLevel == partnerLevel) &&
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
            (identical(other.unlockCost, unlockCost) ||
                other.unlockCost == unlockCost) &&
            const DeepCollectionEquality().equals(other._media, _media) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn) &&
            (identical(other.updatedOn, updatedOn) ||
                other.updatedOn == updatedOn));
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
        megmoPreferredPartner,
        partnerLevel,
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
        unlockCost,
        const DeepCollectionEquality().hash(_media),
        createdOn,
        updatedOn
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
      {@JsonKey(name: "profile_image") required final String profileImage,
      @JsonKey(name: "profile_name") required final String profileName,
      @JsonKey(name: "profile_cover") required final String profileCover,
      @JsonKey(name: "profile_cover_description")
      required final String profileCoverDescription,
      @JsonKey(name: "parent_service_offered")
      required final List<String> parentServiceOffered,
      @JsonKey(name: "profile_headline") required final String profileHeadline,
      @JsonKey(name: "megmo_preferred_partner")
      final bool? megmoPreferredPartner,
      @JsonKey(name: "partner_level") final int? partnerLevel,
      @JsonKey(name: "fresh_talent") required final bool freshTalent,
      @JsonKey(name: "partner_in_demand") required final bool partnerInDemand,
      @JsonKey(name: "trending_partner") required final bool trendingPartner,
      @JsonKey(name: "partner_information")
      required final String partnerInformation,
      @JsonKey(name: "languages") required final List<String> languages,
      @JsonKey(name: "city") required final String city,
      @JsonKey(name: "state") required final String state,
      @JsonKey(name: "country") required final String country,
      @JsonKey(name: "education") required final String education,
      @JsonKey(name: "certification") required final String certification,
      @JsonKey(name: "skills") required final List<String> skills,
      @JsonKey(name: "locke_profile") required final bool lockeProfile,
      @JsonKey(name: "currency_code") required final String currencyCode,
      @JsonKey(name: "unlock_cost") final int? unlockCost,
      @JsonKey(name: "media") required final List<MediaModel> media,
      @JsonKey(name: "created_on") final DateTime? createdOn,
      @JsonKey(name: "updated_on")
      final DateTime? updatedOn}) = _$ProfileDetailsModelImpl;

  factory _ProfileDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ProfileDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: "profile_image")
  String get profileImage;
  @override
  @JsonKey(name: "profile_name")
  String get profileName;
  @override
  @JsonKey(name: "profile_cover")
  String get profileCover;
  @override
  @JsonKey(name: "profile_cover_description")
  String get profileCoverDescription;
  @override
  @JsonKey(name: "parent_service_offered")
  List<String> get parentServiceOffered;
  @override
  @JsonKey(name: "profile_headline")
  String get profileHeadline;
  @override
  @JsonKey(name: "megmo_preferred_partner")
  bool? get megmoPreferredPartner;
  @override
  @JsonKey(name: "partner_level")
  int? get partnerLevel;
  @override
  @JsonKey(name: "fresh_talent")
  bool get freshTalent;
  @override
  @JsonKey(name: "partner_in_demand")
  bool get partnerInDemand;
  @override
  @JsonKey(name: "trending_partner")
  bool get trendingPartner;
  @override
  @JsonKey(name: "partner_information")
  String get partnerInformation;
  @override
  @JsonKey(name: "languages")
  List<String> get languages;
  @override
  @JsonKey(name: "city")
  String get city;
  @override
  @JsonKey(name: "state")
  String get state;
  @override
  @JsonKey(name: "country")
  String get country;
  @override
  @JsonKey(name: "education")
  String get education;
  @override
  @JsonKey(name: "certification")
  String get certification;
  @override
  @JsonKey(name: "skills")
  List<String> get skills;
  @override
  @JsonKey(name: "locke_profile")
  bool get lockeProfile;
  @override
  @JsonKey(name: "currency_code")
  String get currencyCode;
  @override
  @JsonKey(name: "unlock_cost")
  int? get unlockCost;
  @override
  @JsonKey(name: "media")
  List<MediaModel> get media;
  @override
  @JsonKey(name: "created_on")
  DateTime? get createdOn;
  @override
  @JsonKey(name: "updated_on")
  DateTime? get updatedOn;
  @override
  @JsonKey(ignore: true)
  _$$ProfileDetailsModelImplCopyWith<_$ProfileDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SubscriptionAgreementModel _$SubscriptionAgreementModelFromJson(
    Map<String, dynamic> json) {
  return _SubscriptionAgreementModel.fromJson(json);
}

/// @nodoc
mixin _$SubscriptionAgreementModel {
  @JsonKey(name: "subscription_tier")
  String get subscriptionTier => throw _privateConstructorUsedError;
  @JsonKey(name: "commission_percentage")
  double get commissionPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: "document_url")
  String get documentUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "validity")
  DateTime get validity => throw _privateConstructorUsedError;
  @JsonKey(name: "is_active")
  bool get isActive => throw _privateConstructorUsedError;
  @JsonKey(name: "created_on")
  DateTime get createdOn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SubscriptionAgreementModelCopyWith<SubscriptionAgreementModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionAgreementModelCopyWith<$Res> {
  factory $SubscriptionAgreementModelCopyWith(SubscriptionAgreementModel value,
          $Res Function(SubscriptionAgreementModel) then) =
      _$SubscriptionAgreementModelCopyWithImpl<$Res,
          SubscriptionAgreementModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "subscription_tier") String subscriptionTier,
      @JsonKey(name: "commission_percentage") double commissionPercentage,
      @JsonKey(name: "document_url") String documentUrl,
      @JsonKey(name: "validity") DateTime validity,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "created_on") DateTime createdOn});
}

/// @nodoc
class _$SubscriptionAgreementModelCopyWithImpl<$Res,
        $Val extends SubscriptionAgreementModel>
    implements $SubscriptionAgreementModelCopyWith<$Res> {
  _$SubscriptionAgreementModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionTier = null,
    Object? commissionPercentage = null,
    Object? documentUrl = null,
    Object? validity = null,
    Object? isActive = null,
    Object? createdOn = null,
  }) {
    return _then(_value.copyWith(
      subscriptionTier: null == subscriptionTier
          ? _value.subscriptionTier
          : subscriptionTier // ignore: cast_nullable_to_non_nullable
              as String,
      commissionPercentage: null == commissionPercentage
          ? _value.commissionPercentage
          : commissionPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      documentUrl: null == documentUrl
          ? _value.documentUrl
          : documentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      validity: null == validity
          ? _value.validity
          : validity // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionAgreementModelImplCopyWith<$Res>
    implements $SubscriptionAgreementModelCopyWith<$Res> {
  factory _$$SubscriptionAgreementModelImplCopyWith(
          _$SubscriptionAgreementModelImpl value,
          $Res Function(_$SubscriptionAgreementModelImpl) then) =
      __$$SubscriptionAgreementModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "subscription_tier") String subscriptionTier,
      @JsonKey(name: "commission_percentage") double commissionPercentage,
      @JsonKey(name: "document_url") String documentUrl,
      @JsonKey(name: "validity") DateTime validity,
      @JsonKey(name: "is_active") bool isActive,
      @JsonKey(name: "created_on") DateTime createdOn});
}

/// @nodoc
class __$$SubscriptionAgreementModelImplCopyWithImpl<$Res>
    extends _$SubscriptionAgreementModelCopyWithImpl<$Res,
        _$SubscriptionAgreementModelImpl>
    implements _$$SubscriptionAgreementModelImplCopyWith<$Res> {
  __$$SubscriptionAgreementModelImplCopyWithImpl(
      _$SubscriptionAgreementModelImpl _value,
      $Res Function(_$SubscriptionAgreementModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionTier = null,
    Object? commissionPercentage = null,
    Object? documentUrl = null,
    Object? validity = null,
    Object? isActive = null,
    Object? createdOn = null,
  }) {
    return _then(_$SubscriptionAgreementModelImpl(
      subscriptionTier: null == subscriptionTier
          ? _value.subscriptionTier
          : subscriptionTier // ignore: cast_nullable_to_non_nullable
              as String,
      commissionPercentage: null == commissionPercentage
          ? _value.commissionPercentage
          : commissionPercentage // ignore: cast_nullable_to_non_nullable
              as double,
      documentUrl: null == documentUrl
          ? _value.documentUrl
          : documentUrl // ignore: cast_nullable_to_non_nullable
              as String,
      validity: null == validity
          ? _value.validity
          : validity // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool,
      createdOn: null == createdOn
          ? _value.createdOn
          : createdOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SubscriptionAgreementModelImpl implements _SubscriptionAgreementModel {
  const _$SubscriptionAgreementModelImpl(
      {@JsonKey(name: "subscription_tier") required this.subscriptionTier,
      @JsonKey(name: "commission_percentage")
      required this.commissionPercentage,
      @JsonKey(name: "document_url") required this.documentUrl,
      @JsonKey(name: "validity") required this.validity,
      @JsonKey(name: "is_active") required this.isActive,
      @JsonKey(name: "created_on") required this.createdOn});

  factory _$SubscriptionAgreementModelImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$SubscriptionAgreementModelImplFromJson(json);

  @override
  @JsonKey(name: "subscription_tier")
  final String subscriptionTier;
  @override
  @JsonKey(name: "commission_percentage")
  final double commissionPercentage;
  @override
  @JsonKey(name: "document_url")
  final String documentUrl;
  @override
  @JsonKey(name: "validity")
  final DateTime validity;
  @override
  @JsonKey(name: "is_active")
  final bool isActive;
  @override
  @JsonKey(name: "created_on")
  final DateTime createdOn;

  @override
  String toString() {
    return 'SubscriptionAgreementModel(subscriptionTier: $subscriptionTier, commissionPercentage: $commissionPercentage, documentUrl: $documentUrl, validity: $validity, isActive: $isActive, createdOn: $createdOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionAgreementModelImpl &&
            (identical(other.subscriptionTier, subscriptionTier) ||
                other.subscriptionTier == subscriptionTier) &&
            (identical(other.commissionPercentage, commissionPercentage) ||
                other.commissionPercentage == commissionPercentage) &&
            (identical(other.documentUrl, documentUrl) ||
                other.documentUrl == documentUrl) &&
            (identical(other.validity, validity) ||
                other.validity == validity) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.createdOn, createdOn) ||
                other.createdOn == createdOn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, subscriptionTier,
      commissionPercentage, documentUrl, validity, isActive, createdOn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionAgreementModelImplCopyWith<_$SubscriptionAgreementModelImpl>
      get copyWith => __$$SubscriptionAgreementModelImplCopyWithImpl<
          _$SubscriptionAgreementModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SubscriptionAgreementModelImplToJson(
      this,
    );
  }
}

abstract class _SubscriptionAgreementModel
    implements SubscriptionAgreementModel {
  const factory _SubscriptionAgreementModel(
          {@JsonKey(name: "subscription_tier")
          required final String subscriptionTier,
          @JsonKey(name: "commission_percentage")
          required final double commissionPercentage,
          @JsonKey(name: "document_url") required final String documentUrl,
          @JsonKey(name: "validity") required final DateTime validity,
          @JsonKey(name: "is_active") required final bool isActive,
          @JsonKey(name: "created_on") required final DateTime createdOn}) =
      _$SubscriptionAgreementModelImpl;

  factory _SubscriptionAgreementModel.fromJson(Map<String, dynamic> json) =
      _$SubscriptionAgreementModelImpl.fromJson;

  @override
  @JsonKey(name: "subscription_tier")
  String get subscriptionTier;
  @override
  @JsonKey(name: "commission_percentage")
  double get commissionPercentage;
  @override
  @JsonKey(name: "document_url")
  String get documentUrl;
  @override
  @JsonKey(name: "validity")
  DateTime get validity;
  @override
  @JsonKey(name: "is_active")
  bool get isActive;
  @override
  @JsonKey(name: "created_on")
  DateTime get createdOn;
  @override
  @JsonKey(ignore: true)
  _$$SubscriptionAgreementModelImplCopyWith<_$SubscriptionAgreementModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
