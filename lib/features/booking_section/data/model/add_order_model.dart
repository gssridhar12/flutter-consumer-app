import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/add_order_entity.dart';

class AddOrderModel extends AddOrderEntity{
  AddOrderModel({
    required String code,
    required String message,
    required DataModel data,
    required bool successStatus,
  }) : super(
          code: code,
          message: message,
          data: data,
          successStatus: successStatus,
        );

  factory AddOrderModel.fromJson(Map<String, dynamic> json) =>
      AddOrderModel(
        code: json["code"],
        message: json["message"],
        data: DataModel.fromJson(json["data"]),
        successStatus: json["success_status"],
      );
}

class DataModel extends Data {
  DataModel({
    required String id,
    required String razorpayOrderId,
    required String entity,
    required double amount,
    required double amountPaid,
    required String currency,
    required String receipt,
    required String status,
    required double attempts,
    required dynamic notes,
    required DateTime createdAt,
    required dynamic itinararyId,
    required dynamic razorpayCheckoutOrderId,
    required dynamic razorpayCheckoutPaymentId,
    required String paymentType,
    required List<StatusLogModel> statusLog,
    required double amountDue,
    required String bookingUuid,
    required dynamic bookingId,
  }) : super(
          id: id,
          razorpayOrderId: razorpayOrderId,
          entity: entity,
          amount: amount,
          amountPaid: amountPaid,
          currency: currency,
          receipt: receipt,
          status: status,
          attempts: attempts,
          notes: notes,
          createdAt: createdAt,
          itinararyId: itinararyId,
          razorpayCheckoutOrderId: razorpayCheckoutOrderId,
          razorpayCheckoutPaymentId: razorpayCheckoutPaymentId,
          paymentType: paymentType,
          statusLog: statusLog,
          amountDue: amountDue,
          bookingUuid: bookingUuid,
          bookingId: bookingId,
        );

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
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
        statusLog: List<StatusLogModel>.from(
            json["status_log"].map((x) => StatusLogModel.fromJson(x))),
        amountDue: json["amount_due"],
        bookingUuid: json["booking_uuid"],
        bookingId: json["booking_id"],
      );
}

class StatusLogModel extends StatusLog {
  StatusLogModel({
    required DateTime date,
    required String status,
    required double amountPaid,
    required double amountDue,
    required dynamic receipt,
    required double attempts,
    required String paymentId,
    required String refundId,
    required String methode,
    required String paymentFor,
  }) : super(
          date: date,
          status: status,
          amountPaid: amountPaid,
          amountDue: amountDue,
          receipt: receipt,
          attempts: attempts,
          paymentId: paymentId,
          refundId: refundId,
          methode: methode,
          paymentFor: paymentFor,
        );

  factory StatusLogModel.fromJson(Map<String, dynamic> json) =>
      StatusLogModel(
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
}