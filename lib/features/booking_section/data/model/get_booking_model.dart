// ignore_for_file: invalid_annotation_target

import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/get_booking_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_booking_model.freezed.dart';
part 'get_booking_model.g.dart';

@freezed
class GetBookingModel extends GetBookingEntity with _$GetBookingModel {
    const factory GetBookingModel({
        @JsonKey(name: "code")
        String? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "data")
        DataModel? data,
        @JsonKey(name: "success_status")
        bool? successStatus,
    }) = _GetBookingModel;

    factory GetBookingModel.fromJson(Map<String, dynamic> json) => _$GetBookingModelFromJson(json);
}

@freezed
class DataModel extends Data with _$DataModel {
    const factory DataModel({
        @JsonKey(name: "booking")
        BookingModel? booking,
        @JsonKey(name: "reviewAverages")
        ReviewAveragesModel? reviewAverages,
    }) = _DataModel;

    factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
}

@freezed
class BookingModel extends Booking with _$BookingModel {
    const factory BookingModel({
        @JsonKey(name: "id")
        String? id,
        @JsonKey(name: "packages")
        PackagesModel? packages,
        @JsonKey(name: "discount")
        double? discount,
        @JsonKey(name: "status")
        String? status,
        @JsonKey(name: "status_logs")
        List<StatusLogModel>? statusLogs,
        @JsonKey(name: "booking_uuid")
        String? bookingUuid,
        @JsonKey(name: "user_uuid")
        String? userUuid,
        @JsonKey(name: "booked_on")
        DateTime? bookedOn,
        @JsonKey(name: "start_date")
        DateTime? startDate,
        @JsonKey(name: "end_date")
        DateTime? endDate,
        @JsonKey(name: "base_fare")
        double? baseFare,
        @JsonKey(name: "amount")
        double? amount,
        @JsonKey(name: "booking_address")
        BookingAddressModel? bookingAddress,
        @JsonKey(name: "booking_source")
        String? bookingSource,
    }) = _BookingModel;

    factory BookingModel.fromJson(Map<String, dynamic> json) => _$BookingModelFromJson(json);
}

@freezed
class BookingAddressModel extends BookingAddress with _$BookingAddressModel {
    const factory BookingAddressModel({
        @JsonKey(name: "address")
        String? address,
        @JsonKey(name: "landmark")
        String? landmark,
        @JsonKey(name: "save_as")
        String? saveAs,
    }) = _BookingAddressModel;

    factory BookingAddressModel.fromJson(Map<String, dynamic> json) => _$BookingAddressModelFromJson(json);
}

@freezed
class PackagesModel extends Packages with _$PackagesModel {
    const factory PackagesModel({
        @JsonKey(name: "id")
        String? id,
        @JsonKey(name: "partner_uuid")
        String? partnerUuid,
        @JsonKey(name: "package_uuid")
        String? packageUuid,
    }) = _PackagesModel;

    factory PackagesModel.fromJson(Map<String, dynamic> json) => _$PackagesModelFromJson(json);
}

@freezed
class StatusLogModel extends StatusLog with _$StatusLogModel {
    const factory StatusLogModel({
        @JsonKey(name: "date")
        DateTime? date,
        @JsonKey(name: "status")
        String? status,
        @JsonKey(name: "package_uuid")
        String? packageUuid,
        @JsonKey(name: "booking_uuid")
        dynamic bookingUuid,
    }) = _StatusLogModel;

    factory StatusLogModel.fromJson(Map<String, dynamic> json) => _$StatusLogModelFromJson(json);
}

@freezed
class ReviewAveragesModel extends ReviewAverages with _$ReviewAveragesModel {
    const factory ReviewAveragesModel({
        @JsonKey(name: "_id")
        dynamic id,
        @JsonKey(name: "Communication")
        double? communication,
        @JsonKey(name: "ServiceDescribed")
        double? serviceDescribed,
        @JsonKey(name: "Recommended")
        double? recommended,
        @JsonKey(name: "overallAverage")
        double? overallAverage,
    }) = _ReviewAveragesModel;

    factory ReviewAveragesModel.fromJson(Map<String, dynamic> json) => _$ReviewAveragesModelFromJson(json);
}
