
// To parse this JSON data, do
//
//     final cancelBookingModel = cancelBookingModelFromJson(jsonString);

import 'dart:convert';

CancelBookingModel cancelBookingModelFromJson(String str) => CancelBookingModel.fromJson(json.decode(str));

String cancelBookingModelToJson(CancelBookingModel data) => json.encode(data.toJson());

class CancelBookingModel {
    String? code;
    String? message;
    Data? data;
    bool? successStatus;

    CancelBookingModel({
        this.code,
        this.message,
        this.data,
        this.successStatus,
    });

    factory CancelBookingModel.fromJson(Map<String, dynamic> json) => CancelBookingModel(
        code: json["code"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        successStatus: json["success_status"],
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data?.toJson(),
        "success_status": successStatus,
    };
}

class Data {
    String? id;
    Packages? packages;
    int? discount;
    String? status;
    List<StatusLog>? statusLogs;
    String? bookingUuid;
    String? userUuid;
    String? bookedOn;
    String? startDate;
    String? endDate;
    int? baseFare;
    int? amount;
    BookingAddress? bookingAddress;
    String? bookingSource;
    String? orderCancellationDate;
    String? orderCancellationReason;
    String? orderCancelledBy;
    String? orderRescheduleDate;
    String? orderRescheduleReason;

    Data({
        this.id,
        this.packages,
        this.discount,
        this.status,
        this.statusLogs,
        this.bookingUuid,
        this.userUuid,
        this.bookedOn,
        this.startDate,
        this.endDate,
        this.baseFare,
        this.amount,
        this.bookingAddress,
        this.bookingSource,
        this.orderCancellationDate,
        this.orderCancellationReason,
        this.orderCancelledBy,
        this.orderRescheduleDate,
        this.orderRescheduleReason,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        packages: json["packages"] == null ? null : Packages.fromJson(json["packages"]),
        discount: json["discount"],
        status: json["status"],
        statusLogs: json["status_logs"] == null ? [] : List<StatusLog>.from(json["status_logs"]!.map((x) => StatusLog.fromJson(x))),
        bookingUuid: json["booking_uuid"],
        userUuid: json["user_uuid"],
        bookedOn: json["booked_on"],
        startDate: json["start_date"],
        endDate: json["end_date"],
        baseFare: json["base_fare"],
        amount: json["amount"],
        bookingAddress: json["booking_address"] == null ? null : BookingAddress.fromJson(json["booking_address"]),
        bookingSource: json["booking_source"],
        orderCancellationDate: json["order_cancellation_date"],
        orderCancellationReason: json["order_cancellation_reason"],
        orderCancelledBy: json["order_cancelled_by"],
        orderRescheduleDate: json["order_reschedule_date"],
        orderRescheduleReason: json["order_reschedule_reason"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "packages": packages?.toJson(),
        "discount": discount,
        "status": status,
        "status_logs": statusLogs == null ? [] : List<dynamic>.from(statusLogs!.map((x) => x.toJson())),
        "booking_uuid": bookingUuid,
        "user_uuid": userUuid,
        "booked_on": bookedOn,
        "start_date": startDate,
        "end_date": endDate,
        "base_fare": baseFare,
        "amount": amount,
        "booking_address": bookingAddress?.toJson(),
        "booking_source": bookingSource,
        "order_cancellation_date": orderCancellationDate,
        "order_cancellation_reason": orderCancellationReason,
        "order_cancelled_by": orderCancelledBy,
        "order_reschedule_date": orderRescheduleDate,
        "order_reschedule_reason": orderRescheduleReason,
    };
}

class BookingAddress {
    String? address;
    String? landmark;
    String? saveAs;

    BookingAddress({
        this.address,
        this.landmark,
        this.saveAs,
    });

    factory BookingAddress.fromJson(Map<String, dynamic> json) => BookingAddress(
        address: json["address"],
        landmark: json["landmark"],
        saveAs: json["save_as"],
    );

    Map<String, dynamic> toJson() => {
        "address": address,
        "landmark": landmark,
        "save_as": saveAs,
    };
}

class Packages {
    String? id;
    String? partnerUuid;
    String? packageUuid;

    Packages({
        this.id,
        this.partnerUuid,
        this.packageUuid,
    });

    factory Packages.fromJson(Map<String, dynamic> json) => Packages(
        id: json["id"],
        partnerUuid: json["partner_uuid"],
        packageUuid: json["package_uuid"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "partner_uuid": partnerUuid,
        "package_uuid": packageUuid,
    };
}

class StatusLog {
    String? date;
    String? status;
    String? packageUuid;
    dynamic bookingUuid;

    StatusLog({
        this.date,
        this.status,
        this.packageUuid,
        this.bookingUuid,
    });

    factory StatusLog.fromJson(Map<String, dynamic> json) => StatusLog(
        date: json["date"],
        status: json["status"],
        packageUuid: json["package_uuid"],
        bookingUuid: json["booking_uuid"],
    );

    Map<String, dynamic> toJson() => {
        "date": date,
        "status": status,
        "package_uuid": packageUuid,
        "booking_uuid": bookingUuid,
    };
}






//-----------------------------


// // ignore_for_file: invalid_annotation_target

// import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/cancel_booking_entity.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'dart:convert';

// part 'cancel_booking_model.freezed.dart';
// part 'cancel_booking_model.g.dart';

// CancelBookingModel cancelBookingModelFromMap(String str) =>
//     CancelBookingModel.fromMap(json.decode(str));

// String cancelBookingModelToMap(CancelBookingModel data) =>
//     json.encode(data.toMap());

// @freezed
// class CancelBookingModel extends CancelBookingEntity with _$CancelBookingModel {
//   const factory CancelBookingModel({
//     @JsonKey(name: "code") String? code,
//     @JsonKey(name: "message") String? message,
//     @JsonKey(name: "data") DataModel? data,
//     @JsonKey(name: "success_status") bool? successStatus,
//   }) = _CancelBookingModel;

//   factory CancelBookingModel.fromJson(Map<String, dynamic> json) =>
//       _$CancelBookingModelFromJson(json);
// }
// // 
// @freezed
// class DataModel extends Data with _$DataModel {
//   const factory DataModel({
//     @JsonKey(name: "id") String? id,
//     @JsonKey(name: "packages") PackagesModel? packages,
//     @JsonKey(name: "discount") int? discount,
//     @JsonKey(name: "status") String? status,
//     @JsonKey(name: "status_logs") List<StatusLogModel>? statusLogs,
//     @JsonKey(name: "booking_uuid") String? bookingUuid,
//     @JsonKey(name: "user_uuid") String? userUuid,
//     @JsonKey(name: "booked_on") String? bookedOn,
//     @JsonKey(name: "start_date") String? startDate,
//     @JsonKey(name: "end_date") String? endDate,
//     @JsonKey(name: "base_fare") int? baseFare,
//     @JsonKey(name: "amount") int? amount,
//     @JsonKey(name: "booking_address") BookingAddressModel? bookingAddress,
//     @JsonKey(name: "booking_source") String? bookingSource,
//     @JsonKey(name: "order_cancellation_date") String? orderCancellationDate,
//     @JsonKey(name: "order_cancellation_reason") String? orderCancellationReason,
//     @JsonKey(name: "order_cancelled_by") String? orderCancelledBy,
//     @JsonKey(name: "order_reschedule_date") String? orderRescheduleDate,
//     @JsonKey(name: "order_reschedule_reason") String? orderRescheduleReason,
//   }) = _DataModel;

//   factory DataModel.fromJson(Map<String, dynamic> json) =>
//       _$DataModelFromJson(json);
// }

// @freezed
// class BookingAddressModel extends BookingAddress with _$BookingAddressModel {
//   const factory BookingAddressModel({
//     @JsonKey(name: "address") String? address,
//     @JsonKey(name: "landmark") String? landmark,
//     @JsonKey(name: "save_as") String? saveAs,
//   }) = _BookingAddressModel;

//   factory BookingAddressModel.fromJson(Map<String, dynamic> json) =>
//       _$BookingAddressModelFromJson(json);
// }

// @freezed
// class PackagesModel extends Packages with _$PackagesModel {
//   const factory PackagesModel({
//     @JsonKey(name: "id") String? id,
//     @JsonKey(name: "partner_uuid") String? partnerUuid,
//     @JsonKey(name: "package_uuid") String? packageUuid,
//   }) = _PackagesModel;

//   factory PackagesModel.fromJson(Map<String, dynamic> json) =>
//       _$PackagesModelFromJson(json);
// }

// @freezed
// class StatusLogModel extends StatusLog with _$StatusLogModel {
//   const factory StatusLogModel({
//     @JsonKey(name: "date") String? date,
//     @JsonKey(name: "status") String? status,
//     @JsonKey(name: "package_uuid") String? packageUuid,
//     @JsonKey(name: "booking_uuid") dynamic bookingUuid,
//   }) = _StatusLogModel;

//   factory StatusLogModel.fromJson(Map<String, dynamic> json) =>
//       _$StatusLogModelFromJson(json);
// }
