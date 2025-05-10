class CancelBookingRequest {
  final String bookingUuid;
  final String reason;
  final String cancellationDate;
  final String cancellationReason;
  final String cancelledBy;
  final bool fromApp;

  CancelBookingRequest({
    required this.bookingUuid,
    required this.reason,
    required this.cancellationDate,
    required this.cancellationReason,
    required this.cancelledBy,
    required this.fromApp,
  });

  Map<String, dynamic> toJson() {
    return {
      'booking_uuid': bookingUuid,
      'reason': reason,
      'cancellationDate': cancellationDate,
      'cancelledBy': cancelledBy,
      'fromApp': fromApp,
    };
  }
}
