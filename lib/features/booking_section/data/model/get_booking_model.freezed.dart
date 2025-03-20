// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_booking_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetBookingModel _$GetBookingModelFromJson(Map<String, dynamic> json) {
  return _GetBookingModel.fromJson(json);
}

/// @nodoc
mixin _$GetBookingModel {
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
  $GetBookingModelCopyWith<GetBookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetBookingModelCopyWith<$Res> {
  factory $GetBookingModelCopyWith(
          GetBookingModel value, $Res Function(GetBookingModel) then) =
      _$GetBookingModelCopyWithImpl<$Res, GetBookingModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "code") String? code,
      @JsonKey(name: "message") String? message,
      @JsonKey(name: "data") DataModel? data,
      @JsonKey(name: "success_status") bool? successStatus});

  $DataModelCopyWith<$Res>? get data;
}

/// @nodoc
class _$GetBookingModelCopyWithImpl<$Res, $Val extends GetBookingModel>
    implements $GetBookingModelCopyWith<$Res> {
  _$GetBookingModelCopyWithImpl(this._value, this._then);

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
abstract class _$$GetBookingModelImplCopyWith<$Res>
    implements $GetBookingModelCopyWith<$Res> {
  factory _$$GetBookingModelImplCopyWith(_$GetBookingModelImpl value,
          $Res Function(_$GetBookingModelImpl) then) =
      __$$GetBookingModelImplCopyWithImpl<$Res>;
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
class __$$GetBookingModelImplCopyWithImpl<$Res>
    extends _$GetBookingModelCopyWithImpl<$Res, _$GetBookingModelImpl>
    implements _$$GetBookingModelImplCopyWith<$Res> {
  __$$GetBookingModelImplCopyWithImpl(
      _$GetBookingModelImpl _value, $Res Function(_$GetBookingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = freezed,
    Object? message = freezed,
    Object? data = freezed,
    Object? successStatus = freezed,
  }) {
    return _then(_$GetBookingModelImpl(
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
class _$GetBookingModelImpl implements _GetBookingModel {
  const _$GetBookingModelImpl(
      {@JsonKey(name: "code") this.code,
      @JsonKey(name: "message") this.message,
      @JsonKey(name: "data") this.data,
      @JsonKey(name: "success_status") this.successStatus});

  factory _$GetBookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetBookingModelImplFromJson(json);

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
    return 'GetBookingModel(code: $code, message: $message, data: $data, successStatus: $successStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetBookingModelImpl &&
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
  _$$GetBookingModelImplCopyWith<_$GetBookingModelImpl> get copyWith =>
      __$$GetBookingModelImplCopyWithImpl<_$GetBookingModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetBookingModelImplToJson(
      this,
    );
  }
}

abstract class _GetBookingModel implements GetBookingModel {
  const factory _GetBookingModel(
          {@JsonKey(name: "code") final String? code,
          @JsonKey(name: "message") final String? message,
          @JsonKey(name: "data") final DataModel? data,
          @JsonKey(name: "success_status") final bool? successStatus}) =
      _$GetBookingModelImpl;

  factory _GetBookingModel.fromJson(Map<String, dynamic> json) =
      _$GetBookingModelImpl.fromJson;

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
  _$$GetBookingModelImplCopyWith<_$GetBookingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DataModel _$DataModelFromJson(Map<String, dynamic> json) {
  return _DataModel.fromJson(json);
}

/// @nodoc
mixin _$DataModel {
  @JsonKey(name: "booking")
  BookingModel? get booking => throw _privateConstructorUsedError;
  @JsonKey(name: "reviewAverages")
  ReviewAveragesModel? get reviewAverages => throw _privateConstructorUsedError;

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
      {@JsonKey(name: "booking") BookingModel? booking,
      @JsonKey(name: "reviewAverages") ReviewAveragesModel? reviewAverages});

  $BookingModelCopyWith<$Res>? get booking;
  $ReviewAveragesModelCopyWith<$Res>? get reviewAverages;
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
    Object? booking = freezed,
    Object? reviewAverages = freezed,
  }) {
    return _then(_value.copyWith(
      booking: freezed == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as BookingModel?,
      reviewAverages: freezed == reviewAverages
          ? _value.reviewAverages
          : reviewAverages // ignore: cast_nullable_to_non_nullable
              as ReviewAveragesModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BookingModelCopyWith<$Res>? get booking {
    if (_value.booking == null) {
      return null;
    }

    return $BookingModelCopyWith<$Res>(_value.booking!, (value) {
      return _then(_value.copyWith(booking: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ReviewAveragesModelCopyWith<$Res>? get reviewAverages {
    if (_value.reviewAverages == null) {
      return null;
    }

    return $ReviewAveragesModelCopyWith<$Res>(_value.reviewAverages!, (value) {
      return _then(_value.copyWith(reviewAverages: value) as $Val);
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
      {@JsonKey(name: "booking") BookingModel? booking,
      @JsonKey(name: "reviewAverages") ReviewAveragesModel? reviewAverages});

  @override
  $BookingModelCopyWith<$Res>? get booking;
  @override
  $ReviewAveragesModelCopyWith<$Res>? get reviewAverages;
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
    Object? booking = freezed,
    Object? reviewAverages = freezed,
  }) {
    return _then(_$DataModelImpl(
      booking: freezed == booking
          ? _value.booking
          : booking // ignore: cast_nullable_to_non_nullable
              as BookingModel?,
      reviewAverages: freezed == reviewAverages
          ? _value.reviewAverages
          : reviewAverages // ignore: cast_nullable_to_non_nullable
              as ReviewAveragesModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DataModelImpl implements _DataModel {
  const _$DataModelImpl(
      {@JsonKey(name: "booking") this.booking,
      @JsonKey(name: "reviewAverages") this.reviewAverages});

  factory _$DataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataModelImplFromJson(json);

  @override
  @JsonKey(name: "booking")
  final BookingModel? booking;
  @override
  @JsonKey(name: "reviewAverages")
  final ReviewAveragesModel? reviewAverages;

  @override
  String toString() {
    return 'DataModel(booking: $booking, reviewAverages: $reviewAverages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataModelImpl &&
            (identical(other.booking, booking) || other.booking == booking) &&
            (identical(other.reviewAverages, reviewAverages) ||
                other.reviewAverages == reviewAverages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, booking, reviewAverages);

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
      {@JsonKey(name: "booking") final BookingModel? booking,
      @JsonKey(name: "reviewAverages")
      final ReviewAveragesModel? reviewAverages}) = _$DataModelImpl;

  factory _DataModel.fromJson(Map<String, dynamic> json) =
      _$DataModelImpl.fromJson;

  @override
  @JsonKey(name: "booking")
  BookingModel? get booking;
  @override
  @JsonKey(name: "reviewAverages")
  ReviewAveragesModel? get reviewAverages;
  @override
  @JsonKey(ignore: true)
  _$$DataModelImplCopyWith<_$DataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BookingModel _$BookingModelFromJson(Map<String, dynamic> json) {
  return _BookingModel.fromJson(json);
}

/// @nodoc
mixin _$BookingModel {
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
  $BookingModelCopyWith<BookingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookingModelCopyWith<$Res> {
  factory $BookingModelCopyWith(
          BookingModel value, $Res Function(BookingModel) then) =
      _$BookingModelCopyWithImpl<$Res, BookingModel>;
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
class _$BookingModelCopyWithImpl<$Res, $Val extends BookingModel>
    implements $BookingModelCopyWith<$Res> {
  _$BookingModelCopyWithImpl(this._value, this._then);

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
abstract class _$$BookingModelImplCopyWith<$Res>
    implements $BookingModelCopyWith<$Res> {
  factory _$$BookingModelImplCopyWith(
          _$BookingModelImpl value, $Res Function(_$BookingModelImpl) then) =
      __$$BookingModelImplCopyWithImpl<$Res>;
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
class __$$BookingModelImplCopyWithImpl<$Res>
    extends _$BookingModelCopyWithImpl<$Res, _$BookingModelImpl>
    implements _$$BookingModelImplCopyWith<$Res> {
  __$$BookingModelImplCopyWithImpl(
      _$BookingModelImpl _value, $Res Function(_$BookingModelImpl) _then)
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
    return _then(_$BookingModelImpl(
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
class _$BookingModelImpl implements _BookingModel {
  const _$BookingModelImpl(
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

  factory _$BookingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookingModelImplFromJson(json);

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
    return 'BookingModel(id: $id, packages: $packages, discount: $discount, status: $status, statusLogs: $statusLogs, bookingUuid: $bookingUuid, userUuid: $userUuid, bookedOn: $bookedOn, startDate: $startDate, endDate: $endDate, baseFare: $baseFare, amount: $amount, bookingAddress: $bookingAddress, bookingSource: $bookingSource)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookingModelImpl &&
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
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
      __$$BookingModelImplCopyWithImpl<_$BookingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookingModelImplToJson(
      this,
    );
  }
}

abstract class _BookingModel implements BookingModel {
  const factory _BookingModel(
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
      _$BookingModelImpl;

  factory _BookingModel.fromJson(Map<String, dynamic> json) =
      _$BookingModelImpl.fromJson;

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
  _$$BookingModelImplCopyWith<_$BookingModelImpl> get copyWith =>
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

ReviewAveragesModel _$ReviewAveragesModelFromJson(Map<String, dynamic> json) {
  return _ReviewAveragesModel.fromJson(json);
}

/// @nodoc
mixin _$ReviewAveragesModel {
  @JsonKey(name: "_id")
  dynamic get id => throw _privateConstructorUsedError;
  @JsonKey(name: "Communication")
  double? get communication => throw _privateConstructorUsedError;
  @JsonKey(name: "ServiceDescribed")
  double? get serviceDescribed => throw _privateConstructorUsedError;
  @JsonKey(name: "Recommended")
  double? get recommended => throw _privateConstructorUsedError;
  @JsonKey(name: "overallAverage")
  double? get overallAverage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewAveragesModelCopyWith<ReviewAveragesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewAveragesModelCopyWith<$Res> {
  factory $ReviewAveragesModelCopyWith(
          ReviewAveragesModel value, $Res Function(ReviewAveragesModel) then) =
      _$ReviewAveragesModelCopyWithImpl<$Res, ReviewAveragesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: "_id") dynamic id,
      @JsonKey(name: "Communication") double? communication,
      @JsonKey(name: "ServiceDescribed") double? serviceDescribed,
      @JsonKey(name: "Recommended") double? recommended,
      @JsonKey(name: "overallAverage") double? overallAverage});
}

/// @nodoc
class _$ReviewAveragesModelCopyWithImpl<$Res, $Val extends ReviewAveragesModel>
    implements $ReviewAveragesModelCopyWith<$Res> {
  _$ReviewAveragesModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? communication = freezed,
    Object? serviceDescribed = freezed,
    Object? recommended = freezed,
    Object? overallAverage = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      overallAverage: freezed == overallAverage
          ? _value.overallAverage
          : overallAverage // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewAveragesModelImplCopyWith<$Res>
    implements $ReviewAveragesModelCopyWith<$Res> {
  factory _$$ReviewAveragesModelImplCopyWith(_$ReviewAveragesModelImpl value,
          $Res Function(_$ReviewAveragesModelImpl) then) =
      __$$ReviewAveragesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "_id") dynamic id,
      @JsonKey(name: "Communication") double? communication,
      @JsonKey(name: "ServiceDescribed") double? serviceDescribed,
      @JsonKey(name: "Recommended") double? recommended,
      @JsonKey(name: "overallAverage") double? overallAverage});
}

/// @nodoc
class __$$ReviewAveragesModelImplCopyWithImpl<$Res>
    extends _$ReviewAveragesModelCopyWithImpl<$Res, _$ReviewAveragesModelImpl>
    implements _$$ReviewAveragesModelImplCopyWith<$Res> {
  __$$ReviewAveragesModelImplCopyWithImpl(_$ReviewAveragesModelImpl _value,
      $Res Function(_$ReviewAveragesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? communication = freezed,
    Object? serviceDescribed = freezed,
    Object? recommended = freezed,
    Object? overallAverage = freezed,
  }) {
    return _then(_$ReviewAveragesModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      overallAverage: freezed == overallAverage
          ? _value.overallAverage
          : overallAverage // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewAveragesModelImpl implements _ReviewAveragesModel {
  const _$ReviewAveragesModelImpl(
      {@JsonKey(name: "_id") this.id,
      @JsonKey(name: "Communication") this.communication,
      @JsonKey(name: "ServiceDescribed") this.serviceDescribed,
      @JsonKey(name: "Recommended") this.recommended,
      @JsonKey(name: "overallAverage") this.overallAverage});

  factory _$ReviewAveragesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewAveragesModelImplFromJson(json);

  @override
  @JsonKey(name: "_id")
  final dynamic id;
  @override
  @JsonKey(name: "Communication")
  final double? communication;
  @override
  @JsonKey(name: "ServiceDescribed")
  final double? serviceDescribed;
  @override
  @JsonKey(name: "Recommended")
  final double? recommended;
  @override
  @JsonKey(name: "overallAverage")
  final double? overallAverage;

  @override
  String toString() {
    return 'ReviewAveragesModel(id: $id, communication: $communication, serviceDescribed: $serviceDescribed, recommended: $recommended, overallAverage: $overallAverage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewAveragesModelImpl &&
            const DeepCollectionEquality().equals(other.id, id) &&
            (identical(other.communication, communication) ||
                other.communication == communication) &&
            (identical(other.serviceDescribed, serviceDescribed) ||
                other.serviceDescribed == serviceDescribed) &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended) &&
            (identical(other.overallAverage, overallAverage) ||
                other.overallAverage == overallAverage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      communication,
      serviceDescribed,
      recommended,
      overallAverage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewAveragesModelImplCopyWith<_$ReviewAveragesModelImpl> get copyWith =>
      __$$ReviewAveragesModelImplCopyWithImpl<_$ReviewAveragesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewAveragesModelImplToJson(
      this,
    );
  }
}

abstract class _ReviewAveragesModel implements ReviewAveragesModel {
  const factory _ReviewAveragesModel(
          {@JsonKey(name: "_id") final dynamic id,
          @JsonKey(name: "Communication") final double? communication,
          @JsonKey(name: "ServiceDescribed") final double? serviceDescribed,
          @JsonKey(name: "Recommended") final double? recommended,
          @JsonKey(name: "overallAverage") final double? overallAverage}) =
      _$ReviewAveragesModelImpl;

  factory _ReviewAveragesModel.fromJson(Map<String, dynamic> json) =
      _$ReviewAveragesModelImpl.fromJson;

  @override
  @JsonKey(name: "_id")
  dynamic get id;
  @override
  @JsonKey(name: "Communication")
  double? get communication;
  @override
  @JsonKey(name: "ServiceDescribed")
  double? get serviceDescribed;
  @override
  @JsonKey(name: "Recommended")
  double? get recommended;
  @override
  @JsonKey(name: "overallAverage")
  double? get overallAverage;
  @override
  @JsonKey(ignore: true)
  _$$ReviewAveragesModelImplCopyWith<_$ReviewAveragesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
