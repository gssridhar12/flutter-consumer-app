import 'dart:developer';
import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/get_booking_bloc/get_booking_bloc.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/booking_confirmation_widgets/booking_confirmation_tile.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/booking_confirmation_widgets/count_down_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/package_tab_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/utils/time_util.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/pages/chat_screen_custom.dart';
import 'package:flutter_consumer_app/features/packages_section/presentation/bloc/package_details_bloc/package_details_bloc.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/bloc/partner_profile_bloc/partner_profile_bloc.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/shared/widgets/secondary_appbar_widget.dart';
import 'package:flutter_consumer_app/utils/calender_launcher.dart';
import 'package:flutter_consumer_app/utils/map_launcher.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:intl/intl.dart';

class BookingConfirmationPage extends StatefulWidget {
  const BookingConfirmationPage({super.key, required this.bookingUuid});
  final String bookingUuid;

  @override
  State<BookingConfirmationPage> createState() =>
      _BookingConfirmationPageState();
}

class _BookingConfirmationPageState extends State<BookingConfirmationPage> {
  final CountDownController controller = CountDownController();

  // late DateTime bookedTime;
  // late DateTime eventTime;
  // DateTime bookedTime = DateTime.parse('2023-11-30T04:00:00');
  // DateTime eventTime = DateTime.parse('2023-11-30T05:00:00');

  // late int cancelDuration;
  // late int rescheduleDuration;
  bool isCancelCardVisible = true;
  bool isRescheduleCardVisible = true;

  @override
  void initState() {
    context
        .read<GetBookingBloc>()
        .add(GetBooking(bookingUuid: widget.bookingUuid));
    // '29de0e1e-67e2-437f-bae8-66559293bb7b'
    // cancelDuration = getCancelTime(bookedTime, eventTime);
    // rescheduleDuration = getReScheduleTime(bookedTime, eventTime);
    controller.start();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: AppBarWidgetSecondary(text: 'Booking Confirmation')),
        body: BlocBuilder<GetBookingBloc, GetBookingState>(
          builder: (context, state) {
            if (state is GetBookingLoading) {
              return SizedBox(
                height: width * 0.72,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else if (state is GetBookingFailed) {
              return const Text('Package Api Failed');
            } else if (state is GetBookingSuccess) {
              final data = state.getBookingEntity.data;
              context.read<PartnerProfileBloc>().add(
                  GetPartnerProfile(data!.booking!.packages!.partnerUuid!));
              log(data.toString());
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: padding),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      BlocBuilder<PackageDetailsBloc, PackageDetailsState>(
                          builder: (context, state) {
                        if (state is GetPackageDetailsLoading) {
                          return SizedBox(
                            height: width * 0.72,
                            child: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          );
                        } else if (state is GetPackageDetailsFailed) {
                          return const Text('Package Api Failed');
                        } else if (state is GetPackageDetailsSuccess) {
                          final data = state.packageDetails.data;
                          return Column(
                            children: [
                              BookingConfirmationPageTile(
                                title: 'Package',
                                icon: Icons.book_outlined,
                                bottomWidget: PackageTabWidget(
                                    package: state.packageDetails.data!),
                              ),
                              BookingConfirmationPageTile(
                                title: 'Service provided by',
                                icon: Icons.book_outlined,
                                bottomWidget: Row(
                                  children: [
                                    SizedBox(
                                        width: width * 0.12,
                                        height: width * 0.12,
                                        child: CustomImage(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            imageUrl: data!.packageDetails!
                                                    .packageCoverImage ??
                                                "")),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(data.partnerName ?? "",
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16)),
                                          Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              const Icon(
                                                Icons.star,
                                                size: 16,
                                                color: colorred,
                                              ),
                                              Text(
                                                data.reviewAverages!
                                                    .overallAverage
                                                    .toString(),
                                                style: const TextStyle(
                                                    fontSize: 16,
                                                    color: colorred,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              Text(
                                                '(${data.reviewAverages!.reviewCount} bookings)',
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    color: colorblack
                                                        .withOpacity(0.5),
                                                    fontWeight:
                                                        FontWeight.w100),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Spacer(),
                                    OutlinedButton.icon(
                                        style: const ButtonStyle(
                                            iconColor: MaterialStatePropertyAll(
                                                colorred)),
                                        onPressed: () {
                                          AppNavigation.pushNavigation(
                                              context,
                                              ChatScreenCustom(
                                                  partnerUuid: data
                                                      .packageDetails!
                                                      .partnerUuid!));
                                        },
                                        icon: const Icon(Icons.chat),
                                        label: const Text(
                                          'Chat',
                                          style: TextStyle(color: colorred),
                                        ))
                                  ],
                                ),
                              ),
                            ],
                          );
                        }
                        return const Text('something went wrong');
                      }),
                      BookingConfirmationPageTile(
                        title: 'Location',
                        icon: Icons.book_outlined,
                        bottomWidget: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sbox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Text(
                                      data.booking!.bookingAddress!.landmark ??
                                          "",
                                      style: const TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16)),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    MapLauncher.launchQuery(
                                        data.booking!.bookingAddress!.address ??
                                            "");
                                  },
                                  child: const Text('Go to Maps',
                                      style: TextStyle(
                                          fontSize: 15,
                                          decoration: TextDecoration.underline,
                                          color: colorred)),
                                ),
                              ],
                            ),
                            sbox5,
                            Text(data.booking!.bookingAddress!.address ?? "",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                    color: colorblack.withOpacity(0.7))),
                            sbox,
                          ],
                        ),
                      ),
                      BookingConfirmationPageTile(
                        title: 'Date and time',
                        icon: Icons.book_outlined,
                        bottomWidget: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 2, vertical: 10),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Text('Date',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16)),
                                  sboxW5,
                                  sboxW5,
                                  Expanded(
                                    flex: 4,
                                    child: Text(
                                        '${DateFormat('EEEE').format(data.booking!.bookedOn!)}, ${data.booking!.bookedOn!.day.toString()}th ${DateFormat('MMMM').format(data.booking!.bookedOn!)}, ${data.booking!.bookedOn!.year.toString()}',
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color:
                                                colorblack.withOpacity(0.7))),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      print('object');
                                      if (data.booking!.bookingAddress !=
                                          null) {
                                        Add2Calendar.addEvent2Cal(
                                          buildEvent(
                                              eventLocation: data
                                                      .booking!
                                                      .bookingAddress!
                                                      .address ??
                                                  "",
                                              eventTitle: data
                                                      .booking!
                                                      .bookingAddress!
                                                      .address ??
                                                  "",
                                              startDate:
                                                  data.booking!.bookedOn!),
                                        );
                                      }
                                    },
                                    child: const Text('Add to Calender',
                                        style: TextStyle(
                                            fontSize: 15,
                                            decoration:
                                                TextDecoration.underline,
                                            color: colorred)),
                                  ),
                                ],
                              ),
                              sbox5,
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const Text('Time',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16)),
                                  sboxW5,
                                  sboxW5,
                                  Text(
                                      DateFormat('h:mm a')
                                          .format(data.booking!.bookedOn!),
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: colorblack.withOpacity(0.7))),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      BookingConfirmationPageTile(
                        title: 'Payment Details',
                        icon: Icons.book_outlined,
                        bottomWidget: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 2, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('Total Cost',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  )),
                              sbox,
                              Text('Rs ${data.booking!.amount ?? ""}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: colorblack.withOpacity(0.7))),
                              const Divider(),
                              const Text('Mode of payment',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  )),
                              sbox,
                              const Text('PayUr',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  )),
                              sbox,
                              Text(
                                  '${DateFormat('EEEE').format(data.booking!.bookedOn!)}, ${data.booking!.bookedOn!.day.toString()}th ${DateFormat('MMMM').format(data.booking!.bookedOn!)}, ${data.booking!.bookedOn!.year.toString()},${DateFormat('h:mm a').format(data.booking!.bookedOn!)}',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: colorblack.withOpacity(0.7))),
                              const Divider(),
                              const Text('Transaction ID',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  )),
                              sbox,
                              Text('empty',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: colorblack.withOpacity(0.7))),
                              const Divider(),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Icon(
                                    Icons.receipt_long_outlined,
                                    size: 18,
                                    color: colorred,
                                  ),
                                  sboxW5,
                                  const Text('Get Invoice',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                          color: colorred,
                                          decoration:
                                              TextDecoration.underline)),
                                  const Spacer(),
                                  Icon(
                                    Icons.arrow_forward_ios_outlined,
                                    size: 16,
                                    color: colorblack.withOpacity(0.7),
                                  )
                                ],
                              ),
                              sbox,
                              Text(
                                'The invoice will be delivered to your email once the booking is completed',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: colorblack.withOpacity(0.7),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Visibility(
                        visible: isCancelCardVisible,
                        child: BookingConfirmationPageTile(
                            title: 'Cancel Booking',
                            trailingText: 'View cancellation policy',
                            icon: Icons.book_outlined,
                            bottomWidget: IntrinsicHeight(
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        sbox,
                                        SizedBox(
                                          width: width * 0.6,
                                          child: Text(
                                            'Refunds will only be processed if cancelled within 60 minutes of booking this package',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15,
                                              color:
                                                  colorblack.withOpacity(0.7),
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            const Icon(
                                              Icons.chat,
                                              size: 18,
                                              color: colorblack,
                                            ),
                                            sboxW5,
                                            const Text('Reschedule Booking',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                    color: colorblack,
                                                    decoration: TextDecoration
                                                        .underline)),
                                          ],
                                        ),
                                        sbox,
                                      ],
                                    ),
                                  ),
                                  CountDownWidget(
                                    width: width,
                                    cancelDuration: getCancelTime(
                                            data.booking!.bookedOn!,
                                            data.booking!.startDate!) *
                                        60,
                                    controller: controller,
                                    onComplete: () {
                                      WidgetsBinding.instance
                                          .addPostFrameCallback((_) {
                                        setState(() {
                                          isCancelCardVisible = false;
                                        });
                                      });
                                    },
                                  ),
                                ],
                              ),
                            )),
                      ),
                      Visibility(
                        visible: isRescheduleCardVisible,
                        child: BookingConfirmationPageTile(
                            title: 'Reschedule Booking',
                            trailingText: 'View reshedulling policy',
                            icon: Icons.book_outlined,
                            bottomWidget: IntrinsicHeight(
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        sbox,
                                        SizedBox(
                                          width: width * 0.6,
                                          child: Text(
                                            'Reschedules will only be processed if requested within 60 minutes of booking this package',
                                            style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 15,
                                              color:
                                                  colorblack.withOpacity(0.7),
                                            ),
                                          ),
                                        ),
                                        const Spacer(),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            const Icon(
                                              Icons.chat,
                                              size: 18,
                                              color: colorblack,
                                            ),
                                            sboxW5,
                                            const Text('Reschedule Booking',
                                                style: TextStyle(
                                                    fontWeight: FontWeight.w600,
                                                    fontSize: 16,
                                                    color: colorblack,
                                                    decoration: TextDecoration
                                                        .underline)),
                                          ],
                                        ),
                                        sbox,
                                      ],
                                    ),
                                  ),
                                  CountDownWidget(
                                    width: width,
                                    cancelDuration: getReScheduleTime(
                                            data.booking!.bookedOn!,
                                            data.booking!.startDate!) *
                                        60,
                                    controller: controller,
                                    onComplete: () {
                                      WidgetsBinding.instance
                                          .addPostFrameCallback((_) {
                                        setState(() {
                                          isRescheduleCardVisible = false;
                                        });
                                      });
                                    },
                                  ),
                                ],
                              ),
                            )),
                      ),
                      BookingConfirmationPageTile(
                        title: 'Help',
                        icon: Icons.book_outlined,
                        bottomWidget: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sbox,
                            SizedBox(
                              width: width * 0.6,
                              child: Text(
                                'Have further questions or need any kind of help and support?',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                  color: colorblack.withOpacity(0.7),
                                ),
                              ),
                            ),
                            sbox,
                            sbox,
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Icon(
                                  Icons.chat,
                                  size: 18,
                                  color: colorred,
                                ),
                                sboxW5,
                                const Text(
                                  'Chat with a Megmo Executive',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                      color: colorred,
                                      decoration: TextDecoration.underline),
                                ),
                              ],
                            ),
                            sbox,
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            }
            return const Text('sometvcvccvcvhing went wrong');
          },
        ),
      ),
    );
  }
}
