// To parse this JSON data, do
//
//     final rescheduleBookingRequest = rescheduleBookingRequestFromJson(jsonString);

import 'dart:convert';

RescheduleBookingRequest rescheduleBookingRequestFromJson(String str) =>
    RescheduleBookingRequest.fromJson(json.decode(str));

String rescheduleBookingRequestToJson(RescheduleBookingRequest data) =>
    json.encode(data.toJson());

class RescheduleBookingRequest {
  String bookingUuid;
  String reason;
  DateTime rescheduleDate;
  DateTime currentDate;

  RescheduleBookingRequest({
    required this.bookingUuid,
    required this.reason,
    required this.rescheduleDate,
    required this.currentDate,
  });

  factory RescheduleBookingRequest.fromJson(Map<String, dynamic> json) =>
      RescheduleBookingRequest(
        bookingUuid: json["booking_uuid"],
        reason: json["reason"],
        rescheduleDate: DateTime.parse(json["rescheduleDate"]),
        currentDate: DateTime.parse(json["currentDate"]),
      );

  Map<String, dynamic> toJson() => {
        "booking_uuid": bookingUuid,
        "reason": reason,
        "rescheduleDate": rescheduleDate.toIso8601String(),
        "currentDate": currentDate.toIso8601String(),
      };
}
