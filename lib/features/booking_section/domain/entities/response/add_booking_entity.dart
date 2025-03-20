class AddBookingEntity {
    final String? code;
    final String? message;
    final Data? data;
    final bool? successStatus;

    AddBookingEntity({
        this.code,
        this.message,
        this.data,
        this.successStatus,
    });
}

class Data {
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
    final String? packageUuid;

    Packages({
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
