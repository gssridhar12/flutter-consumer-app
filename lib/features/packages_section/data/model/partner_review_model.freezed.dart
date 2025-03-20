// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'partner_review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PartnerReviewModel _$PartnerReviewModelFromJson(Map<String, dynamic> json) {
  return _PartnerReviewModel.fromJson(json);
}

/// @nodoc
mixin _$PartnerReviewModel {
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
  $PartnerReviewModelCopyWith<PartnerReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerReviewModelCopyWith<$Res> {
  factory $PartnerReviewModelCopyWith(
          PartnerReviewModel value, $Res Function(PartnerReviewModel) then) =
      _$PartnerReviewModelCopyWithImpl<$Res, PartnerReviewModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataModel? data,
      @JsonKey(name: "success_status") bool? successStatus});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$PartnerReviewModelCopyWithImpl<$Res, $Val extends PartnerReviewModel>
    implements $PartnerReviewModelCopyWith<$Res> {
  _$PartnerReviewModelCopyWithImpl(this._value, this._then);

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
abstract class _$$PartnerReviewModelImplCopyWith<$Res>
    implements $PartnerReviewModelCopyWith<$Res> {
  factory _$$PartnerReviewModelImplCopyWith(_$PartnerReviewModelImpl value,
          $Res Function(_$PartnerReviewModelImpl) then) =
      __$$PartnerReviewModelImplCopyWithImpl<$Res>;
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
class __$$PartnerReviewModelImplCopyWithImpl<$Res>
    extends _$PartnerReviewModelCopyWithImpl<$Res, _$PartnerReviewModelImpl>
    implements _$$PartnerReviewModelImplCopyWith<$Res> {
  __$$PartnerReviewModelImplCopyWithImpl(_$PartnerReviewModelImpl _value,
      $Res Function(_$PartnerReviewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? successStatus = freezed,
  }) {
    return _then(_$PartnerReviewModelImpl(
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
class _$PartnerReviewModelImpl implements _PartnerReviewModel {
  const _$PartnerReviewModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "success_status") this.successStatus});

  factory _$PartnerReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PartnerReviewModelImplFromJson(json);

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
    return 'PartnerReviewModel(code: $code, message: $message, data: $data, successStatus: $successStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PartnerReviewModelImpl &&
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
  _$$PartnerReviewModelImplCopyWith<_$PartnerReviewModelImpl> get copyWith =>
      __$$PartnerReviewModelImplCopyWithImpl<_$PartnerReviewModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PartnerReviewModelImplToJson(
      this,
    );
  }
}

abstract class _PartnerReviewModel implements PartnerReviewModel {
  const factory _PartnerReviewModel(
          {@JsonKey(name: "code") final String? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final DataModel? data,
          @JsonKey(name: "success_status") final bool? successStatus}) =
      _$PartnerReviewModelImpl;

  factory _PartnerReviewModel.fromJson(Map<String, dynamic> json) =
      _$PartnerReviewModelImpl.fromJson;

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
  _$$PartnerReviewModelImplCopyWith<_$PartnerReviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int? get page => throw _privateConstructorUsedError;
  @JsonKey(name: "size")
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: "profileReviews")
  List<ProfileReviewModel>? get profileReviews =>
      throw _privateConstructorUsedError;

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
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "size") int? size,
      @JsonKey(name: "profileReviews")
      List<ProfileReviewModel>? profileReviews});
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
    Object? page = freezed,
    Object? size = freezed,
    Object? profileReviews = freezed,
  }) {
    return _then(_value.copyWith(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      profileReviews: freezed == profileReviews
          ? _value.profileReviews
          : profileReviews // ignore: cast_nullable_to_non_nullable
              as List<ProfileReviewModel>?,
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
      @JsonKey(name: "page") int? page,
      @JsonKey(name: "size") int? size,
      @JsonKey(name: "profileReviews")
      List<ProfileReviewModel>? profileReviews});
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
    Object? page = freezed,
    Object? size = freezed,
    Object? profileReviews = freezed,
  }) {
    return _then(_$DataModelImpl(
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      profileReviews: freezed == profileReviews
          ? _value._profileReviews
          : profileReviews // ignore: cast_nullable_to_non_nullable
              as List<ProfileReviewModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl implements _DataModel {
  const _$DataModelImpl(
      {@JsonKey(name: "count") this.count,
      @JsonKey(name: "page") this.page,
      @JsonKey(name: "size") this.size,
      @JsonKey(name: "profileReviews")
      final List<ProfileReviewModel>? profileReviews})
      : _profileReviews = profileReviews;

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  @override
  @JsonKey(name: "count")
  final int? count;
  @override
  @JsonKey(name: "page")
  final int? page;
  @override
  @JsonKey(name: "size")
  final int? size;
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
  String toString() {
    return 'DataModel(count: $count, page: $page, size: $size, profileReviews: $profileReviews)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality()
                .equals(other._profileReviews, _profileReviews));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count, page, size,
      const DeepCollectionEquality().hash(_profileReviews));

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
      @JsonKey(name: "page") final int? page,
      @JsonKey(name: "size") final int? size,
      @JsonKey(name: "profileReviews")
      final List<ProfileReviewModel>? profileReviews}) = _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @JsonKey(name: "count")
  int? get count;
  @override
  @JsonKey(name: "page")
  int? get page;
  @override
  @JsonKey(name: "size")
  int? get size;
  @override
  @JsonKey(name: "profileReviews")
  List<ProfileReviewModel>? get profileReviews;
  @override
  @JsonKey(ignore: true)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProfileReviewModel _$ProfileReviewModelFromJson(Map<String, dynamic> json) {
  return _ProfileReviewModel.fromJson(json);
}

/// @nodoc
mixin _$ProfileReviewModel {
  @JsonKey(name: "fullName")
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: "profileImage")
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: "reviewDetails")
  ReviewDetailsModel? get reviewDetails => throw _privateConstructorUsedError;
  @JsonKey(name: "patron_level")
  int? get patronLevel => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "profileImage") String? profileImage,
      @JsonKey(name: "reviewDetails") ReviewDetailsModel? reviewDetails,
      @JsonKey(name: "patron_level") int? patronLevel});

  $ReviewDetailsModelCopyWith<$Res>? get reviewDetails;
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
    Object? fullName = freezed,
    Object? profileImage = freezed,
    Object? reviewDetails = freezed,
    Object? patronLevel = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewDetails: freezed == reviewDetails
          ? _value.reviewDetails
          : reviewDetails // ignore: cast_nullable_to_non_nullable
              as ReviewDetailsModel?,
      patronLevel: freezed == patronLevel
          ? _value.patronLevel
          : patronLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewDetailsModelCopyWith<$Res>? get reviewDetails {
    if (_value.reviewDetails == null) {
      return null;
    }

    return $ReviewDetailsModelCopyWith<$Res>(_value.reviewDetails!, (value) {
      return _then(_value.copyWith(reviewDetails: value) as $Val);
    });
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
      {@JsonKey(name: "fullName") String? fullName,
      @JsonKey(name: "profileImage") String? profileImage,
      @JsonKey(name: "reviewDetails") ReviewDetailsModel? reviewDetails,
      @JsonKey(name: "patron_level") int? patronLevel});

  @override
  $ReviewDetailsModelCopyWith<$Res>? get reviewDetails;
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
    Object? fullName = freezed,
    Object? profileImage = freezed,
    Object? reviewDetails = freezed,
    Object? patronLevel = freezed,
  }) {
    return _then(_$ProfileReviewModelImpl(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewDetails: freezed == reviewDetails
          ? _value.reviewDetails
          : reviewDetails // ignore: cast_nullable_to_non_nullable
              as ReviewDetailsModel?,
      patronLevel: freezed == patronLevel
          ? _value.patronLevel
          : patronLevel // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProfileReviewModelImpl implements _ProfileReviewModel {
  const _$ProfileReviewModelImpl(
      {@JsonKey(name: "fullName") this.fullName,
      @JsonKey(name: "profileImage") this.profileImage,
      @JsonKey(name: "reviewDetails") this.reviewDetails,
      @JsonKey(name: "patron_level") this.patronLevel});

  factory _$ProfileReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProfileReviewModelImplFromJson(json);

  @override
  @JsonKey(name: "fullName")
  final String? fullName;
  @override
  @JsonKey(name: "profileImage")
  final String? profileImage;
  @override
  @JsonKey(name: "reviewDetails")
  final ReviewDetailsModel? reviewDetails;
  @override
  @JsonKey(name: "patron_level")
  final int? patronLevel;

  @override
  String toString() {
    return 'ProfileReviewModel(fullName: $fullName, profileImage: $profileImage, reviewDetails: $reviewDetails, patronLevel: $patronLevel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProfileReviewModelImpl &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.reviewDetails, reviewDetails) ||
                other.reviewDetails == reviewDetails) &&
            (identical(other.patronLevel, patronLevel) ||
                other.patronLevel == patronLevel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, fullName, profileImage, reviewDetails, patronLevel);

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
      {@JsonKey(name: "fullName") final String? fullName,
      @JsonKey(name: "profileImage") final String? profileImage,
      @JsonKey(name: "reviewDetails") final ReviewDetailsModel? reviewDetails,
      @JsonKey(name: "patron_level")
      final int? patronLevel}) = _$ProfileReviewModelImpl;

  factory _ProfileReviewModel.fromJson(Map<String, dynamic> json) =
      _$ProfileReviewModelImpl.fromJson;

  @override
  @JsonKey(name: "fullName")
  String? get fullName;
  @override
  @JsonKey(name: "profileImage")
  String? get profileImage;
  @override
  @JsonKey(name: "reviewDetails")
  ReviewDetailsModel? get reviewDetails;
  @override
  @JsonKey(name: "patron_level")
  int? get patronLevel;
  @override
  @JsonKey(ignore: true)
  _$$ProfileReviewModelImplCopyWith<_$ProfileReviewModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewDetailsModel _$ReviewDetailsModelFromJson(Map<String, dynamic> json) {
  return _ReviewDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewDetailsModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_uuid")
  String? get userUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_uuid")
  String? get partnerUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "review_uuid")
  String? get reviewUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "communication")
  int? get communication => throw _privateConstructorUsedError;
  @JsonKey(name: "service_described")
  int? get serviceDescribed => throw _privateConstructorUsedError;
  @JsonKey(name: "recommended")
  int? get recommended => throw _privateConstructorUsedError;
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
  $ReviewDetailsModelCopyWith<ReviewDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewDetailsModelCopyWith<$Res> {
  factory $ReviewDetailsModelCopyWith(
          ReviewDetailsModel value, $Res Function(ReviewDetailsModel) then) =
      _$ReviewDetailsModelCopyWithImpl<$Res, ReviewDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_uuid") String? userUuid,
      @JsonKey(name: "partner_uuid") String? partnerUuid,
      @JsonKey(name: "review_uuid") String? reviewUuid,
      @JsonKey(name: "communication") int? communication,
      @JsonKey(name: "service_described") int? serviceDescribed,
      @JsonKey(name: "recommended") int? recommended,
      @JsonKey(name: "source") String? source,
      @JsonKey(name: "review") String? review,
      @JsonKey(name: "media") List<String>? media,
      @JsonKey(name: "created_on") DateTime? createdOn});
}

/// @nodoc
class _$ReviewDetailsModelCopyWithImpl<$Res, $Val extends ReviewDetailsModel>
    implements $ReviewDetailsModelCopyWith<$Res> {
  _$ReviewDetailsModelCopyWithImpl(this._value, this._then);

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
              as int?,
      serviceDescribed: freezed == serviceDescribed
          ? _value.serviceDescribed
          : serviceDescribed // ignore: cast_nullable_to_non_nullable
              as int?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$ReviewDetailsModelImplCopyWith<$Res>
    implements $ReviewDetailsModelCopyWith<$Res> {
  factory _$$ReviewDetailsModelImplCopyWith(_$ReviewDetailsModelImpl value,
          $Res Function(_$ReviewDetailsModelImpl) then) =
      __$$ReviewDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_uuid") String? userUuid,
      @JsonKey(name: "partner_uuid") String? partnerUuid,
      @JsonKey(name: "review_uuid") String? reviewUuid,
      @JsonKey(name: "communication") int? communication,
      @JsonKey(name: "service_described") int? serviceDescribed,
      @JsonKey(name: "recommended") int? recommended,
      @JsonKey(name: "source") String? source,
      @JsonKey(name: "review") String? review,
      @JsonKey(name: "media") List<String>? media,
      @JsonKey(name: "created_on") DateTime? createdOn});
}

/// @nodoc
class __$$ReviewDetailsModelImplCopyWithImpl<$Res>
    extends _$ReviewDetailsModelCopyWithImpl<$Res, _$ReviewDetailsModelImpl>
    implements _$$ReviewDetailsModelImplCopyWith<$Res> {
  __$$ReviewDetailsModelImplCopyWithImpl(_$ReviewDetailsModelImpl _value,
      $Res Function(_$ReviewDetailsModelImpl) _then)
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
    return _then(_$ReviewDetailsModelImpl(
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
              as int?,
      serviceDescribed: freezed == serviceDescribed
          ? _value.serviceDescribed
          : serviceDescribed // ignore: cast_nullable_to_non_nullable
              as int?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$ReviewDetailsModelImpl implements _ReviewDetailsModel {
  const _$ReviewDetailsModelImpl(
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

  factory _$ReviewDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewDetailsModelImplFromJson(json);

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
  final int? communication;
  @override
  @JsonKey(name: "service_described")
  final int? serviceDescribed;
  @override
  @JsonKey(name: "recommended")
  final int? recommended;
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
    return 'ReviewDetailsModel(id: $id, userUuid: $userUuid, partnerUuid: $partnerUuid, reviewUuid: $reviewUuid, communication: $communication, serviceDescribed: $serviceDescribed, recommended: $recommended, source: $source, review: $review, media: $media, createdOn: $createdOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewDetailsModelImpl &&
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
  _$$ReviewDetailsModelImplCopyWith<_$ReviewDetailsModelImpl> get copyWith =>
      __$$ReviewDetailsModelImplCopyWithImpl<_$ReviewDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _ReviewDetailsModel implements ReviewDetailsModel {
  const factory _ReviewDetailsModel(
          {@JsonKey(name: "id") final String? id,
          @JsonKey(name: "user_uuid") final String? userUuid,
          @JsonKey(name: "partner_uuid") final String? partnerUuid,
          @JsonKey(name: "review_uuid") final String? reviewUuid,
          @JsonKey(name: "communication") final int? communication,
          @JsonKey(name: "service_described") final int? serviceDescribed,
          @JsonKey(name: "recommended") final int? recommended,
          @JsonKey(name: "source") final String? source,
          @JsonKey(name: "review") final String? review,
          @JsonKey(name: "media") final List<String>? media,
          @JsonKey(name: "created_on") final DateTime? createdOn}) =
      _$ReviewDetailsModelImpl;

  factory _ReviewDetailsModel.fromJson(Map<String, dynamic> json) =
      _$ReviewDetailsModelImpl.fromJson;

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
  int? get communication;
  @override
  @JsonKey(name: "service_described")
  int? get serviceDescribed;
  @override
  @JsonKey(name: "recommended")
  int? get recommended;
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
  _$$ReviewDetailsModelImplCopyWith<_$ReviewDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
