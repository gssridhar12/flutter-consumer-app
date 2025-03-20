import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/pages/booking_details_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/home_page.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/shared/widgets/secondary_appbar_widget.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';

class PaymentFailedPage extends StatelessWidget {
  const PaymentFailedPage({super.key});

  @override
  Widget build(BuildContext context) {
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
              const Text('Payment failed',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              sbox,
              const Text(
                  'The transaction failed due to a technical error. If your money was debited, you will get a refund within the nest 24 hours.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  )),
              sbox20,
              ButtonWidget(
                onPressed: () {
                  AppNavigation.pushRepacementNavigation(
                      context, const BookingDetailsPage(
                    packageUuid: 'b713b5ea-bb30-4960-a8cf-0d9661d002a5'));
                },
               
                text: 'Retry',
                width: width,
              ),
              ButtonWidget(
                text: 'Go to home',
                onPressed: () {
                  AppNavigation.pushAndRemoveUntilNavigation(
                      context, const HomePage());
                },
                width: width,
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
