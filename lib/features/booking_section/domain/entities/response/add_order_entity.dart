

class AddOrderEntity {
    String code;
    String message;
    Data data;
    bool successStatus;

    AddOrderEntity({
        required this.code,
        required this.message,
        required this.data,
        required this.successStatus,
    });

    factory AddOrderEntity.fromJson(Map<String, dynamic> json) => AddOrderEntity(
        code: json["code"],
        message: json["message"],
        data: Data.fromJson(json["data"]),
        successStatus: json["success_status"],
    );

    Map<String, dynamic> toJson() => {
        "code": code,
        "message": message,
        "data": data.toJson(),
        "success_status": successStatus,
    };
}

class Data {
    String id;
    String razorpayOrderId;
    String entity;
    double amount;
    double amountPaid;
    String currency;
    String receipt;
    String status;
    double attempts;
    dynamic notes;
    DateTime createdAt;
    dynamic itinararyId;
    dynamic razorpayCheckoutOrderId;
    dynamic razorpayCheckoutPaymentId;
    String paymentType;
    List<StatusLog> statusLog;
    double amountDue;
    String bookingUuid;
    dynamic bookingId;

    Data({
        required this.id,
        required this.razorpayOrderId,
        required this.entity,
        required this.amount,
        required this.amountPaid,
        required this.currency,
        required this.receipt,
        required this.status,
        required this.attempts,
        required this.notes,
        required this.createdAt,
        required this.itinararyId,
        required this.razorpayCheckoutOrderId,
        required this.razorpayCheckoutPaymentId,
        required this.paymentType,
        required this.statusLog,
        required this.amountDue,
        required this.bookingUuid,
        required this.bookingId,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        razorpayOrderId: json["razorpay_order_id"],
        entity: json["entity"],
        amount: json["amount"],
        amountPaid: json["amount_paid"],
        currency: json["currency"],
        receipt: json["receipt"],
        status: json["status"],
        attempts: json["attempts"],
        notes: json["notes"],
        createdAt: DateTime.parse(json["created_at"]),
        itinararyId: json["itinarary_id"],
        razorpayCheckoutOrderId: json["razorpay_checkout_order_id"],
        razorpayCheckoutPaymentId: json["razorpay_checkout_payment_id"],
        paymentType: json["payment_type"],
        statusLog: List<StatusLog>.from(json["status_log"].map((x) => StatusLog.fromJson(x))),
        amountDue: json["amount_due"],
        bookingUuid: json["booking_uuid"],
        bookingId: json["booking_id"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "razorpay_order_id": razorpayOrderId,
        "entity": entity,
        "amount": amount,
        "amount_paid": amountPaid,
        "currency": currency,
        "receipt": receipt,
        "status": status,
        "attempts": attempts,
        "notes": notes,
        "created_at": createdAt.toIso8601String(),
        "itinarary_id": itinararyId,
        "razorpay_checkout_order_id": razorpayCheckoutOrderId,
        "razorpay_checkout_payment_id": razorpayCheckoutPaymentId,
        "payment_type": paymentType,
        "status_log": List<dynamic>.from(statusLog.map((x) => x.toJson())),
        "amount_due": amountDue,
        "booking_uuid": bookingUuid,
        "booking_id": bookingId,
    };
}

class StatusLog {
    DateTime date;
    String status;
    double amountPaid;
    double amountDue;
    dynamic receipt;
    double attempts;
    String paymentId;
    String refundId;
    String methode;
    String paymentFor;

    StatusLog({
        required this.date,
        required this.status,
        required this.amountPaid,
        required this.amountDue,
        required this.receipt,
        required this.attempts,
        required this.paymentId,
        required this.refundId,
        required this.methode,
        required this.paymentFor,
    });

    factory StatusLog.fromJson(Map<String, dynamic> json) => StatusLog(
        date: DateTime.parse(json["date"]),
        status: json["status"],
        amountPaid: json["amount_paid"],
        amountDue: json["amount_due"],
        receipt: json["receipt"],
        attempts: json["attempts"],
        paymentId: json["payment_id"],
        refundId: json["refund_id"],
        methode: json["methode"],
        paymentFor: json["payment_for"],
    );

    Map<String, dynamic> toJson() => {
        "date": date.toIso8601String(),
        "status": status,
        "amount_paid": amountPaid,
        "amount_due": amountDue,
        "receipt": receipt,
        "attempts": attempts,
        "payment_id": paymentId,
        "refund_id": refundId,
        "methode": methode,
        "payment_for": paymentFor,
    };
}
