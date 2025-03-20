import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/request/add_order_request.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/add_order_bloc/add_order_bloc.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/pages/payment_failed_page.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/pages/payment_success_page.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class ProceedToPaymentPage extends StatefulWidget {
  const ProceedToPaymentPage(
      {super.key, required this.bookingUuid, required this.packageCost});

  final String bookingUuid;
  final double packageCost;

  @override
  State<ProceedToPaymentPage> createState() => _ProceedToPaymentPageState();
}

class _ProceedToPaymentPageState extends State<ProceedToPaymentPage> {
  final Razorpay razorpay = Razorpay();

  void openCheckout() {
    var options = {
      'key': 'rzp_test_bY8aYSo8V8FGAl',
      'amount': widget.packageCost * 100,
      'name': '',
      'description': 'asdfasdf',
      'prefill': {'contact': '', 'email': ''}
    };

    try {
      razorpay.open(options);
    } catch (e) {
      log(e.toString());
    }
  }

  void handlePaymentSuccess(PaymentSuccessResponse response) {
    try {
      print(response.toString());
      context.read<AddOrderBloc>().add(AddOrder(
          addOrderRequest: AddOrderRequest(
              amount: widget.packageCost.toInt(),
              currency: 'INR',
              partAmount: true,
              bookingUuid: widget.bookingUuid,
              paymentType: 'UPI',
              bookingSource: "APP")));
      AppNavigation.pushAndRemoveUntilNavigation(
          context,
          PaymentSuccessPage(
            bookingUuid: widget.bookingUuid,
          ));
    } catch (e) {
      log(e.toString());
    }
  }

  void handlePaymentOnError(PaymentFailureResponse response) {
    try {
      print(response.message);
      AppNavigation.pushAndRemoveUntilNavigation(
          context, const PaymentFailedPage());
    } catch (e) {
      log(e.toString());
    }
  }

  void handleExternalWallet(ExternalWalletResponse response) {}

  @override
  void initState() {
    try {
      openCheckout();
    } catch (e) {
      log(e.toString());
    }

    razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccess);
    razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentOnError);
    razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWallet);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
          backgroundColor: bggray,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Center(
                  child: CircularProgressIndicator(color: colorred),
                ),
                sbox20,
                const Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Our system is processing your booking.Please wait a moment',
                    style: TextStyle(fontSize: 16),
                  ),
                )
              ],
            ),
          )
          //  Stack(children: [
          //   Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: padding20),
          //     child: SingleChildScrollView(
          //       physics: const BouncingScrollPhysics(),
          //       child: Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Padding(
          //             padding: const EdgeInsets.only(
          //                 top: 0.0, left: padding20 + padding20),
          //             child: Text(
          //               'Amount to Pay : Rs 12,900',
          //               style: TextStyle(
          //                   fontSize: 15, color: colorblack.withOpacity(0.7)),
          //             ),
          //           ),
          //           sbox,
          //           BookingPageTile(
          //             isBorder: true,
          //             title: 'Debit or Credit card',
          //             isTopCurved: true,
          //             bottomWidget: const ProceedtoPaymentListTileWidget(
          //               title: 'Add a card',
          //               leadingIcon: Icons.credit_card,
          //             ),
          //             onTap: () {
          //               showModalBottomSheet(
          //                 isScrollControlled: true,
          //                 shape: const RoundedRectangleBorder(
          //                   side: BorderSide(color: Colors.white),
          //                   borderRadius: BorderRadius.only(
          //                     topLeft: Radius.circular(20),
          //                     topRight: Radius.circular(20),
          //                   ),
          //                 ),
          //                 context: context,
          //                 builder: (context) {
          //                   return const AddNewCardBottomsheet();
          //                 },
          //               );
          //             },
          //           ),
          //           const BookingPageTile(
          //             isBorder: false,
          //             title: 'Wallet',
          //             bottomWidget: Column(
          //               children: [
          //                 ProceedtoPaymentListTileWidget(
          //                   title: 'Paytm',
          //                   leadingIcon: Icons.credit_card,
          //                 ),
          //                 ProceedtoPaymentListTileWidget(
          //                   title: 'Amazon Pay',
          //                   leadingIcon: Icons.credit_card,
          //                 ),
          //               ],
          //             ),
          //           ),
          //           const BookingPageTile(
          //             isBorder: false,
          //             title: 'UPI',
          //             bottomWidget: Column(
          //               children: [
          //                 ProceedtoPaymentListTileWidget(
          //                   title: 'Google Pay',
          //                   leadingIcon: Icons.credit_card,
          //                 ),
          //                 ProceedtoPaymentListTileWidget(
          //                   title: 'Pay via another UPI ID',
          //                   leadingIcon: Icons.credit_card,
          //                 ),
          //               ],
          //             ),
          //           ),
          //           const BookingPageTile(
          //             isBorder: true,
          //             title: 'Netbanking',
          //             isTopCurved: true,
          //             bottomWidget: ProceedtoPaymentListTileWidget(
          //               title: 'See all banks',
          //               leadingIcon: Icons.account_balance_outlined,
          //             ),
          //           ),
          //           const BookingPageTile(
          //             isTopCurved: false,
          //             isBorder: true,
          //             title: 'Pay after service',
          //             bottomWidget: Column(
          //               children: [
          //                 ProceedtoPaymentListTileWidget(
          //                   title: 'Pay Online after service',
          //                   leadingIcon: Icons.credit_score_outlined,
          //                 ),
          //                 ProceedtoPaymentListTileWidget(
          //                   title: 'Pay with cash after service',
          //                   leadingIcon: Icons.payments_outlined,
          //                 ),
          //               ],
          //             ),
          //           ),
          //           sbox20,
          //           sbox20,
          //           sbox20,
          //           sbox20,
          //         ],
          //       ),
          //     ),
          //   ),
          //   Positioned(
          //     bottom: 0,
          //     right: 0,
          //     left: 0,
          //     child: Stack(
          //       children: [
          //         Container(
          //           height: 70,
          //           decoration: const BoxDecoration(color: colorwhite),
          //         ),
          //         Positioned(
          //           bottom: 0,
          //           left: 20,
          //           right: 20,
          //           child: ButtonWidget(
          //             text: 'Proceed to Payment',
          //             width: width,
          //             navigation: const PaymentSuccessPage(),
          //           ),
          //         ),
          //       ],
          //     ),
          //   ),
          // ]),
          ),
    );
  }
}
