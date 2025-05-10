// ignore_for_file: invalid_annotation_target

import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/add_booking_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_booking_model.freezed.dart';
part 'add_booking_model.g.dart';

@freezed
class AddBookingModel extends AddBookingEntity with _$AddBookingModel {
    const factory AddBookingModel({
        @JsonKey(name: "code")
        String? code,
        @JsonKey(name: "message")
        String? message,
        @JsonKey(name: "data")
        DataModel? data,
        @JsonKey(name: "success_status")
        bool? successStatus,
    }) = _AddBookingModel;

    factory AddBookingModel.fromJson(Map<String, dynamic> json) => _$AddBookingModelFromJson(json);
}

@freezed
class DataModel extends Data with _$DataModel {
    const factory DataModel({
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
    }) = _DataModel;

    factory DataModel.fromJson(Map<String, dynamic> json) => _$DataModelFromJson(json);
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
