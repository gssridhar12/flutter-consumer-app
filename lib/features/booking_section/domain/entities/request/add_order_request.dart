class AddOrderRequest {
    int amount;
    String currency;
    bool partAmount;
    String bookingUuid;
    String paymentType;
    String bookingSource;

    AddOrderRequest({
        required this.amount,
        required this.currency,
        required this.partAmount,
        required this.bookingUuid,
        required this.paymentType,
        required this.bookingSource,
    });

    factory AddOrderRequest.fromJson(Map<String, dynamic> json) => AddOrderRequest(
        amount: json["amount"],
        currency: json["currency"],
        partAmount: json["part_amount"],
        bookingUuid: json["booking_uuid"],
        paymentType: json["paymentType"],
        bookingSource: json["booking_source"],
    );

    Map<String, dynamic> toJson() => {
        "amount": amount,
        "currency": currency,
        "part_amount": partAmount,
        "booking_uuid": bookingUuid,
        "paymentType": paymentType,
        "booking_source": bookingSource,
    };
}
