class AddBookingRequest {
  Packages? packages;
  BookingAddress? bookingAddress;
  DateTime? startDate;
  DateTime? endDate;
  int? baseFare;
  int? amount;
  String? userId;
  int? discount;
  String? bookingSource;

  AddBookingRequest({
    this.packages,
    this.bookingAddress,
    this.userId,
    this.startDate,
    this.endDate,
    this.baseFare,
    this.amount,
    this.discount,
    this.bookingSource,
  });

  factory AddBookingRequest.fromJson(Map<String, dynamic> json) =>
      AddBookingRequest(
        packages: Packages.fromJson(json["packages"]),
        bookingAddress: BookingAddress.fromJson(json["booking_address"]),
        startDate: DateTime.parse(json["start_date"]),
        endDate: DateTime.parse(json["end_date"]),
        baseFare: json["base_fare"],
        amount: json["amount"],
        discount: json["discount"],
        bookingSource: json["booking_source"],
        userId: json["user_uuid"],
      );

  Map<String, dynamic> toJson() => {
        "packages": packages!.toJson(),
        "booking_address": bookingAddress!.toJson(),
        "start_date": startDate!.toIso8601String(),
        "end_date": endDate!.toIso8601String(),
        "base_fare": baseFare,
        "amount": amount,
        "discount": discount,
        "booking_source": bookingSource,
        "user_uuid": userId,
      };
}

class BookingAddress {
  String address;
  String landmark;
  String saveAs;

  BookingAddress({
    required this.address,
    required this.landmark,
    required this.saveAs,
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
  String id;
  String partnerUuid;
  String packageUuid;

  Packages({
    required this.id,
    required this.partnerUuid,
    required this.packageUuid,
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
