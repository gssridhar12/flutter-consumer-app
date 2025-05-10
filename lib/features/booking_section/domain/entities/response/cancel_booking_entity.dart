// To parse this JSON data, do
//
//     final cancelBookingEntity = cancelBookingEntityFromJson(jsonString);

import 'dart:convert';

CancelBookingEntity cancelBookingEntityFromJson(String str) =>
    CancelBookingEntity.fromJson(json.decode(str));

String cancelBookingEntityToJson(CancelBookingEntity data) =>
    json.encode(data.toJson());

class CancelBookingEntity {
  String? code;
  String? message;
  Data? data;
  bool? successStatus;

  CancelBookingEntity({
    this.code,
    this.message,
    this.data,
    this.successStatus,
  });

  factory CancelBookingEntity.fromJson(Map<String, dynamic> json) =>
      CancelBookingEntity(
        code: json["code"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        successStatus: json["success_status"] ?? false,
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
  String? bookedOn;
  String? startDate;
  String? endDate;
  double? baseFare;
  double? amount;
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
        bookedOn: json["booked_on"],
        startDate: json["start_date"],
        endDate: json["end_date"],
        baseFare: json["base_fare"] ?? 0.0,
        amount: json["amount"] ?? 0.0,
        bookingAddress: json["booking_address"] == null
            ? null
            : BookingAddress.fromJson(json["booking_address"]),
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
        "status_logs": statusLogs == null
            ? []
            : List<dynamic>.from(statusLogs!.map((x) => x.toJson())),
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



//----------


// class CancelBookingEntity {
//   String? code;
//   String? message;
//   Data? data;
//   bool? successStatus;

//   CancelBookingEntity({
//     this.code,
//     this.message,
//     this.data,
//     this.successStatus,
//   });
// }

// class Data {
//   String? id;
//   Packages? packages;
//   int? discount;
//   String? status;
//   List<StatusLog>? statusLogs;
//   String? bookingUuid;
//   String? userUuid;
//   DateTime? bookedOn;
//   DateTime? startDate;
//   DateTime? endDate;
//   int? baseFare;
//   int? amount;
//   BookingAddress? bookingAddress;
//   String? bookingSource;
//   DateTime? orderCancellationDate;
//   String? orderCancellationReason;
//   String? orderCancelledBy;
//   DateTime? orderRescheduleDate;
//   String? orderRescheduleReason;

//   Data({
//     this.id,
//     this.packages,
//     this.discount,
//     this.status,
//     this.statusLogs,
//     this.bookingUuid,
//     this.userUuid,
//     this.bookedOn,
//     this.startDate,
//     this.endDate,
//     this.baseFare,
//     this.amount,
//     this.bookingAddress,
//     this.bookingSource,
//     this.orderCancellationDate,
//     this.orderCancellationReason,
//     this.orderCancelledBy,
//     this.orderRescheduleDate,
//     this.orderRescheduleReason,
//   });
// }

// class BookingAddress {
//   String? address;
//   String? landmark;
//   String? saveAs;

//   BookingAddress({
//     this.address,
//     this.landmark,
//     this.saveAs,
//   });
// }

// class Packages {
//   String? id;
//   String? partnerUuid;
//   String? packageUuid;

//   Packages({
//     this.id,
//     this.partnerUuid,
//     this.packageUuid,
//   });
// }

// class StatusLog {
//   DateTime? date;
//   String? status;
//   String? packageUuid;
//   dynamic bookingUuid;

//   StatusLog({
//     this.date,
//     this.status,
//     this.packageUuid,
//     this.bookingUuid,
//   });
// }

// // To parse this JSON data, do
// //
// //     final cancelBookingEntity = cancelBookingEntityFromJson(jsonString);

// import 'dart:convert';

// CancelBookingEntity cancelBookingEntityFromJson(String str) =>
//     CancelBookingEntity.fromJson(json.decode(str));

// String cancelBookingEntityToJson(CancelBookingEntity data) =>
//     json.encode(data.toJson());

// class CancelBookingEntity {
//   String? code;
//   String? message;
//   Data? data;
//   bool? successStatus;

//   CancelBookingEntity({
//     this.code,
//     this.message,
//     this.data,
//     this.successStatus,
//   });

//   factory CancelBookingEntity.fromJson(Map<String, dynamic> json) =>
//       CancelBookingEntity(
//         code: json["code"],
//         message: json["message"],
//         data: json["data"] == null ? null : Data.fromJson(json["data"]),
//         successStatus: json["success_status"] ?? false,
//       );

//   Map<String, dynamic> toJson() => {
//         "code": code,
//         "message": message,
//         "data": data?.toJson(),
//         "success_status": successStatus,
//       };
// }

// class Data {
//   String? id;
//   Packages? packages;
//   double? discount;
//   String? status;
//   List<StatusLog>? statusLogs;
//   String? bookingUuid;
//   String? userUuid;
//   String? bookedOn;
//   String? startDate;
//   String? endDate;
//   double? baseFare;
//   double? amount;
//   BookingAddress? bookingAddress;
//   String? bookingSource;
//   String? orderCancellationDate;
//   String? orderCancellationReason;
//   String? orderCancelledBy;
//   String? orderRescheduleDate;
//   String? orderRescheduleReason;

//   Data({
//     this.id,
//     this.packages,
//     this.discount,
//     this.status,
//     this.statusLogs,
//     this.bookingUuid,
//     this.userUuid,
//     this.bookedOn,
//     this.startDate,
//     this.endDate,
//     this.baseFare,
//     this.amount,
//     this.bookingAddress,
//     this.bookingSource,
//     this.orderCancellationDate,
//     this.orderCancellationReason,
//     this.orderCancelledBy,
//     this.orderRescheduleDate,
//     this.orderRescheduleReason,
//   });

//   factory Data.fromJson(Map<String, dynamic> json) => Data(
//         id: json["id"],
//         packages: json["packages"] == null
//             ? null
//             : Packages.fromJson(json["packages"]),
//         discount: json["discount"] ?? 0.0,
//         status: json["status"],
//         statusLogs: json["status_logs"] == null
//             ? []
//             : List<StatusLog>.from(
//                 json["status_logs"]!.map((x) => StatusLog.fromJson(x))),
//         bookingUuid: json["booking_uuid"],
//         userUuid: json["user_uuid"],
//         bookedOn: json["booked_on"],
//         startDate: json["start_date"],
//         endDate: json["end_date"],
//         baseFare: json["base_fare"] ?? 0.0,
//         amount: json["amount"] ?? 0.0,
//         bookingAddress: json["booking_address"] == null
//             ? null
//             : BookingAddress.fromJson(json["booking_address"]),
//         bookingSource: json["booking_source"],
//         orderCancellationDate: json["order_cancellation_date"],
//         orderCancellationReason: json["order_cancellation_reason"],
//         orderCancelledBy: json["order_cancelled_by"],
//         orderRescheduleDate: json["order_reschedule_date"],
//         orderRescheduleReason: json["order_reschedule_reason"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "packages": packages?.toJson(),
//         "discount": discount,
//         "status": status,
//         "status_logs": statusLogs == null
//             ? []
//             : List<dynamic>.from(statusLogs!.map((x) => x.toJson())),
//         "booking_uuid": bookingUuid,
//         "user_uuid": userUuid,
//         "booked_on": bookedOn,
//         "start_date": startDate,
//         "end_date": endDate,
//         "base_fare": baseFare,
//         "amount": amount,
//         "booking_address": bookingAddress?.toJson(),
//         "booking_source": bookingSource,
//         "order_cancellation_date": orderCancellationDate,
//         "order_cancellation_reason": orderCancellationReason,
//         "order_cancelled_by": orderCancelledBy,
//         "order_reschedule_date": orderRescheduleDate,
//         "order_reschedule_reason": orderRescheduleReason,
//       };
// }

// class BookingAddress {
//   String? address;
//   String? landmark;
//   String? saveAs;

//   BookingAddress({
//     this.address,
//     this.landmark,
//     this.saveAs,
//   });

//   factory BookingAddress.fromJson(Map<String, dynamic> json) => BookingAddress(
//         address: json["address"],
//         landmark: json["landmark"],
//         saveAs: json["save_as"],
//       );

//   Map<String, dynamic> toJson() => {
//         "address": address,
//         "landmark": landmark,
//         "save_as": saveAs,
//       };
// }

// class Packages {
//   String? id;
//   String? partnerUuid;
//   String? packageUuid;

//   Packages({
//     this.id,
//     this.partnerUuid,
//     this.packageUuid,
//   });

//   factory Packages.fromJson(Map<String, dynamic> json) => Packages(
//         id: json["id"],
//         partnerUuid: json["partner_uuid"],
//         packageUuid: json["package_uuid"],
//       );

//   Map<String, dynamic> toJson() => {
//         "id": id,
//         "partner_uuid": partnerUuid,
//         "package_uuid": packageUuid,
//       };
// }

// class StatusLog {
//   String? date;
//   String? status;
//   String? packageUuid;
//   dynamic bookingUuid;

//   StatusLog({
//     this.date,
//     this.status,
//     this.packageUuid,
//     this.bookingUuid,
//   });

//   factory StatusLog.fromJson(Map<String, dynamic> json) => StatusLog(
//         date: json["date"],
//         status: json["status"],
//         packageUuid: json["package_uuid"],
//         bookingUuid: json["booking_uuid"],
//       );

//   Map<String, dynamic> toJson() => {
//         "date": date,
//         "status": status,
//         "package_uuid": packageUuid,
//         "booking_uuid": bookingUuid,
//       };
// }



// //----------


// // class CancelBookingEntity {
// //   String? code;
// //   String? message;
// //   Data? data;
// //   bool? successStatus;

// //   CancelBookingEntity({
// //     this.code,
// //     this.message,
// //     this.data,
// //     this.successStatus,
// //   });
// // }

// // class Data {
// //   String? id;
// //   Packages? packages;
// //   int? discount;
// //   String? status;
// //   List<StatusLog>? statusLogs;
// //   String? bookingUuid;
// //   String? userUuid;
// //   DateTime? bookedOn;
// //   DateTime? startDate;
// //   DateTime? endDate;
// //   int? baseFare;
// //   int? amount;
// //   BookingAddress? bookingAddress;
// //   String? bookingSource;
// //   DateTime? orderCancellationDate;
// //   String? orderCancellationReason;
// //   String? orderCancelledBy;
// //   DateTime? orderRescheduleDate;
// //   String? orderRescheduleReason;

// //   Data({
// //     this.id,
// //     this.packages,
// //     this.discount,
// //     this.status,
// //     this.statusLogs,
// //     this.bookingUuid,
// //     this.userUuid,
// //     this.bookedOn,
// //     this.startDate,
// //     this.endDate,
// //     this.baseFare,
// //     this.amount,
// //     this.bookingAddress,
// //     this.bookingSource,
// //     this.orderCancellationDate,
// //     this.orderCancellationReason,
// //     this.orderCancelledBy,
// //     this.orderRescheduleDate,
// //     this.orderRescheduleReason,
// //   });
// // }

// // class BookingAddress {
// //   String? address;
// //   String? landmark;
// //   String? saveAs;

// //   BookingAddress({
// //     this.address,
// //     this.landmark,
// //     this.saveAs,
// //   });
// // }

// // class Packages {
// //   String? id;
// //   String? partnerUuid;
// //   String? packageUuid;

// //   Packages({
// //     this.id,
// //     this.partnerUuid,
// //     this.packageUuid,
// //   });
// // }

// // class StatusLog {
// //   DateTime? date;
// //   String? status;
// //   String? packageUuid;
// //   dynamic bookingUuid;

// //   StatusLog({
// //     this.date,
// //     this.status,
// //     this.packageUuid,
// //     this.bookingUuid,
// //   });
// // }


// // // To parse this JSON data, do
// // //
// // //     final cancelBookingEntity = cancelBookingEntityFromJson(jsonString);

// // import 'dart:convert';

// // CancelBookingEntity cancelBookingEntityFromJson(String str) =>
// //     CancelBookingEntity.fromJson(json.decode(str));

// // String cancelBookingEntityToJson(CancelBookingEntity data) =>
// //     json.encode(data.toJson());

// // class CancelBookingEntity {
// //   String? code;
// //   String? message;
// //   Data? data;
// //   bool? successStatus;

// //   CancelBookingEntity({
// //     this.code,
// //     this.message,
// //     this.data,
// //     this.successStatus,
// //   });

// //   factory CancelBookingEntity.fromJson(Map<String, dynamic> json) =>
// //       CancelBookingEntity(
// //         code: json["code"],
// //         message: json["message"],
// //         data: json["data"] == null ? null : Data.fromJson(json["data"]),
// //         successStatus: json["success_status"],
// //       );

// //   Map<String, dynamic> toJson() => {
// //         "code": code,
// //         "message": message,
// //         "data": data?.toJson(),
// //         "success_status": successStatus,
// //       };
// // }

// // class Data {
// //   String? id;
// //   Packages? packages;
// //   int? discount;
// //   String? status;
// //   List<StatusLog>? statusLogs;
// //   String? bookingUuid;
// //   String? userUuid;
// //   String? bookedOn;
// //   String? startDate;
// //   String? endDate;
// //   int? baseFare;
// //   int? amount;
// //   BookingAddress? bookingAddress;
// //   String? bookingSource;
// //   String? orderCancellationDate;
// //   String? orderCancellationReason;
// //   String? orderCancelledBy;
// //   String? orderRescheduleDate;
// //   String? orderRescheduleReason;

// //   Data({
// //     this.id,
// //     this.packages,
// //     this.discount,
// //     this.status,
// //     this.statusLogs,
// //     this.bookingUuid,
// //     this.userUuid,
// //     this.bookedOn,
// //     this.startDate,
// //     this.endDate,
// //     this.baseFare,
// //     this.amount,
// //     this.bookingAddress,
// //     this.bookingSource,
// //     this.orderCancellationDate,
// //     this.orderCancellationReason,
// //     this.orderCancelledBy,
// //     this.orderRescheduleDate,
// //     this.orderRescheduleReason,
// //   });

// //   factory Data.fromJson(Map<String, dynamic> json) => Data(
// //         id: json["id"],
// //         packages: json["packages"] == null
// //             ? null
// //             : Packages.fromJson(json["packages"]),
// //         discount: json["discount"],
// //         status: json["status"],
// //         statusLogs: json["status_logs"] == null
// //             ? []
// //             : List<StatusLog>.from(
// //                 json["status_logs"]!.map((x) => StatusLog.fromJson(x))),
// //         bookingUuid: json["booking_uuid"],
// //         userUuid: json["user_uuid"],
// //         bookedOn: json["booked_on"],
// //         startDate: json["start_date"],
// //         endDate: json["end_date"],
// //         baseFare: json["base_fare"],
// //         amount: json["amount"],
// //         bookingAddress: json["booking_address"] == null
// //             ? null
// //             : BookingAddress.fromJson(json["booking_address"]),
// //         bookingSource: json["booking_source"],
// //         orderCancellationDate: json["order_cancellation_date"],
// //         orderCancellationReason: json["order_cancellation_reason"],
// //         orderCancelledBy: json["order_cancelled_by"],
// //         orderRescheduleDate: json["order_reschedule_date"],
// //         orderRescheduleReason: json["order_reschedule_reason"],
// //       );

// //   Map<String, dynamic> toJson() => {
// //         "id": id,
// //         "packages": packages?.toJson(),
// //         "discount": discount,
// //         "status": status,
// //         "status_logs": statusLogs == null
// //             ? []
// //             : List<dynamic>.from(statusLogs!.map((x) => x.toJson())),
// //         "booking_uuid": bookingUuid,
// //         "user_uuid": userUuid,
// //         "booked_on": bookedOn,
// //         "start_date": startDate,
// //         "end_date": endDate,
// //         "base_fare": baseFare,
// //         "amount": amount,
// //         "booking_address": bookingAddress?.toJson(),
// //         "booking_source": bookingSource,
// //         "order_cancellation_date": orderCancellationDate,
// //         "order_cancellation_reason": orderCancellationReason,
// //         "order_cancelled_by": orderCancelledBy,
// //         "order_reschedule_date": orderRescheduleDate,
// //         "order_reschedule_reason": orderRescheduleReason,
// //       };
// // }

// // class BookingAddress {
// //   String? address;
// //   String? landmark;
// //   String? saveAs;

// //   BookingAddress({
// //     this.address,
// //     this.landmark,
// //     this.saveAs,
// //   });

// //   factory BookingAddress.fromJson(Map<String, dynamic> json) => BookingAddress(
// //         address: json["address"],
// //         landmark: json["landmark"],
// //         saveAs: json["save_as"],
// //       );

// //   Map<String, dynamic> toJson() => {
// //         "address": address,
// //         "landmark": landmark,
// //         "save_as": saveAs,
// //       };
// // }

// // class Packages {
// //   String? id;
// //   String? partnerUuid;
// //   String? packageUuid;

// //   Packages({
// //     this.id,
// //     this.partnerUuid,
// //     this.packageUuid,
// //   });

// //   factory Packages.fromJson(Map<String, dynamic> json) => Packages(
// //         id: json["id"],
// //         partnerUuid: json["partner_uuid"],
// //         packageUuid: json["package_uuid"],
// //       );

// //   Map<String, dynamic> toJson() => {
// //         "id": id,
// //         "partner_uuid": partnerUuid,
// //         "package_uuid": packageUuid,
// //       };
// // }

// // class StatusLog {
// //   String? date;
// //   String? status;
// //   String? packageUuid;
// //   dynamic bookingUuid;

// //   StatusLog({
// //     this.date,
// //     this.status,
// //     this.packageUuid,
// //     this.bookingUuid,
// //   });

// //   factory StatusLog.fromJson(Map<String, dynamic> json) => StatusLog(
// //         date: json["date"],
// //         status: json["status"],
// //         packageUuid: json["package_uuid"],
// //         bookingUuid: json["booking_uuid"],
// //       );

// //   Map<String, dynamic> toJson() => {
// //         "date": date,
// //         "status": status,
// //         "package_uuid": packageUuid,
// //         "booking_uuid": bookingUuid,
// //       };
// // }



// // //----------


// // // class CancelBookingEntity {
// // //   String? code;
// // //   String? message;
// // //   Data? data;
// // //   bool? successStatus;

// // //   CancelBookingEntity({
// // //     this.code,
// // //     this.message,
// // //     this.data,
// // //     this.successStatus,
// // //   });
// // // }

// // // class Data {
// // //   String? id;
// // //   Packages? packages;
// // //   int? discount;
// // //   String? status;
// // //   List<StatusLog>? statusLogs;
// // //   String? bookingUuid;
// // //   String? userUuid;
// // //   DateTime? bookedOn;
// // //   DateTime? startDate;
// // //   DateTime? endDate;
// // //   int? baseFare;
// // //   int? amount;
// // //   BookingAddress? bookingAddress;
// // //   String? bookingSource;
// // //   DateTime? orderCancellationDate;
// // //   String? orderCancellationReason;
// // //   String? orderCancelledBy;
// // //   DateTime? orderRescheduleDate;
// // //   String? orderRescheduleReason;

// // //   Data({

// // //     this.id,
// // //     this.packages,
// // //     this.discount,
// // //     this.status,
// // //     this.statusLogs,
// // //     this.bookingUuid,
// // //     this.userUuid,
// // //     this.bookedOn,
// // //     this.startDate,
// // //     this.endDate,
// // //     this.baseFare,
// // //     this.amount,
// // //     this.bookingAddress,
// // //     this.bookingSource,
// // //     this.orderCancellationDate,
// // //     this.orderCancellationReason,
// // //     this.orderCancelledBy,
// // //     this.orderRescheduleDate,
// // //     this.orderRescheduleReason,
// // //   });
// // // }

// // // class BookingAddress {
// // //   String? address;
// // //   String? landmark;
// // //   String? saveAs;

// // //   BookingAddress({
// // //     this.address,
// // //     this.landmark,
// // //     this.saveAs,
// // //   });
// // // }

// // // class Packages {
// // //   String? id;
// // //   String? partnerUuid;
// // //   String? packageUuid;

// // //   Packages({
// // //     this.id,
// // //     this.partnerUuid,
// // //     this.packageUuid,
// // //   });
// // // }

// // // class StatusLog {
// // //   DateTime? date;
// // //   String? status;
// // //   String? packageUuid;
// // //   dynamic bookingUuid;

// // //   StatusLog({
// // //     this.date,
// // //     this.status,
// // //     this.packageUuid,
// // //     this.bookingUuid,
// // //   });
// // // }
