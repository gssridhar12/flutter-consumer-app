// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/pages/booking_confirmation_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/home_page.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/shared/widgets/secondary_appbar_widget.dart';

class PaymentSuccessPage extends StatelessWidget {
  const PaymentSuccessPage({super.key, required this.bookingUuid, required this.transactionId});
  final String bookingUuid;
  final String transactionId;

  @override
  Widget build(BuildContext context) {
    // print(bookingUuid);
    final width = MediaQuery.of(context).size.width;

    return ColoredSafeArea(
      color: colorred,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBarWidgetSecondary(
            iconColor: colorwhite,
            backgroundColor: colorred,
            text: 'Checkout',
            textcolor: colorwhite,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 350,
              ),
              Text('Successfull Payment  ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              sbox,
              const Text('Discover more Services or check your booking details',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )),
              sbox20,
              ButtonWidget(
                navigation: BookingConfirmationPage(bookingUuid: bookingUuid, transactionId: transactionId,),
                text: 'View booking details',
                width: width,
              ),
              ButtonWidget(
                text: 'Browse more services',
                width: width,
                navigation: const HomePage(),
                buttonColor: colorred,
                color: colorwhite,
                borderColor: colorred,
              )
            ],
          ),
        ),
      ),
    );
  }
}
