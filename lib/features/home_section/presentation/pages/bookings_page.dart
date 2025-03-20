import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/get_user_booking_bloc/get_user_booking_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/AppbarWedget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/bookings_page_widgets/canceled_packages.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/bookings_page_widgets/past_packages.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/bookings_page_widgets/upcoming_package.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';

import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_container_widget.dart';

class BookingsPage extends StatefulWidget {
  const BookingsPage({
    super.key,
  });

  @override
  State<BookingsPage> createState() => _BookingsPageState();
}

class _BookingsPageState extends State<BookingsPage> {
  int? _value = 0;
  final String userId = localDb.getString('id') ?? '';

  List<String> choiceChip = ['Upcoming', 'Past', 'Cancelled'];

  List<Widget> chipWidget = [
    const UpcomingPackage(),
    const PastPackages(),
    const CanceledPackages()
  ];

  @override
  void initState() {
    BlocProvider.of<GetUserBookingBloc>(context)
        .add(GetUserBooking(userId: userId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBarWidgetPrimary(
            text: 'My Bookings',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 5.0,
                  children: List<Widget>.generate(
                    3,
                    (int index) {
                      return ChoiceChip(
                        selectedColor: colorwhite,
                        color: const MaterialStatePropertyAll(colorwhite),
                        backgroundColor: colorwhite,
                        label: Text(choiceChip[index],
                            style: TextStyle(
                                decoration: _value == index
                                    ? TextDecoration.underline
                                    : null,
                                color: colorred)),
                        selected: _value == index,
                        onSelected: (bool selected) {
                          setState(() {
                            _value = selected ? index : _value;
                          });
                        },
                      );
                    },
                  ).toList(),
                ),
                sbox20,
                Column(
                  children: [
                    HeadingTextWidget(
                      text: choiceChip[_value!],
                      trailingButton: false,
                    ),
                    CustomContainerWidget(child: chipWidget[_value!]),
                  ],
                )

                // const HeadingTextWidget(
                //   text: 'Upcoming ',
                //   trailingButton: false,
                // ),
                // const UpcomingPackage(),
                // sbox20,
                // const HeadingTextWidget(
                //   text: 'Past ',
                //   trailingButton: false,
                // ),
                // const PastPackages(),
                // sbox20,
                // const HeadingTextWidget(
                //   text: 'Past ',
                //   trailingButton: false,
                // ),
                // const PastPackages(),
                // sbox20,
                // const HeadingTextWidget(
                //   text: 'Canceled',
                //   trailingButton: false,
                // ),
                // const CanceledPackages()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
