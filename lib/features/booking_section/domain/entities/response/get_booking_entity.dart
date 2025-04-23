class GetBookingEntity {
  final String? code;
  final String? message;
  final Data? data;
  final bool? successStatus;

  GetBookingEntity({
    this.code,
    this.message,
    this.data,
    this.successStatus,
  });
}

class Data {
  final Booking? booking;
  final ReviewAverages? reviewAverages;

  Data({
    this.booking,
    this.reviewAverages,
  });
}

class Booking {
  final String? id;
  final Packages? packages;
  final double? discount;
  final String? status;
  final List<StatusLog>? statusLogs;
  final String? bookingUuid;
  final String? userUuid;
  final DateTime? bookedOn;
  final DateTime? startDate;
  final DateTime? endDate;
  final double? baseFare;
  final double? amount;
  final BookingAddress? bookingAddress;
  final String? bookingSource;

  Booking({
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
  });
}

class BookingAddress {
  final String? address;
  final String? landmark;
  final String? saveAs;

  BookingAddress({
    this.address,
    this.landmark,
    this.saveAs,
  });
}

class Packages {
  final String? id;
  final String? partnerUuid;
  final String? packageUuid;

  Packages({
    this.id,
    this.partnerUuid,
    this.packageUuid,
  });
}

class StatusLog {
  final DateTime? date;
  final String? status;
  final String? packageUuid;
  final dynamic bookingUuid;

  StatusLog({
    this.date,
    this.status,
    this.packageUuid,
    this.bookingUuid,
  });
}

class ReviewAverages {
  final dynamic id;
  final double? communication;
  final double? serviceDescribed;
  final double? recommended;
  final double? overallAverage;

  ReviewAverages({
    this.id,
    this.communication,
    this.serviceDescribed,
    this.recommended,
    this.overallAverage,
  });
}
