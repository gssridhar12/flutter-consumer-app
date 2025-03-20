// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_user_booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetUserBookingModel _$GetUserBookingModelFromJson(Map<String, dynamic> json) {
  return _GetUserBookingModel.fromJson(json);
}

/// @nodoc
mixin _$GetUserBookingModel {
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
  $GetUserBookingModelCopyWith<GetUserBookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetUserBookingModelCopyWith<$Res> {
  factory $GetUserBookingModelCopyWith(
          GetUserBookingModel value, $Res Function(GetUserBookingModel) then) =
      _$GetUserBookingModelCopyWithImpl<$Res, GetUserBookingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataModel? data,
      @JsonKey(name: "success_status") bool? successStatus});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetUserBookingModelCopyWithImpl<$Res, $Val extends GetUserBookingModel>
    implements $GetUserBookingModelCopyWith<$Res> {
  _$GetUserBookingModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GetUserBookingModelImplCopyWith<$Res>
    implements $GetUserBookingModelCopyWith<$Res> {
  factory _$$GetUserBookingModelImplCopyWith(_$GetUserBookingModelImpl value,
          $Res Function(_$GetUserBookingModelImpl) then) =
      __$$GetUserBookingModelImplCopyWithImpl<$Res>;
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
class __$$GetUserBookingModelImplCopyWithImpl<$Res>
    extends _$GetUserBookingModelCopyWithImpl<$Res, _$GetUserBookingModelImpl>
    implements _$$GetUserBookingModelImplCopyWith<$Res> {
  __$$GetUserBookingModelImplCopyWithImpl(_$GetUserBookingModelImpl _value,
      $Res Function(_$GetUserBookingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? successStatus = freezed,
  }) {
    return _then(_$GetUserBookingModelImpl(
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
class _$GetUserBookingModelImpl implements _GetUserBookingModel {
  const _$GetUserBookingModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "success_status") this.successStatus});

  factory _$GetUserBookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetUserBookingModelImplFromJson(json);

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
    return 'GetUserBookingModel(code: $code, message: $message, data: $data, successStatus: $successStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetUserBookingModelImpl &&
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
  _$$GetUserBookingModelImplCopyWith<_$GetUserBookingModelImpl> get copyWith =>
      __$$GetUserBookingModelImplCopyWithImpl<_$GetUserBookingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetUserBookingModelImplToJson(
      this,
    );
  }
}

abstract class _GetUserBookingModel implements GetUserBookingModel {
  const factory _GetUserBookingModel(
          {@JsonKey(name: "code") final String? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final DataModel? data,
          @JsonKey(name: "success_status") final bool? successStatus}) =
      _$GetUserBookingModelImpl;

  factory _GetUserBookingModel.fromJson(Map<String, dynamic> json) =
      _$GetUserBookingModelImpl.fromJson;

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
  _$$GetUserBookingModelImplCopyWith<_$GetUserBookingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: "size")
  int? get size => throw _privateConstructorUsedError;
  @JsonKey(name: "userBookings")
  List<UserBookingModel>? get userBookings =>
      throw _privateConstructorUsedError;
  @JsonKey(name: "count")
  int? get count => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int? get page => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "size") int? size,
      @JsonKey(name: "userBookings") List<UserBookingModel>? userBookings,
      @JsonKey(name: "count") int? count,
      @JsonKey(name: "page") int? page});
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
    Object? size = freezed,
    Object? userBookings = freezed,
    Object? count = freezed,
    Object? page = freezed,
  }) {
    return _then(_value.copyWith(
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      userBookings: freezed == userBookings
          ? _value.userBookings
          : userBookings // ignore: cast_nullable_to_non_nullable
              as List<UserBookingModel>?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
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
      {@JsonKey(name: "size") int? size,
      @JsonKey(name: "userBookings") List<UserBookingModel>? userBookings,
      @JsonKey(name: "count") int? count,
      @JsonKey(name: "page") int? page});
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
    Object? size = freezed,
    Object? userBookings = freezed,
    Object? count = freezed,
    Object? page = freezed,
  }) {
    return _then(_$DataModelImpl(
      size: freezed == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int?,
      userBookings: freezed == userBookings
          ? _value._userBookings
          : userBookings // ignore: cast_nullable_to_non_nullable
              as List<UserBookingModel>?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int?,
      page: freezed == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl implements _DataModel {
  const _$DataModelImpl(
      {@JsonKey(name: "size") this.size,
      @JsonKey(name: "userBookings") final List<UserBookingModel>? userBookings,
      @JsonKey(name: "count") this.count,
      @JsonKey(name: "page") this.page})
      : _userBookings = userBookings;

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  @override
  @JsonKey(name: "size")
  final int? size;
  final List<UserBookingModel>? _userBookings;
  @override
  @JsonKey(name: "userBookings")
  List<UserBookingModel>? get userBookings {
    final value = _userBookings;
    if (value == null) return null;
    if (_userBookings is EqualUnmodifiableListView) return _userBookings;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "count")
  final int? count;
  @override
  @JsonKey(name: "page")
  final int? page;

  @override
  String toString() {
    return 'DataModel(size: $size, userBookings: $userBookings, count: $count, page: $page)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            (identical(other.size, size) || other.size == size) &&
            const DeepCollectionEquality()
                .equals(other._userBookings, _userBookings) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.page, page) || other.page == page));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, size,
      const DeepCollectionEquality().hash(_userBookings), count, page);

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
      {@JsonKey(name: "size") final int? size,
      @JsonKey(name: "userBookings") final List<UserBookingModel>? userBookings,
      @JsonKey(name: "count") final int? count,
      @JsonKey(name: "page") final int? page}) = _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @JsonKey(name: "size")
  int? get size;
  @override
  @JsonKey(name: "userBookings")
  List<UserBookingModel>? get userBookings;
  @override
  @JsonKey(name: "count")
  int? get count;
  @override
  @JsonKey(name: "page")
  int? get page;
  @override
  @JsonKey(ignore: true)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserBookingModel _$UserBookingModelFromJson(Map<String, dynamic> json) {
  return _UserBookingModel.fromJson(json);
}

/// @nodoc
mixin _$UserBookingModel {
  @JsonKey(name: "profileName")
  String? get profileName => throw _privateConstructorUsedError;
  @JsonKey(name: "packageReviewAverage")
  double? get packageReviewAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "profileReviewAverage")
  double? get profileReviewAverage => throw _privateConstructorUsedError;
  @JsonKey(name: "profileImage")
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: "megmoGigsCount")
  int? get megmoGigsCount => throw _privateConstructorUsedError;
  @JsonKey(name: "PackageBookingCount")
  int? get packageBookingCount => throw _privateConstructorUsedError;
  @JsonKey(name: "bookingDetails")
  BookingDetailsModel? get bookingDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserBookingModelCopyWith<UserBookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBookingModelCopyWith<$Res> {
  factory $UserBookingModelCopyWith(
          UserBookingModel value, $Res Function(UserBookingModel) then) =
      _$UserBookingModelCopyWithImpl<$Res, UserBookingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "profileName") String? profileName,
      @JsonKey(name: "packageReviewAverage") double? packageReviewAverage,
      @JsonKey(name: "profileReviewAverage") double? profileReviewAverage,
      @JsonKey(name: "profileImage") String? profileImage,
      @JsonKey(name: "megmoGigsCount") int? megmoGigsCount,
      @JsonKey(name: "PackageBookingCount") int? packageBookingCount,
      @JsonKey(name: "bookingDetails") BookingDetailsModel? bookingDetails});

  $BookingDetailsModelCopyWith<$Res>? get bookingDetails;
}

/// @nodoc
class _$UserBookingModelCopyWithImpl<$Res, $Val extends UserBookingModel>
    implements $UserBookingModelCopyWith<$Res> {
  _$UserBookingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileName = freezed,
    Object? packageReviewAverage = freezed,
    Object? profileReviewAverage = freezed,
    Object? profileImage = freezed,
    Object? megmoGigsCount = freezed,
    Object? packageBookingCount = freezed,
    Object? bookingDetails = freezed,
  }) {
    return _then(_value.copyWith(
      profileName: freezed == profileName
          ? _value.profileName
          : profileName // ignore: cast_nullable_to_non_nullable
              as String?,
      packageReviewAverage: freezed == packageReviewAverage
          ? _value.packageReviewAverage
          : packageReviewAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      profileReviewAverage: freezed == profileReviewAverage
          ? _value.profileReviewAverage
          : profileReviewAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      megmoGigsCount: freezed == megmoGigsCount
          ? _value.megmoGigsCount
          : megmoGigsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      packageBookingCount: freezed == packageBookingCount
          ? _value.packageBookingCount
          : packageBookingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      bookingDetails: freezed == bookingDetails
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as BookingDetailsModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingDetailsModelCopyWith<$Res>? get bookingDetails {
    if (_value.bookingDetails == null) {
      return null;
    }

    return $BookingDetailsModelCopyWith<$Res>(_value.bookingDetails!, (value) {
      return _then(_value.copyWith(bookingDetails: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserBookingModelImplCopyWith<$Res>
    implements $UserBookingModelCopyWith<$Res> {
  factory _$$UserBookingModelImplCopyWith(_$UserBookingModelImpl value,
          $Res Function(_$UserBookingModelImpl) then) =
      __$$UserBookingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "profileName") String? profileName,
      @JsonKey(name: "packageReviewAverage") double? packageReviewAverage,
      @JsonKey(name: "profileReviewAverage") double? profileReviewAverage,
      @JsonKey(name: "profileImage") String? profileImage,
      @JsonKey(name: "megmoGigsCount") int? megmoGigsCount,
      @JsonKey(name: "PackageBookingCount") int? packageBookingCount,
      @JsonKey(name: "bookingDetails") BookingDetailsModel? bookingDetails});

  @override
  $BookingDetailsModelCopyWith<$Res>? get bookingDetails;
}

/// @nodoc
class __$$UserBookingModelImplCopyWithImpl<$Res>
    extends _$UserBookingModelCopyWithImpl<$Res, _$UserBookingModelImpl>
    implements _$$UserBookingModelImplCopyWith<$Res> {
  __$$UserBookingModelImplCopyWithImpl(_$UserBookingModelImpl _value,
      $Res Function(_$UserBookingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? profileName = freezed,
    Object? packageReviewAverage = freezed,
    Object? profileReviewAverage = freezed,
    Object? profileImage = freezed,
    Object? megmoGigsCount = freezed,
    Object? packageBookingCount = freezed,
    Object? bookingDetails = freezed,
  }) {
    return _then(_$UserBookingModelImpl(
      profileName: freezed == profileName
          ? _value.profileName
          : profileName // ignore: cast_nullable_to_non_nullable
              as String?,
      packageReviewAverage: freezed == packageReviewAverage
          ? _value.packageReviewAverage
          : packageReviewAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      profileReviewAverage: freezed == profileReviewAverage
          ? _value.profileReviewAverage
          : profileReviewAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      profileImage: freezed == profileImage
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      megmoGigsCount: freezed == megmoGigsCount
          ? _value.megmoGigsCount
          : megmoGigsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      packageBookingCount: freezed == packageBookingCount
          ? _value.packageBookingCount
          : packageBookingCount // ignore: cast_nullable_to_non_nullable
              as int?,
      bookingDetails: freezed == bookingDetails
          ? _value.bookingDetails
          : bookingDetails // ignore: cast_nullable_to_non_nullable
              as BookingDetailsModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserBookingModelImpl implements _UserBookingModel {
  const _$UserBookingModelImpl(
      {@JsonKey(name: "profileName") this.profileName,
      @JsonKey(name: "packageReviewAverage") this.packageReviewAverage,
      @JsonKey(name: "profileReviewAverage") this.profileReviewAverage,
      @JsonKey(name: "profileImage") this.profileImage,
      @JsonKey(name: "megmoGigsCount") this.megmoGigsCount,
      @JsonKey(name: "PackageBookingCount") this.packageBookingCount,
      @JsonKey(name: "bookingDetails") this.bookingDetails});

  factory _$UserBookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserBookingModelImplFromJson(json);

  @override
  @JsonKey(name: "profileName")
  final String? profileName;
  @override
  @JsonKey(name: "packageReviewAverage")
  final double? packageReviewAverage;
  @override
  @JsonKey(name: "profileReviewAverage")
  final double? profileReviewAverage;
  @override
  @JsonKey(name: "profileImage")
  final String? profileImage;
  @override
  @JsonKey(name: "megmoGigsCount")
  final int? megmoGigsCount;
  @override
  @JsonKey(name: "PackageBookingCount")
  final int? packageBookingCount;
  @override
  @JsonKey(name: "bookingDetails")
  final BookingDetailsModel? bookingDetails;

  @override
  String toString() {
    return 'UserBookingModel(profileName: $profileName, packageReviewAverage: $packageReviewAverage, profileReviewAverage: $profileReviewAverage, profileImage: $profileImage, megmoGigsCount: $megmoGigsCount, packageBookingCount: $packageBookingCount, bookingDetails: $bookingDetails)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBookingModelImpl &&
            (identical(other.profileName, profileName) ||
                other.profileName == profileName) &&
            (identical(other.packageReviewAverage, packageReviewAverage) ||
                other.packageReviewAverage == packageReviewAverage) &&
            (identical(other.profileReviewAverage, profileReviewAverage) ||
                other.profileReviewAverage == profileReviewAverage) &&
            (identical(other.profileImage, profileImage) ||
                other.profileImage == profileImage) &&
            (identical(other.megmoGigsCount, megmoGigsCount) ||
                other.megmoGigsCount == megmoGigsCount) &&
            (identical(other.packageBookingCount, packageBookingCount) ||
                other.packageBookingCount == packageBookingCount) &&
            (identical(other.bookingDetails, bookingDetails) ||
                other.bookingDetails == bookingDetails));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      profileName,
      packageReviewAverage,
      profileReviewAverage,
      profileImage,
      megmoGigsCount,
      packageBookingCount,
      bookingDetails);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBookingModelImplCopyWith<_$UserBookingModelImpl> get copyWith =>
      __$$UserBookingModelImplCopyWithImpl<_$UserBookingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserBookingModelImplToJson(
      this,
    );
  }
}

abstract class _UserBookingModel implements UserBookingModel {
  const factory _UserBookingModel(
      {@JsonKey(name: "profileName") final String? profileName,
      @JsonKey(name: "packageReviewAverage") final double? packageReviewAverage,
      @JsonKey(name: "profileReviewAverage") final double? profileReviewAverage,
      @JsonKey(name: "profileImage") final String? profileImage,
      @JsonKey(name: "megmoGigsCount") final int? megmoGigsCount,
      @JsonKey(name: "PackageBookingCount") final int? packageBookingCount,
      @JsonKey(name: "bookingDetails")
      final BookingDetailsModel? bookingDetails}) = _$UserBookingModelImpl;

  factory _UserBookingModel.fromJson(Map<String, dynamic> json) =
      _$UserBookingModelImpl.fromJson;

  @override
  @JsonKey(name: "profileName")
  String? get profileName;
  @override
  @JsonKey(name: "packageReviewAverage")
  double? get packageReviewAverage;
  @override
  @JsonKey(name: "profileReviewAverage")
  double? get profileReviewAverage;
  @override
  @JsonKey(name: "profileImage")
  String? get profileImage;
  @override
  @JsonKey(name: "megmoGigsCount")
  int? get megmoGigsCount;
  @override
  @JsonKey(name: "PackageBookingCount")
  int? get packageBookingCount;
  @override
  @JsonKey(name: "bookingDetails")
  BookingDetailsModel? get bookingDetails;
  @override
  @JsonKey(ignore: true)
  _$$UserBookingModelImplCopyWith<_$UserBookingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingDetailsModel _$BookingDetailsModelFromJson(Map<String, dynamic> json) {
  return _BookingDetailsModel.fromJson(json);
}

/// @nodoc
mixin _$BookingDetailsModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "packages")
  PackagesModel? get packages => throw _privateConstructorUsedError;
  @JsonKey(name: "discount")
  double? get discount => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "status_logs")
  List<StatusLogModel>? get statusLogs => throw _privateConstructorUsedError;
  @JsonKey(name: "booking_uuid")
  String? get bookingUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "user_uuid")
  String? get userUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "booked_on")
  DateTime? get bookedOn => throw _privateConstructorUsedError;
  @JsonKey(name: "start_date")
  DateTime? get startDate => throw _privateConstructorUsedError;
  @JsonKey(name: "end_date")
  DateTime? get endDate => throw _privateConstructorUsedError;
  @JsonKey(name: "base_fare")
  double? get baseFare => throw _privateConstructorUsedError;
  @JsonKey(name: "amount")
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: "booking_address")
  BookingAddressModel? get bookingAddress => throw _privateConstructorUsedError;
  @JsonKey(name: "booking_source")
  String? get bookingSource => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingDetailsModelCopyWith<BookingDetailsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingDetailsModelCopyWith<$Res> {
  factory $BookingDetailsModelCopyWith(
          BookingDetailsModel value, $Res Function(BookingDetailsModel) then) =
      _$BookingDetailsModelCopyWithImpl<$Res, BookingDetailsModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "packages") PackagesModel? packages,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "status_logs") List<StatusLogModel>? statusLogs,
      @JsonKey(name: "booking_uuid") String? bookingUuid,
      @JsonKey(name: "user_uuid") String? userUuid,
      @JsonKey(name: "booked_on") DateTime? bookedOn,
      @JsonKey(name: "start_date") DateTime? startDate,
      @JsonKey(name: "end_date") DateTime? endDate,
      @JsonKey(name: "base_fare") double? baseFare,
      @JsonKey(name: "amount") double? amount,
      @JsonKey(name: "booking_address") BookingAddressModel? bookingAddress,
      @JsonKey(name: "booking_source") String? bookingSource});

  $PackagesModelCopyWith<$Res>? get packages;
  $BookingAddressModelCopyWith<$Res>? get bookingAddress;
}

/// @nodoc
class _$BookingDetailsModelCopyWithImpl<$Res, $Val extends BookingDetailsModel>
    implements $BookingDetailsModelCopyWith<$Res> {
  _$BookingDetailsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? packages = freezed,
    Object? discount = freezed,
    Object? status = freezed,
    Object? statusLogs = freezed,
    Object? bookingUuid = freezed,
    Object? userUuid = freezed,
    Object? bookedOn = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? baseFare = freezed,
    Object? amount = freezed,
    Object? bookingAddress = freezed,
    Object? bookingSource = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      packages: freezed == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as PackagesModel?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusLogs: freezed == statusLogs
          ? _value.statusLogs
          : statusLogs // ignore: cast_nullable_to_non_nullable
              as List<StatusLogModel>?,
      bookingUuid: freezed == bookingUuid
          ? _value.bookingUuid
          : bookingUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      bookedOn: freezed == bookedOn
          ? _value.bookedOn
          : bookedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      baseFare: freezed == baseFare
          ? _value.baseFare
          : baseFare // ignore: cast_nullable_to_non_nullable
              as double?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      bookingAddress: freezed == bookingAddress
          ? _value.bookingAddress
          : bookingAddress // ignore: cast_nullable_to_non_nullable
              as BookingAddressModel?,
      bookingSource: freezed == bookingSource
          ? _value.bookingSource
          : bookingSource // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PackagesModelCopyWith<$Res>? get packages {
    if (_value.packages == null) {
      return null;
    }

    return $PackagesModelCopyWith<$Res>(_value.packages!, (value) {
      return _then(_value.copyWith(packages: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingAddressModelCopyWith<$Res>? get bookingAddress {
    if (_value.bookingAddress == null) {
      return null;
    }

    return $BookingAddressModelCopyWith<$Res>(_value.bookingAddress!, (value) {
      return _then(_value.copyWith(bookingAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BookingDetailsModelImplCopyWith<$Res>
    implements $BookingDetailsModelCopyWith<$Res> {
  factory _$$BookingDetailsModelImplCopyWith(_$BookingDetailsModelImpl value,
          $Res Function(_$BookingDetailsModelImpl) then) =
      __$$BookingDetailsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "packages") PackagesModel? packages,
      @JsonKey(name: "discount") double? discount,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "status_logs") List<StatusLogModel>? statusLogs,
      @JsonKey(name: "booking_uuid") String? bookingUuid,
      @JsonKey(name: "user_uuid") String? userUuid,
      @JsonKey(name: "booked_on") DateTime? bookedOn,
      @JsonKey(name: "start_date") DateTime? startDate,
      @JsonKey(name: "end_date") DateTime? endDate,
      @JsonKey(name: "base_fare") double? baseFare,
      @JsonKey(name: "amount") double? amount,
      @JsonKey(name: "booking_address") BookingAddressModel? bookingAddress,
      @JsonKey(name: "booking_source") String? bookingSource});

  @override
  $PackagesModelCopyWith<$Res>? get packages;
  @override
  $BookingAddressModelCopyWith<$Res>? get bookingAddress;
}

/// @nodoc
class __$$BookingDetailsModelImplCopyWithImpl<$Res>
    extends _$BookingDetailsModelCopyWithImpl<$Res, _$BookingDetailsModelImpl>
    implements _$$BookingDetailsModelImplCopyWith<$Res> {
  __$$BookingDetailsModelImplCopyWithImpl(_$BookingDetailsModelImpl _value,
      $Res Function(_$BookingDetailsModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? packages = freezed,
    Object? discount = freezed,
    Object? status = freezed,
    Object? statusLogs = freezed,
    Object? bookingUuid = freezed,
    Object? userUuid = freezed,
    Object? bookedOn = freezed,
    Object? startDate = freezed,
    Object? endDate = freezed,
    Object? baseFare = freezed,
    Object? amount = freezed,
    Object? bookingAddress = freezed,
    Object? bookingSource = freezed,
  }) {
    return _then(_$BookingDetailsModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      packages: freezed == packages
          ? _value.packages
          : packages // ignore: cast_nullable_to_non_nullable
              as PackagesModel?,
      discount: freezed == discount
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      statusLogs: freezed == statusLogs
          ? _value._statusLogs
          : statusLogs // ignore: cast_nullable_to_non_nullable
              as List<StatusLogModel>?,
      bookingUuid: freezed == bookingUuid
          ? _value.bookingUuid
          : bookingUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      userUuid: freezed == userUuid
          ? _value.userUuid
          : userUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      bookedOn: freezed == bookedOn
          ? _value.bookedOn
          : bookedOn // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      baseFare: freezed == baseFare
          ? _value.baseFare
          : baseFare // ignore: cast_nullable_to_non_nullable
              as double?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      bookingAddress: freezed == bookingAddress
          ? _value.bookingAddress
          : bookingAddress // ignore: cast_nullable_to_non_nullable
              as BookingAddressModel?,
      bookingSource: freezed == bookingSource
          ? _value.bookingSource
          : bookingSource // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingDetailsModelImpl implements _BookingDetailsModel {
  const _$BookingDetailsModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "packages") this.packages,
      @JsonKey(name: "discount") this.discount,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "status_logs") final List<StatusLogModel>? statusLogs,
      @JsonKey(name: "booking_uuid") this.bookingUuid,
      @JsonKey(name: "user_uuid") this.userUuid,
      @JsonKey(name: "booked_on") this.bookedOn,
      @JsonKey(name: "start_date") this.startDate,
      @JsonKey(name: "end_date") this.endDate,
      @JsonKey(name: "base_fare") this.baseFare,
      @JsonKey(name: "amount") this.amount,
      @JsonKey(name: "booking_address") this.bookingAddress,
      @JsonKey(name: "booking_source") this.bookingSource})
      : _statusLogs = statusLogs;

  factory _$BookingDetailsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingDetailsModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "packages")
  final PackagesModel? packages;
  @override
  @JsonKey(name: "discount")
  final double? discount;
  @override
  @JsonKey(name: "status")
  final String? status;
  final List<StatusLogModel>? _statusLogs;
  @override
  @JsonKey(name: "status_logs")
  List<StatusLogModel>? get statusLogs {
    final value = _statusLogs;
    if (value == null) return null;
    if (_statusLogs is EqualUnmodifiableListView) return _statusLogs;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "booking_uuid")
  final String? bookingUuid;
  @override
  @JsonKey(name: "user_uuid")
  final String? userUuid;
  @override
  @JsonKey(name: "booked_on")
  final DateTime? bookedOn;
  @override
  @JsonKey(name: "start_date")
  final DateTime? startDate;
  @override
  @JsonKey(name: "end_date")
  final DateTime? endDate;
  @override
  @JsonKey(name: "base_fare")
  final double? baseFare;
  @override
  @JsonKey(name: "amount")
  final double? amount;
  @override
  @JsonKey(name: "booking_address")
  final BookingAddressModel? bookingAddress;
  @override
  @JsonKey(name: "booking_source")
  final String? bookingSource;

  @override
  String toString() {
    return 'BookingDetailsModel(id: $id, packages: $packages, discount: $discount, status: $status, statusLogs: $statusLogs, bookingUuid: $bookingUuid, userUuid: $userUuid, bookedOn: $bookedOn, startDate: $startDate, endDate: $endDate, baseFare: $baseFare, amount: $amount, bookingAddress: $bookingAddress, bookingSource: $bookingSource)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingDetailsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.packages, packages) ||
                other.packages == packages) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._statusLogs, _statusLogs) &&
            (identical(other.bookingUuid, bookingUuid) ||
                other.bookingUuid == bookingUuid) &&
            (identical(other.userUuid, userUuid) ||
                other.userUuid == userUuid) &&
            (identical(other.bookedOn, bookedOn) ||
                other.bookedOn == bookedOn) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.baseFare, baseFare) ||
                other.baseFare == baseFare) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.bookingAddress, bookingAddress) ||
                other.bookingAddress == bookingAddress) &&
            (identical(other.bookingSource, bookingSource) ||
                other.bookingSource == bookingSource));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      packages,
      discount,
      status,
      const DeepCollectionEquality().hash(_statusLogs),
      bookingUuid,
      userUuid,
      bookedOn,
      startDate,
      endDate,
      baseFare,
      amount,
      bookingAddress,
      bookingSource);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingDetailsModelImplCopyWith<_$BookingDetailsModelImpl> get copyWith =>
      __$$BookingDetailsModelImplCopyWithImpl<_$BookingDetailsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingDetailsModelImplToJson(
      this,
    );
  }
}

abstract class _BookingDetailsModel implements BookingDetailsModel {
  const factory _BookingDetailsModel(
          {@JsonKey(name: "id") final String? id,
          @JsonKey(name: "packages") final PackagesModel? packages,
          @JsonKey(name: "discount") final double? discount,
          @JsonKey(name: "status") final String? status,
          @JsonKey(name: "status_logs") final List<StatusLogModel>? statusLogs,
          @JsonKey(name: "booking_uuid") final String? bookingUuid,
          @JsonKey(name: "user_uuid") final String? userUuid,
          @JsonKey(name: "booked_on") final DateTime? bookedOn,
          @JsonKey(name: "start_date") final DateTime? startDate,
          @JsonKey(name: "end_date") final DateTime? endDate,
          @JsonKey(name: "base_fare") final double? baseFare,
          @JsonKey(name: "amount") final double? amount,
          @JsonKey(name: "booking_address")
          final BookingAddressModel? bookingAddress,
          @JsonKey(name: "booking_source") final String? bookingSource}) =
      _$BookingDetailsModelImpl;

  factory _BookingDetailsModel.fromJson(Map<String, dynamic> json) =
      _$BookingDetailsModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "packages")
  PackagesModel? get packages;
  @override
  @JsonKey(name: "discount")
  double? get discount;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "status_logs")
  List<StatusLogModel>? get statusLogs;
  @override
  @JsonKey(name: "booking_uuid")
  String? get bookingUuid;
  @override
  @JsonKey(name: "user_uuid")
  String? get userUuid;
  @override
  @JsonKey(name: "booked_on")
  DateTime? get bookedOn;
  @override
  @JsonKey(name: "start_date")
  DateTime? get startDate;
  @override
  @JsonKey(name: "end_date")
  DateTime? get endDate;
  @override
  @JsonKey(name: "base_fare")
  double? get baseFare;
  @override
  @JsonKey(name: "amount")
  double? get amount;
  @override
  @JsonKey(name: "booking_address")
  BookingAddressModel? get bookingAddress;
  @override
  @JsonKey(name: "booking_source")
  String? get bookingSource;
  @override
  @JsonKey(ignore: true)
  _$$BookingDetailsModelImplCopyWith<_$BookingDetailsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingAddressModel _$BookingAddressModelFromJson(Map<String, dynamic> json) {
  return _BookingAddressModel.fromJson(json);
}

/// @nodoc
mixin _$BookingAddressModel {
  @JsonKey(name: "address")
  String? get address => throw _privateConstructorUsedError;
  @JsonKey(name: "landmark")
  String? get landmark => throw _privateConstructorUsedError;
  @JsonKey(name: "save_as")
  String? get saveAs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BookingAddressModelCopyWith<BookingAddressModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingAddressModelCopyWith<$Res> {
  factory $BookingAddressModelCopyWith(
          BookingAddressModel value, $Res Function(BookingAddressModel) then) =
      _$BookingAddressModelCopyWithImpl<$Res, BookingAddressModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "address") String? address,
      @JsonKey(name: "landmark") String? landmark,
      @JsonKey(name: "save_as") String? saveAs});
}

/// @nodoc
class _$BookingAddressModelCopyWithImpl<$Res, $Val extends BookingAddressModel>
    implements $BookingAddressModelCopyWith<$Res> {
  _$BookingAddressModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? landmark = freezed,
    Object? saveAs = freezed,
  }) {
    return _then(_value.copyWith(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      saveAs: freezed == saveAs
          ? _value.saveAs
          : saveAs // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BookingAddressModelImplCopyWith<$Res>
    implements $BookingAddressModelCopyWith<$Res> {
  factory _$$BookingAddressModelImplCopyWith(_$BookingAddressModelImpl value,
          $Res Function(_$BookingAddressModelImpl) then) =
      __$$BookingAddressModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "address") String? address,
      @JsonKey(name: "landmark") String? landmark,
      @JsonKey(name: "save_as") String? saveAs});
}

/// @nodoc
class __$$BookingAddressModelImplCopyWithImpl<$Res>
    extends _$BookingAddressModelCopyWithImpl<$Res, _$BookingAddressModelImpl>
    implements _$$BookingAddressModelImplCopyWith<$Res> {
  __$$BookingAddressModelImplCopyWithImpl(_$BookingAddressModelImpl _value,
      $Res Function(_$BookingAddressModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? landmark = freezed,
    Object? saveAs = freezed,
  }) {
    return _then(_$BookingAddressModelImpl(
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      landmark: freezed == landmark
          ? _value.landmark
          : landmark // ignore: cast_nullable_to_non_nullable
              as String?,
      saveAs: freezed == saveAs
          ? _value.saveAs
          : saveAs // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BookingAddressModelImpl implements _BookingAddressModel {
  const _$BookingAddressModelImpl(
      {@JsonKey(name: "address") this.address,
      @JsonKey(name: "landmark") this.landmark,
      @JsonKey(name: "save_as") this.saveAs});

  factory _$BookingAddressModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingAddressModelImplFromJson(json);

  @override
  @JsonKey(name: "address")
  final String? address;
  @override
  @JsonKey(name: "landmark")
  final String? landmark;
  @override
  @JsonKey(name: "save_as")
  final String? saveAs;

  @override
  String toString() {
    return 'BookingAddressModel(address: $address, landmark: $landmark, saveAs: $saveAs)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingAddressModelImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.landmark, landmark) ||
                other.landmark == landmark) &&
            (identical(other.saveAs, saveAs) || other.saveAs == saveAs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, landmark, saveAs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BookingAddressModelImplCopyWith<_$BookingAddressModelImpl> get copyWith =>
      __$$BookingAddressModelImplCopyWithImpl<_$BookingAddressModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingAddressModelImplToJson(
      this,
    );
  }
}

abstract class _BookingAddressModel implements BookingAddressModel {
  const factory _BookingAddressModel(
          {@JsonKey(name: "address") final String? address,
          @JsonKey(name: "landmark") final String? landmark,
          @JsonKey(name: "save_as") final String? saveAs}) =
      _$BookingAddressModelImpl;

  factory _BookingAddressModel.fromJson(Map<String, dynamic> json) =
      _$BookingAddressModelImpl.fromJson;

  @override
  @JsonKey(name: "address")
  String? get address;
  @override
  @JsonKey(name: "landmark")
  String? get landmark;
  @override
  @JsonKey(name: "save_as")
  String? get saveAs;
  @override
  @JsonKey(ignore: true)
  _$$BookingAddressModelImplCopyWith<_$BookingAddressModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PackagesModel _$PackagesModelFromJson(Map<String, dynamic> json) {
  return _PackagesModel.fromJson(json);
}

/// @nodoc
mixin _$PackagesModel {
  @JsonKey(name: "id")
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "partner_uuid")
  String? get partnerUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "package_uuid")
  String? get packageUuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PackagesModelCopyWith<PackagesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PackagesModelCopyWith<$Res> {
  factory $PackagesModelCopyWith(
          PackagesModel value, $Res Function(PackagesModel) then) =
      _$PackagesModelCopyWithImpl<$Res, PackagesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "partner_uuid") String? partnerUuid,
      @JsonKey(name: "package_uuid") String? packageUuid});
}

/// @nodoc
class _$PackagesModelCopyWithImpl<$Res, $Val extends PackagesModel>
    implements $PackagesModelCopyWith<$Res> {
  _$PackagesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partnerUuid = freezed,
    Object? packageUuid = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerUuid: freezed == partnerUuid
          ? _value.partnerUuid
          : partnerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      packageUuid: freezed == packageUuid
          ? _value.packageUuid
          : packageUuid // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PackagesModelImplCopyWith<$Res>
    implements $PackagesModelCopyWith<$Res> {
  factory _$$PackagesModelImplCopyWith(
          _$PackagesModelImpl value, $Res Function(_$PackagesModelImpl) then) =
      __$$PackagesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "id") String? id,
      @JsonKey(name: "partner_uuid") String? partnerUuid,
      @JsonKey(name: "package_uuid") String? packageUuid});
}

/// @nodoc
class __$$PackagesModelImplCopyWithImpl<$Res>
    extends _$PackagesModelCopyWithImpl<$Res, _$PackagesModelImpl>
    implements _$$PackagesModelImplCopyWith<$Res> {
  __$$PackagesModelImplCopyWithImpl(
      _$PackagesModelImpl _value, $Res Function(_$PackagesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? partnerUuid = freezed,
    Object? packageUuid = freezed,
  }) {
    return _then(_$PackagesModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      partnerUuid: freezed == partnerUuid
          ? _value.partnerUuid
          : partnerUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      packageUuid: freezed == packageUuid
          ? _value.packageUuid
          : packageUuid // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PackagesModelImpl implements _PackagesModel {
  const _$PackagesModelImpl(
      {@JsonKey(name: "id") this.id,
      @JsonKey(name: "partner_uuid") this.partnerUuid,
      @JsonKey(name: "package_uuid") this.packageUuid});

  factory _$PackagesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PackagesModelImplFromJson(json);

  @override
  @JsonKey(name: "id")
  final String? id;
  @override
  @JsonKey(name: "partner_uuid")
  final String? partnerUuid;
  @override
  @JsonKey(name: "package_uuid")
  final String? packageUuid;

  @override
  String toString() {
    return 'PackagesModel(id: $id, partnerUuid: $partnerUuid, packageUuid: $packageUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PackagesModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.partnerUuid, partnerUuid) ||
                other.partnerUuid == partnerUuid) &&
            (identical(other.packageUuid, packageUuid) ||
                other.packageUuid == packageUuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, partnerUuid, packageUuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PackagesModelImplCopyWith<_$PackagesModelImpl> get copyWith =>
      __$$PackagesModelImplCopyWithImpl<_$PackagesModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PackagesModelImplToJson(
      this,
    );
  }
}

abstract class _PackagesModel implements PackagesModel {
  const factory _PackagesModel(
          {@JsonKey(name: "id") final String? id,
          @JsonKey(name: "partner_uuid") final String? partnerUuid,
          @JsonKey(name: "package_uuid") final String? packageUuid}) =
      _$PackagesModelImpl;

  factory _PackagesModel.fromJson(Map<String, dynamic> json) =
      _$PackagesModelImpl.fromJson;

  @override
  @JsonKey(name: "id")
  String? get id;
  @override
  @JsonKey(name: "partner_uuid")
  String? get partnerUuid;
  @override
  @JsonKey(name: "package_uuid")
  String? get packageUuid;
  @override
  @JsonKey(ignore: true)
  _$$PackagesModelImplCopyWith<_$PackagesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

StatusLogModel _$StatusLogModelFromJson(Map<String, dynamic> json) {
  return _StatusLogModel.fromJson(json);
}

/// @nodoc
mixin _$StatusLogModel {
  @JsonKey(name: "date")
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "status")
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: "package_uuid")
  String? get packageUuid => throw _privateConstructorUsedError;
  @JsonKey(name: "booking_uuid")
  dynamic get bookingUuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatusLogModelCopyWith<StatusLogModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusLogModelCopyWith<$Res> {
  factory $StatusLogModelCopyWith(
          StatusLogModel value, $Res Function(StatusLogModel) then) =
      _$StatusLogModelCopyWithImpl<$Res, StatusLogModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "date") DateTime? date,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "package_uuid") String? packageUuid,
      @JsonKey(name: "booking_uuid") dynamic bookingUuid});
}

/// @nodoc
class _$StatusLogModelCopyWithImpl<$Res, $Val extends StatusLogModel>
    implements $StatusLogModelCopyWith<$Res> {
  _$StatusLogModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? status = freezed,
    Object? packageUuid = freezed,
    Object? bookingUuid = freezed,
  }) {
    return _then(_value.copyWith(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      packageUuid: freezed == packageUuid
          ? _value.packageUuid
          : packageUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingUuid: freezed == bookingUuid
          ? _value.bookingUuid
          : bookingUuid // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StatusLogModelImplCopyWith<$Res>
    implements $StatusLogModelCopyWith<$Res> {
  factory _$$StatusLogModelImplCopyWith(_$StatusLogModelImpl value,
          $Res Function(_$StatusLogModelImpl) then) =
      __$$StatusLogModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "date") DateTime? date,
      @JsonKey(name: "status") String? status,
      @JsonKey(name: "package_uuid") String? packageUuid,
      @JsonKey(name: "booking_uuid") dynamic bookingUuid});
}

/// @nodoc
class __$$StatusLogModelImplCopyWithImpl<$Res>
    extends _$StatusLogModelCopyWithImpl<$Res, _$StatusLogModelImpl>
    implements _$$StatusLogModelImplCopyWith<$Res> {
  __$$StatusLogModelImplCopyWithImpl(
      _$StatusLogModelImpl _value, $Res Function(_$StatusLogModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? date = freezed,
    Object? status = freezed,
    Object? packageUuid = freezed,
    Object? bookingUuid = freezed,
  }) {
    return _then(_$StatusLogModelImpl(
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      packageUuid: freezed == packageUuid
          ? _value.packageUuid
          : packageUuid // ignore: cast_nullable_to_non_nullable
              as String?,
      bookingUuid: freezed == bookingUuid
          ? _value.bookingUuid
          : bookingUuid // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StatusLogModelImpl implements _StatusLogModel {
  const _$StatusLogModelImpl(
      {@JsonKey(name: "date") this.date,
      @JsonKey(name: "status") this.status,
      @JsonKey(name: "package_uuid") this.packageUuid,
      @JsonKey(name: "booking_uuid") this.bookingUuid});

  factory _$StatusLogModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$StatusLogModelImplFromJson(json);

  @override
  @JsonKey(name: "date")
  final DateTime? date;
  @override
  @JsonKey(name: "status")
  final String? status;
  @override
  @JsonKey(name: "package_uuid")
  final String? packageUuid;
  @override
  @JsonKey(name: "booking_uuid")
  final dynamic bookingUuid;

  @override
  String toString() {
    return 'StatusLogModel(date: $date, status: $status, packageUuid: $packageUuid, bookingUuid: $bookingUuid)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StatusLogModelImpl &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.packageUuid, packageUuid) ||
                other.packageUuid == packageUuid) &&
            const DeepCollectionEquality()
                .equals(other.bookingUuid, bookingUuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, date, status, packageUuid,
      const DeepCollectionEquality().hash(bookingUuid));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StatusLogModelImplCopyWith<_$StatusLogModelImpl> get copyWith =>
      __$$StatusLogModelImplCopyWithImpl<_$StatusLogModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StatusLogModelImplToJson(
      this,
    );
  }
}

abstract class _StatusLogModel implements StatusLogModel {
  const factory _StatusLogModel(
          {@JsonKey(name: "date") final DateTime? date,
          @JsonKey(name: "status") final String? status,
          @JsonKey(name: "package_uuid") final String? packageUuid,
          @JsonKey(name: "booking_uuid") final dynamic bookingUuid}) =
      _$StatusLogModelImpl;

  factory _StatusLogModel.fromJson(Map<String, dynamic> json) =
      _$StatusLogModelImpl.fromJson;

  @override
  @JsonKey(name: "date")
  DateTime? get date;
  @override
  @JsonKey(name: "status")
  String? get status;
  @override
  @JsonKey(name: "package_uuid")
  String? get packageUuid;
  @override
  @JsonKey(name: "booking_uuid")
  dynamic get bookingUuid;
  @override
  @JsonKey(ignore: true)
  _$$StatusLogModelImplCopyWith<_$StatusLogModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
