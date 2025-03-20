// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_package_review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AddPackageReviewModel _$AddPackageReviewModelFromJson(
    Map<String, dynamic> json) {
  return _AddPackageReviewModel.fromJson(json);
}

/// @nodoc
mixin _$AddPackageReviewModel {
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
  $AddPackageReviewModelCopyWith<AddPackageReviewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPackageReviewModelCopyWith<$Res> {
  factory $AddPackageReviewModelCopyWith(AddPackageReviewModel value,
          $Res Function(AddPackageReviewModel) then) =
      _$AddPackageReviewModelCopyWithImpl<$Res, AddPackageReviewModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataModel? data,
      @JsonKey(name: "success_status") bool? successStatus});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$AddPackageReviewModelCopyWithImpl<$Res,
        $Val extends AddPackageReviewModel>
    implements $AddPackageReviewModelCopyWith<$Res> {
  _$AddPackageReviewModelCopyWithImpl(this._value, this._then);

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
abstract class _$$AddPackageReviewModelImplCopyWith<$Res>
    implements $AddPackageReviewModelCopyWith<$Res> {
  factory _$$AddPackageReviewModelImplCopyWith(
          _$AddPackageReviewModelImpl value,
          $Res Function(_$AddPackageReviewModelImpl) then) =
      __$$AddPackageReviewModelImplCopyWithImpl<$Res>;
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
class __$$AddPackageReviewModelImplCopyWithImpl<$Res>
    extends _$AddPackageReviewModelCopyWithImpl<$Res,
        _$AddPackageReviewModelImpl>
    implements _$$AddPackageReviewModelImplCopyWith<$Res> {
  __$$AddPackageReviewModelImplCopyWithImpl(_$AddPackageReviewModelImpl _value,
      $Res Function(_$AddPackageReviewModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? successStatus = freezed,
  }) {
    return _then(_$AddPackageReviewModelImpl(
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
class _$AddPackageReviewModelImpl implements _AddPackageReviewModel {
  const _$AddPackageReviewModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "success_status") this.successStatus});

  factory _$AddPackageReviewModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AddPackageReviewModelImplFromJson(json);

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
    return 'AddPackageReviewModel(code: $code, message: $message, data: $data, successStatus: $successStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddPackageReviewModelImpl &&
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
  _$$AddPackageReviewModelImplCopyWith<_$AddPackageReviewModelImpl>
      get copyWith => __$$AddPackageReviewModelImplCopyWithImpl<
          _$AddPackageReviewModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AddPackageReviewModelImplToJson(
      this,
    );
  }
}

abstract class _AddPackageReviewModel implements AddPackageReviewModel {
  const factory _AddPackageReviewModel(
          {@JsonKey(name: "code") final String? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final DataModel? data,
          @JsonKey(name: "success_status") final bool? successStatus}) =
      _$AddPackageReviewModelImpl;

  factory _AddPackageReviewModel.fromJson(Map<String, dynamic> json) =
      _$AddPackageReviewModelImpl.fromJson;

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
  _$$AddPackageReviewModelImplCopyWith<_$AddPackageReviewModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "user_uuid")
  String? get userUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "package_uuid")
  String? get packageUuid => throw _privateConstructorUsedError;
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
  $DataModelCopyWith<DataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataModelCopyWith<$Res> {
  factory $DataModelCopyWith(DataModel value, $Res Function(DataModel) then) =
      _$DataModelCopyWithImpl<$Res, DataModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_uuid") String? userUuid,
      @JsonKey(name: "package_uuid") String? packageUuid,
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
    Object? id = freezed,
    Object? userUuid = freezed,
    Object? packageUuid = freezed,
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
      packageUuid: freezed == packageUuid
          ? _value.packageUuid
          : packageUuid // ignore: cast_nullable_to_non_nullable
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
abstract class _$$DataModelImplCopyWith<$Res>
    implements $DataModelCopyWith<$Res> {
  factory _$$DataModelImplCopyWith(
          _$DataModelImpl value, $Res Function(_$DataModelImpl) then) =
      __$$DataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "user_uuid") String? userUuid,
      @JsonKey(name: "package_uuid") String? packageUuid,
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
class __$$DataModelImplCopyWithImpl<$Res>
    extends _$DataModelCopyWithImpl<$Res, _$DataModelImpl>
    implements _$$DataModelImplCopyWith<$Res> {
  __$$DataModelImplCopyWithImpl(
      _$DataModelImpl _value, $Res Function(_$DataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? userUuid = freezed,
    Object? packageUuid = freezed,
    Object? reviewUuid = freezed,
    Object? communication = freezed,
    Object? serviceDescribed = freezed,
    Object? recommended = freezed,
    Object? source = freezed,
    Object? review = freezed,
    Object? media = freezed,
    Object? createdOn = freezed,
  }) {
    return _then(_$DataModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      packageUuid: freezed == packageUuid
          ? _value.packageUuid
          : packageUuid // ignore: cast_nullable_to_non_nullable
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
class _$DataModelImpl implements _DataModel {
  const _$DataModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "user_uuid") this.userUuid,
      @JsonKey(name: "package_uuid") this.packageUuid,
      @JsonKey(name: "review_uuid") this.reviewUuid,
      @JsonKey(name: "communication") this.communication,
      @JsonKey(name: "service_described") this.serviceDescribed,
      @JsonKey(name: "recommended") this.recommended,
      @JsonKey(name: "source") this.source,
      @JsonKey(name: "review") this.review,
      @JsonKey(name: "media") final List<String>? media,
      @JsonKey(name: "created_on") this.createdOn})
      : _media = media;

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "user_uuid")
  final String? userUuid;
  @override
  @JsonKey(name: "package_uuid")
  final String? packageUuid;
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
    return 'DataModel(id: $id, userUuid: $userUuid, packageUuid: $packageUuid, reviewUuid: $reviewUuid, communication: $communication, serviceDescribed: $serviceDescribed, recommended: $recommended, source: $source, review: $review, media: $media, createdOn: $createdOn)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.userUuid, userUuid) ||
                other.userUuid == userUuid) &&
            (identical(other.packageUuid, packageUuid) ||
                other.packageUuid == packageUuid) &&
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
      packageUuid,
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
          {@JsonKey(name: "id") final String? id,
          @JsonKey(name: "user_uuid") final String? userUuid,
          @JsonKey(name: "package_uuid") final String? packageUuid,
          @JsonKey(name: "review_uuid") final String? reviewUuid,
          @JsonKey(name: "communication") final double? communication,
          @JsonKey(name: "service_described") final double? serviceDescribed,
          @JsonKey(name: "recommended") final double? recommended,
          @JsonKey(name: "source") final String? source,
          @JsonKey(name: "review") final String? review,
          @JsonKey(name: "media") final List<String>? media,
          @JsonKey(name: "created_on") final DateTime? createdOn}) =
      _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "user_uuid")
  String? get userUuid;
  @override
  @JsonKey(name: "package_uuid")
  String? get packageUuid;
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
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
