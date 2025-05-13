// To parse this JSON data, do
//
//     final RescheduleModel = RescheduleModelFromJson(jsonString);

import 'dart:convert';

RescheduleModel RescheduleModelFromJson(String str) =>
    RescheduleModel.fromJson(json.decode(str));

String RescheduleModelToJson(RescheduleModel data) =>
    json.encode(data.toJson());

class RescheduleModel {
  String? code;
  String? message;
  Data? data;
  bool? successStatus;

  RescheduleModel({
    this.code,
    this.message,
    this.data,
    this.successStatus,
  });

  factory RescheduleModel.fromJson(Map<String, dynamic> json) =>
      RescheduleModel(
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
  double? discount;
  String? status;
  List<StatusLog>? statusLogs;
  String? bookingUuid;
  String? userUuid;
  DateTime? bookedOn;
  DateTime? startDate;
  DateTime? endDate;
  double? baseFare;
  double? amount;
  BookingAddress? bookingAddress;
  String? bookingSource;
  DateTime? orderCancellationDate;
  String? orderCancellationReason;
  String? orderCancelledBy;
  DateTime? orderRescheduleDate;
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
        packages: json["packages"] == null
            ? null
            : Packages.fromJson(json["packages"]),
        discount: json["discount"] ?? 0.0,
        status: json["status"],
        statusLogs: json["status_logs"] == null
            ? []
            : List<StatusLog>.from(
                json["status_logs"]!.map((x) => StatusLog.fromJson(x))),
        bookingUuid: json["booking_uuid"],
        userUuid: json["user_uuid"],
        bookedOn: json["booked_on"] == null
            ? null
            : DateTime.parse(json["booked_on"]),
        startDate: json["start_date"] == null
            ? null
            : DateTime.parse(json["start_date"]),
        endDate:
            json["end_date"] == null ? null : DateTime.parse(json["end_date"]),
        baseFare: json["base_fare"] ?? 0.0,
        amount: json["amount"] ?? 0.0,
        bookingAddress: json["booking_address"] == null
            ? null
            : BookingAddress.fromJson(json["booking_address"]),
        bookingSource: json["booking_source"],
        orderCancellationDate: json["order_cancellation_date"] == null
            ? null
            : DateTime.parse(json["order_cancellation_date"]),
        orderCancellationReason: json["order_cancellation_reason"],
        orderCancelledBy: json["order_cancelled_by"],
        orderRescheduleDate: json["order_reschedule_date"] == null
            ? null
            : DateTime.parse(json["order_reschedule_date"]),
        orderRescheduleReason: json["order_reschedule_reason"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "packages": packages?.toJson(),
        "discount": discount,
        "status": status,
        "status_logs": statusLogs == null
            ? []
            : List<dynamic>.from(statusLogs!.map((x) => x.toJson())),
        "booking_uuid": bookingUuid,
        "user_uuid": userUuid,
        "booked_on": bookedOn?.toIso8601String(),
        "start_date": startDate?.toIso8601String(),
        "end_date": endDate?.toIso8601String(),
        "base_fare": baseFare,
        "amount": amount,
        "booking_address": bookingAddress?.toJson(),
        "booking_source": bookingSource,
        "order_cancellation_date": orderCancellationDate?.toIso8601String(),
        "order_cancellation_reason": orderCancellationReason,
        "order_cancelled_by": orderCancelledBy,
        "order_reschedule_date": orderRescheduleDate?.toIso8601String(),
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
  DateTime? date;
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
        date: json["date"] == null ? null : DateTime.parse(json["date"]),
        status: json["status"],
        packageUuid: json["package_uuid"],
        bookingUuid: json["booking_uuid"],
      );

  Map<String, dynamic> toJson() => {
        "date": date?.toIso8601String(),
        "status": status,
        "package_uuid": packageUuid,
        "booking_uuid": bookingUuid,
      };
}
