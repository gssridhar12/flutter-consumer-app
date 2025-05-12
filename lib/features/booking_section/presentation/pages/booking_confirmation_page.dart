// ignore_for_file: prefer_const_constructors

import 'dart:developer';
import 'package:add_2_calendar/add_2_calendar.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/cancel_booking/cancel_booking_bloc.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/cancel_booking/cancel_booking_state.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/get_booking_bloc/get_booking_bloc.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/booking_confirmation_widgets/booking_confirmation_tile.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/booking_confirmation_widgets/count_down_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/booking_confirmation_widgets/display_pdf_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/package_tab_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/select_date_bottom_widget.dart';
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

import '../../../packages_section/domain/entities/package_details_entitiy.dart';
import '../bloc/cancel_booking/cancel_booking_event.dart';
import '../bloc/reschedule_booking_bloc/reschedule_booking_bloc.dart';
import '../bloc/reschedule_booking_bloc/reschedule_booking_state.dart';

class BookingConfirmationPage extends StatefulWidget {
  const BookingConfirmationPage(
      {super.key, required this.bookingUuid,  this.transactionId});
  final String bookingUuid;
  final String ?transactionId;

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
  bool hasRescheduled = false;
  PackageDetailsEntity? packageDetailsNew;

  @override
  void initState() {
    context
        .read<GetBookingBloc>()
        .add(GetBooking(bookingUuid: widget.bookingUuid));
    debugPrint('widget.bookingUuid => ${widget.bookingUuid}');
    // '29de0e1e-67e2-437f-bae8-66559293bb7b'
    // cancelDuration = getCancelTime(bookedTime, eventTime);
    //  rescheduleDuration = getReScheduleTime(bookedTime, eventTime);
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
                            return const Text('Package Api Failed2');
                          } else if (state is GetPackageDetailsSuccess) {
                            final data = state.packageDetails.data;
                            packageDetailsNew = state.packageDetails;
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
                                  bottomWidget: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10.0),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                            width: width * 0.15,
                                            height: width * 0.15,
                                            child: CustomImage(
                                                borderRadius:
                                                    BorderRadius.circular(30),
                                                imageUrl: data?.profileImage
                                                        .toString() ??
                                                    "")),
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(data?.partnerName ?? "",
                                                  style: const TextStyle(
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      fontSize: 16)),
                                              sbox,
                                              Row(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  const Icon(
                                                    Icons.star,
                                                    size: 16,
                                                    color: colorred,
                                                  ),
                                                  //  data!.reviewAverages!
                                                  //       .overallAverage!
                                                  //       !=null
                                                  // ? Text(
                                                  //   data!.reviewAverages!
                                                  //       .overallAverage!
                                                  //       .toStringAsFixed(1),
                                                  //   style: const TextStyle(
                                                  //       fontSize: 16,
                                                  //       color: colorred,
                                                  //       fontWeight:
                                                  //           FontWeight.w500),
                                                  // ):'No reviews',
                                                  data!.reviewAverages!
                                                              .overallAverage !=
                                                          null
                                                      ? Text(
                                                          data.reviewAverages!
                                                              .overallAverage!
                                                              .toStringAsFixed(
                                                                  1),
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 16,
                                                            color: colorred,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        )
                                                      : Text(
                                                          '',
                                                          style:
                                                              const TextStyle(
                                                            fontSize: 16,
                                                            color: colorblack,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                        ),

                                                  Text(
                                                    '(${data.bookingCount.toString()} bookings)',
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
                                                iconColor:
                                                    WidgetStatePropertyAll(
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
                                ),
                              ],
                            );
                          }
                          return const Text('something went wrong');
                        },
                      ),
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
                                        data.booking!.orderRescheduleDate !=
                                                null
                                            ? '${DateFormat('EEEE').format(data.booking!.orderRescheduleDate!)}, ${data.booking!.orderRescheduleDate!.day.toString()}th ${DateFormat('MMMM').format(data.booking!.orderRescheduleDate!)}, ${data.booking!.orderRescheduleDate!.year.toString()}'
                                            : '${DateFormat('EEEE').format(data.booking!.startDate!)}, ${data.booking!.startDate!.day.toString()}th ${DateFormat('MMMM').format(data.booking!.startDate!)}, ${data.booking!.startDate!.year.toString()}',
                                       
                                        style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            color:
                                                colorblack.withOpacity(0.7))),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      debugPrint('object');
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
                                                  data.booking!.startDate!),
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
                                  Row(
                                    children: [
                                      Text(
                                          data.booking!.orderRescheduleDate !=
                                                  null
                                              ? DateFormat('h:mm a').format(data
                                                  .booking!
                                                  .orderRescheduleDate!)
                                              : DateFormat('h:mm a').format(
                                                  data.booking!.startDate!),
                                          style: TextStyle(
                                              fontWeight: FontWeight.w500,
                                              fontSize: 14,
                                              color:
                                                  colorblack.withOpacity(0.7))),
                                      Text(" to "),
                                      // Text(
                                      //     data.booking!.orderRescheduleDate != null
                                      //         ? DateFormat('h:mm a').format(data
                                      //             .booking!.orderRescheduleDate!
                                      //             .add(Duration(
                                      //                 minutes: int.parse(
                                      //                     packageDetailsNew!
                                      //                             .data!
                                      //                             .packageDetails!
                                      //                             .serviceSlotDuration ??
                                      //                         "0"))))
                                      //         : DateFormat('h:mm a').format(
                                      //             data.booking!.endDate!),
                                      //     style: TextStyle(
                                      //         fontWeight: FontWeight.w500,
                                      //         fontSize: 14,
                                      //         color:
                                      //             colorblack.withOpacity(0.7))),
                                    ],
                                  ),
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
                              Text(widget.transactionId??"",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                      color: colorblack.withOpacity(0.7))),
                              const Divider(),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          DisplayPdfViewerPage(
                                        apptitle: "Invoice",
                                        pdfUrl:
                                            "https://api.woofurs.com/partner-service/booking/generateInvoice/v2/${widget.bookingUuid}",
                                      ),
                                    ),
                                  );
                                },
                                child: Row(
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
                      // Cancel Booking Section
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
                                          height: width * 0.2,
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
                                        BlocListener<CancelBookingBloc,
                                            CancelBookingState>(
                                          listener: (context, state) {
                                            debugPrint('state ===>$state');

                                            if (state is CancelBookingSuccess) {
                                              setState(() {
                                                isCancelCardVisible = false;
                                                isRescheduleCardVisible = false;
                                              });
                                            }
                                          },
                                          child: InkWell(
                                            onTap: () {
                                              BlocProvider.of<
                                                          CancelBookingBloc>(
                                                      context)
                                                  .add(CancelBookingRequested(
                                                bookingUuid: widget.bookingUuid,
                                                reason: 'Canceled',
                                                cancellationdate:
                                                    DateTime.now(),
                                                cancellationReason: 'personal ',
                                                cancelledBy: 'User',
                                                fromApp: true,
                                              ));
                                            },
                                            child: Row(
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
                                                const Text(' Cancle Booking',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16,
                                                        color: colorblack,
                                                        decoration:
                                                            TextDecoration
                                                                .underline)),
                                              ],
                                            ),
                                          ),
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
                      // Reschedule Booking Section
                      Visibility(
                        // visible: isRescheduleCardVisible,
                        visible: isRescheduleCardVisible && !hasRescheduled,
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
                                          height: width * 0.2,
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
                                        BlocListener<RescheduleBookingBloc,
                                            RescheduleBookingState>(
                                          listener: (context, state) {
                                            if (state
                                                is RescheduleBookingSuccess) {
                                              setState(() {
                                                hasRescheduled = true;
                                              });
                                              if (data.booking!.bookingUuid !=
                                                  null) {
                                                debugPrint(
                                                    "--RescheduleSuccess--");
                                                context
                                                    .read<GetBookingBloc>()
                                                    .add(
                                                      GetBooking(
                                                        bookingUuid: data
                                                            .booking!
                                                            .bookingUuid!,
                                                      ),
                                                    );
                                              }
                                              // var packageUuid = state
                                              //     .rescheduleModel
                                              //     .data!
                                              //     .packages
                                              //     ?.packageUuid;
                                              // if (packageUuid != null) {
                                              //   context
                                              //       .read<PackageDetailsBloc>()
                                              //       .add(GetPackageDetails(
                                              //           packageUuid));
                                              // }
                                            }
                                          },
                                          child: InkWell(
                                            onTap: () {
                                              showModalBottomSheet(
                                                isScrollControlled: true,
                                                shape:
                                                    const RoundedRectangleBorder(
                                                  side: BorderSide(
                                                      color: Colors.white),
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  20),
                                                          topRight:
                                                              Radius.circular(
                                                                  20)),
                                                ),
                                                context: context,
                                                builder: (context) {
                                                  return SelectDateAndTimeBottomsheet(
                                                    isReschedule: true,
                                                    package: packageDetailsNew!,
                                                    startDateAndTime: data
                                                            .booking!
                                                            .orderRescheduleDate ??
                                                        data.booking!.startDate,
                                                    bookingUuid: data
                                                        .booking!.bookingUuid,
                                                    endDateAndTime: data
                                                        .booking!
                                                        .orderRescheduleDate
                                                        ?.add(Duration(
                                                            minutes: int.parse(
                                                                packageDetailsNew!
                                                                        .data!
                                                                        .packageDetails!
                                                                        .serviceSlotDuration ??
                                                                    "0"))),
                                                    selectedDay: data.booking!
                                                        .orderRescheduleDate,
                                                  );
                                                },
                                              );
                                            },
                                            child: Row(
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
                                                const Text(
                                                    ' Reschedule Booking',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16,
                                                        color: colorblack,
                                                        decoration:
                                                            TextDecoration
                                                                .underline)),
                                              ],
                                            ),
                                          ),
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
                                  'Chat with a Woofurs Executive',
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
            return const Text('something went wrong');
          },
        ),
      ),
    );
  }
}
