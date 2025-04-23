// To parse this JSON data, do
//
//     final getUserBookingModel = getUserBookingModelFromJson(jsonString);

// ignore_for_file: invalid_annotation_target

import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/get_user_booking_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_user_booking_model.freezed.dart';
part 'get_user_booking_model.g.dart';

@freezed
class GetUserBookingModel extends GetUserBookingEntity
    with _$GetUserBookingModel {
  const factory GetUserBookingModel({
    @JsonKey(name: "code") String? code,
    @JsonKey(name: "message") String? message,
    @JsonKey(name: "data") DataModel? data,
    @JsonKey(name: "success_status") bool? successStatus,
  }) = _GetUserBookingModel;

  factory GetUserBookingModel.fromJson(Map<String, dynamic> json) =>
      _$GetUserBookingModelFromJson(json);
}

@freezed
class DataModel extends Data with _$DataModel {
  const factory DataModel({
    @JsonKey(name: "size") int? size,
    @JsonKey(name: "userBookings") List<UserBookingModel>? userBookings,
    @JsonKey(name: "count") int? count,
    @JsonKey(name: "page") int? page,
  }) = _DataModel;

  factory DataModel.fromJson(Map<String, dynamic> json) =>
      _$DataModelFromJson(json);
}

@freezed
class UserBookingModel extends UserBooking with _$UserBookingModel {
  const factory UserBookingModel({
    @JsonKey(name: "profileName") String? profileName,
    @JsonKey(name: "packageReviewAverage") double? packageReviewAverage,
    @JsonKey(name: "profileReviewAverage") double? profileReviewAverage,
    @JsonKey(name: "profileImage") String? profileImage,
    @JsonKey(name: "megmoGigsCount") int? megmoGigsCount,
    @JsonKey(name: "PackageBookingCount") int? packageBookingCount,
    @JsonKey(name: "bookingDetails") BookingDetailsModel? bookingDetails,
  }) = _UserBookingModel;

  factory UserBookingModel.fromJson(Map<String, dynamic> json) =>
      _$UserBookingModelFromJson(json);
}

@freezed
class BookingDetailsModel extends BookingDetails with _$BookingDetailsModel {
  const factory BookingDetailsModel({
    @JsonKey(name: "id") String? id,
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
    @JsonKey(name: "booking_source") String? bookingSource,
  }) = _BookingDetailsModel;

  factory BookingDetailsModel.fromJson(Map<String, dynamic> json) =>
      _$BookingDetailsModelFromJson(json);
}

@freezed
class BookingAddressModel extends BookingAddress with _$BookingAddressModel {
  const factory BookingAddressModel({
    @JsonKey(name: "address") String? address,
    @JsonKey(name: "landmark") String? landmark,
    @JsonKey(name: "save_as") String? saveAs,
  }) = _BookingAddressModel;

  factory BookingAddressModel.fromJson(Map<String, dynamic> json) =>
      _$BookingAddressModelFromJson(json);
}

@freezed
class PackagesModel extends Packages with _$PackagesModel {
  const factory PackagesModel({
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "partner_uuid") String? partnerUuid,
    @JsonKey(name: "package_uuid") String? packageUuid,
  }) = _PackagesModel;

  factory PackagesModel.fromJson(Map<String, dynamic> json) =>
      _$PackagesModelFromJson(json);
}

@freezed
class StatusLogModel extends StatusLog with _$StatusLogModel {
  const factory StatusLogModel({
    @JsonKey(name: "date") DateTime? date,
    @JsonKey(name: "status") String? status,
    @JsonKey(name: "package_uuid") String? packageUuid,
    @JsonKey(name: "booking_uuid") dynamic bookingUuid,
  }) = _StatusLogModel;

  factory StatusLogModel.fromJson(Map<String, dynamic> json) =>
      _$StatusLogModelFromJson(json);
}
