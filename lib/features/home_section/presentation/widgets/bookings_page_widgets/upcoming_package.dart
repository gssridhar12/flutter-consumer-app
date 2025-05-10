// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/get_user_booking_bloc/get_user_booking_bloc.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/pages/booking_confirmation_page.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/pages/chat_screen_custom.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:flutter_consumer_app/shared/widgets/icon_button_widget.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';


class UpcomingPackage extends StatelessWidget {
  const UpcomingPackage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return BlocBuilder<GetUserBookingBloc, GetUserBookingState>(
      builder: (context, state) {
        if (state is GetUserBookingFailed) {
          return const Text('server failed');
        } else if (state is GetUserBookingLoading) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.8,
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (state is GetUserBookingSuccess) {
          final now = DateTime.now();
          final packages =
              state.getUserBookingEntity.data!.userBookings!.where((element) {
            final startDate = element.bookingDetails!.startDate!;
            // Check if the start date is after today or if it's today but at or before the current time
            return startDate.isAfter(now) ||
                (startDate.year == now.year &&
                    startDate.month == now.month &&
                    startDate.day == now.day &&
                    startDate.isBefore(now));
          }).toList();
            // final UpconingBookingid=
          // final packages = state.getUserBookingEntity.data!.userBookings!
          //     .where((element) =>
          //         element.bookingDetails!.startDate!.isAfter(DateTime.now()))
          //     .toList();
          return packages.isNotEmpty
              ? ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: packages.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(horizontal: padding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        sbox,
                        InkWell(
                          onTap: () {
                            if (packages[index].package!.packageUuid != null) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => 
                                  BookingConfirmationPage(bookingUuid: state.getUserBookingEntity.data!.userBookings![index].bookingDetails!.bookingUuid.toString(),)
                                  // BookingDetailsPage(
                                  //     packageUuid: packages[index]
                                  //         .package!
                                  //         .packageUuid!),
                                ),
                              );
                            }
                          },
                          child: Container(
                            width: width,
                            // height: width * 0.5,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 5,
                                      spreadRadius: 1,
                                      color: colorblack.withOpacity(0.1))
                                ],
                                borderRadius: BorderRadius.circular(12),
                                color: colorwhite),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    sbox5,
                                    Padding(
                                      padding: EdgeInsets.only(
                                        top: padding,
                                        left: padding,
                                      ),
                                      child: Text(
                                        packages[index]
                                            .package!
                                            .packageName
                                            .toString(),
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: colorblack,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(padding),
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.star,
                                            size: 15,
                                            color: colorred,
                                          ),
                                          Text(
                                            (packages[index]
                                                        .packageReviewAverage ??
                                                    0.0)
                                                .toStringAsFixed(1),
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: colorred,
                                                fontWeight: FontWeight.w500),
                                          ),
                                          Text(
                                            '(${packages[index].packageBookingCount} bookings)',
                                            style: TextStyle(
                                                fontSize: 15,
                                                color:
                                                    colorblack.withOpacity(0.5),
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    ),
                                    sbox5,
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(left: padding),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'Scheduled for ',
                                            style: TextStyle(
                                                fontSize: 14,
                                                color:
                                                    colorblack.withOpacity(0.5),
                                                fontWeight: FontWeight.w400),
                                          ),
                                          sbox5,
                                          Text(
                                            '${DateFormat('EEEE').format(packages[index].bookingDetails!.startDate!)}, ${packages[index].bookingDetails!.startDate!.day.toString()}th ${DateFormat('MMMM').format(packages[index].bookingDetails!.startDate!)}, ${packages[index].bookingDetails!.startDate!.year.toString()},${DateFormat('h:mm a').format(packages[index].bookingDetails!.startDate!)}',
                                           
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: colorblack,
                                                fontWeight: FontWeight.w400),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                Stack(children: [
                                  Padding(
                                      padding: const EdgeInsets.all(padding),
                                      child: CustomImage(
                                        width: 100,
                                        height: 100,
                                        imageUrl: packages[index]
                                            .package!
                                            .packageCoverImage
                                            .toString(),
                                        borderRadius: BorderRadius.circular(12),
                                      )),
                                  Positioned(
                                    top: 75,
                                    right: 15,
                                    left: 15,
                                    bottom: 5,
                                    child: Container(
                                      width: width * 0.2,
                                      height: width * 0.08,
                                      decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 5,
                                                spreadRadius: 1,
                                                color:
                                                    colorblack.withOpacity(0.1))
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(12),
                                          color: colorwhite),
                                      child: Center(
                                          child: Text(
                                        '₹ ${packages[index].bookingDetails!.amount!}',
                                        style: const TextStyle(
                                            color: colorblack, fontSize: 12),
                                      )),
                                    ),
                                  ),
                                ])
                              ],
                            ),
                          ),
                        ),
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: padding, horizontal: 0),
                              child: Row(
                                children: [
                                  CustomImage(
                                      height: 50,
                                      width: 50,
                                      imageUrl: packages[index].profileImage!,
                                      borderRadius: BorderRadius.circular(30)),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: padding),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          packages[index].profileName!,
                                          style: const TextStyle(
                                              fontSize: 12,
                                              color: colorblack,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.star,
                                              size: 14,
                                              color: colorred,
                                            ),
                                            Text(
                                              packages[index]
                                                  .profileReviewAverage!
                                                  .toStringAsFixed(1),
                                              style: const TextStyle(
                                                  fontSize: 14,
                                                  color: colorred,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            Text(
                                              '(${packages[index].megmoGigsCount} gigs)',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: colorblack
                                                      .withOpacity(0.5),
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Spacer(),
                                  SizedBox(
                                    width: 85,
                                    child: IconButtonWidget(
                                      buttonName: 'Chat',
                                      onTap: () {
                                        AppNavigation.pushNavigation(
                                            context,
                                            ChatScreenCustom(
                                              partnerUuid: packages[index]
                                                  .bookingDetails!
                                                  .packages!
                                                  .partnerUuid!,
                                            ));
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        height: 75.h,
                        child:
                            const Center(child: Text('You have no booking'))),
                  ],
                );
        }
        return const Text('something went wrong');
      },
    );
  }
}
