// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/request/add_booking_request.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/add_booking_bloc/add_booking_bloc.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/cubits/address_cubit/address_cubit.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/cubits/coupon_cubit/coupon_cubit.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/cubits/select_date_cubit/select_date_cubit.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/pages/payment_failed_page.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/pages/proceed_to_payment_page.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/booking_confirmation_text_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/booking_page_tile.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/package_tile_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/payment_summary_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/select_address_bottomsheet_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/select_coupon_bottomsheet_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/select_date_bottom_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/service_agreement_bottomsheet_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:flutter_consumer_app/features/packages_section/presentation/bloc/package_details_bloc/package_details_bloc.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/shared/widgets/secondary_appbar_widget.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class BookingDetailsPage extends StatefulWidget {
  const BookingDetailsPage({super.key, required this.packageUuid});

  final String packageUuid;

  @override
  State<BookingDetailsPage> createState() => _BookingDetailsPageState();
}

class _BookingDetailsPageState extends State<BookingDetailsPage> {
  bool isAddressChanged = false;
  bool isDateChanged = false;
  bool isCouponAdded = false;
  bool isTermsAgreed = false;
  bool isAgreed = false;
  double totalAmounts = 0;

  late AddBookingRequest addBookingRequest = AddBookingRequest(
      userId: '',
      packages: Packages(
        id: '',
        partnerUuid: '',
        packageUuid: '',
      ),
      bookingAddress: BookingAddress(address: "", landmark: "", saveAs: ""),
      startDate: DateTime.now(),
      endDate: DateTime.now(),
      //createdOn:,
      baseFare: 0,
      amount: 0,
      discount: 0,
      bookingSource: "App");

  @override
  void initState() {
    // initSharedPref();
    context
        .read<PackageDetailsBloc>()
        .add(GetPackageDetails(widget.packageUuid));
    BlocProvider.of<UserBloc>(context).add(const GetUser());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (isTermsAgreed != false &&
        isAddressChanged != false &&
        isDateChanged != false) {
      setState(() {
        isAgreed = true;
      });
    } else {
      setState(() {
        isAgreed = false;
      });
    }
    debugPrint('isAgreed ===> $isAgreed');
    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: bggray,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBarWidgetSecondary(
            text: 'Booking details',
          ),
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: padding20),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: BlocBuilder<PackageDetailsBloc, PackageDetailsState>(
                  builder: (context, state) {
                    if (state is GetPackageDetailsLoading) {
                      return SizedBox(
                        height: 100.h,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    } else if (state is GetPackageDetailsFailed) {
                      return const Text('Package Api Failed');
                    } else if (state is GetPackageDetailsSuccess) {
                      final data = state.packageDetails.data;
                      addBookingRequest.amount = state
                          .packageDetails.data!.packageDetails!.packageCost!
                          .toInt();
                      addBookingRequest.userId = localDb.getString('id')!;
                      addBookingRequest.packages = Packages(
                        id: data!.packageDetails!.id!,
                        partnerUuid: data.packageDetails!.partnerUuid!,
                        packageUuid: data.packageDetails!.packageUuid!,
                      );
                      final packagedetails1 = state.packageDetails;
                      return Column(
                        children: [
                          sbox20,
                          BookingPageTile(
                            isBorder: true,
                            isTopCurved: true,
                            title: 'Package',
                            icon: Icons.book_outlined,
                            bottomWidget:
                                PackageTileWidget(package: packagedetails1),
                          ),
                          BlocBuilder<AddressCubit, AddressCubitState>(
                            builder: (context, addrstate) {
                              if (addrstate is AddressAdded) {
                                addBookingRequest.bookingAddress!.landmark =
                                    addrstate.address.landmark ?? "";
                                addBookingRequest.bookingAddress!.saveAs =
                                    addrstate.address.addressType ?? "";
                                addBookingRequest.bookingAddress!.address =
                                    '${addrstate.address.addressLine1 ?? ""},${addrstate.address.addressLine2 ?? ""},${addrstate.address.city ?? ""},${addrstate.address.state ?? ""},${addrstate.address.pinCode ?? ""}';
                                // debugPrint(
                                //     'AddressAdded => ${addBookingRequest.toJson()}');
                                return BookingPageTile(
                                    isEditButton: true,
                                    isBorder: false,
                                    title: 'Address',
                                    icon: Icons.location_on_outlined,
                                    trailingAddButton: true,
                                    isDataUpdated: addrstate.isAddressAdded,
                                    onTap: () {
                                      debugPrint(
                                          'ontap address:${addBookingRequest.toJson()}');
                                      showModalBottomSheet(
                                        isScrollControlled: true,
                                        shape: const RoundedRectangleBorder(
                                            side:
                                                BorderSide(color: Colors.white),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20))),
                                        context: context,
                                        builder: (context) {
                                          return SelectAddressBottomSheetWidget(
                                            package: packagedetails1,
                                          );
                                        },
                                      );
                                    },
                                    bottomWidget: addrstate.isAddressAdded
                                        //  isAddressChanged != false
                                        ? Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 2, vertical: 10),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                    // selectedAddress.addressType,
                                                    addrstate
                                                        .address.addressType!,
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16)),
                                                sbox,
                                                Text(
                                                    // '${selectedAddress.addressLine1},${selectedAddress.addressLine2},${selectedAddress.city},${selectedAddress.pinCode}',
                                                    '${addrstate.address.addressLine1},${addrstate.address.addressLine2},${addrstate.address.city},${addrstate.address.state},${addrstate.address.pinCode}',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 14,
                                                        color: colorblack
                                                            .withOpacity(0.7))),
                                              ],
                                            ),
                                          )
                                        : Container());
                              }
                              return BookingPageTile(
                                isEditButton: true,
                                isBorder: false,
                                title: 'Address',
                                icon: Icons.location_on_outlined,
                                trailingAddButton: true,
                                isDataUpdated: false,
                                onTap: () {
                                  showModalBottomSheet(
                                    isScrollControlled: true,
                                    shape: const RoundedRectangleBorder(
                                        side: BorderSide(color: Colors.white),
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(20),
                                            topRight: Radius.circular(20))),
                                    context: context,
                                    builder: (context) {
                                      return SelectAddressBottomSheetWidget(
                                        package: packagedetails1,
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                          BlocBuilder<SelectDateCubit, SelectDateState>(
                            builder: (context, state) {
                              if (state is DateAdded && state.isDateAdded) {
                                addBookingRequest.startDate = state.date;
                                addBookingRequest.endDate = state.endDate;
                                //  print('start-date==>${state.date} & end date ==>${state.endDate.toString()}');
                                return BookingPageTile(
                                    isBorder: false,
                                    title: 'Date & Time',
                                    icon: Icons.calendar_month,
                                    trailingAddButton: true,
                                    // isDataUpdated: true,
                                    onTap: () {
                                      showModalBottomSheet(
                                        isScrollControlled: true,
                                        shape: const RoundedRectangleBorder(
                                            side:
                                                BorderSide(color: Colors.white),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20))),
                                        context: context,
                                        builder: (context) {
                                          return SelectDateAndTimeBottomsheet(
                                            package: packagedetails1,
                                          );
                                        },
                                      );
                                    },
                                    bottomWidget: state.isDateAdded
                                        ? Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 2, vertical: 10),
                                            child: Column(
                                              children: [
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    const Text('Date',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16)),
                                                    sboxW5,
                                                    sboxW5,
                                                    Text(
                                                        '${DateFormat('EEEE').format(state.date)}, ${state.date.day.toString()}th ${DateFormat('MMMM').format(state.date)}, ${state.date.year.toString()}',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            fontSize: 14,
                                                            color: colorblack
                                                                .withOpacity(
                                                                    0.7))),
                                                  ],
                                                ),
                                                sbox,
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    const Text('Time',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 16)),
                                                    sboxW5,
                                                    sboxW5,
                                                    Row(
                                                      children: [
                                                        Text(
                                                            DateFormat('h:mm a')
                                                                .format(
                                                                    state.date),
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 14,
                                                                color: colorblack
                                                                    .withOpacity(
                                                                        0.7))),
                                                        const Text(" - "),
                                                        Text(
                                                            DateFormat('h:mm a')
                                                                .format(state
                                                                    .endDate),
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                fontSize: 14,
                                                                color: colorblack
                                                                    .withOpacity(
                                                                        0.7)))
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          )
                                        : const SizedBox.shrink());
                              }
                              return BookingPageTile(
                                isBorder: false,
                                title: 'Date & Time',
                                icon: Icons.calendar_month,
                                trailingAddButton: true,
                                // isDataUpdated: true,
                                onTap: () {
                                  showModalBottomSheet(
                                    isScrollControlled: true,
                                    shape: const RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(20),
                                        topRight: Radius.circular(20),
                                      ),
                                    ),
                                    context: context,
                                    builder: (context) {
                                      return SelectDateAndTimeBottomsheet(
                                        package: packagedetails1,
                                      );
                                    },
                                  );
                                },
                              );
                            },
                          ),
                          BlocBuilder<CouponCubit, CouponCubitState>(
                            builder: (context, couponState) {
                              String couponAmount =
                                  ''; // Default value if no coupon is added

                              if (couponState is CouponAdded &&
                                  couponState.isCouponAdded) {
                                couponAmount = couponState.coupon.fixedAmount
                                    .toString(); // Set coupon amount when added
                                var currentAmount =
                                    '${((data.packageDetails!.packageCost ?? 0) + (data.packageDetails!.transportationCost ?? 0) + (data.packageDetails!.extraAllowance ?? 0) - (double.tryParse(data.packageDetails!.couponsAndDiscounts ?? '0') ?? 0) - (double.tryParse(couponAmount) ?? 0)).toStringAsFixed(2)}';
                                totalAmounts =
                                    double.tryParse(currentAmount) ?? 0;
                                debugPrint('totalAmounts=>$totalAmounts');
                                return Column(
                                  children: [
                                    BookingPageTile(
                                      isBorder: false,
                                      title:
                                          couponState.coupon.couponCode ?? "",
                                      icon: Icons.percent,
                                      trailingOfferButton: false,
                                      bottomWidget: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 2, vertical: 10),
                                        child: Column(
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text('Rs.$couponAmount',
                                                    style: TextStyle(
                                                        color: colorblack
                                                            .withOpacity(0.5),
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 16)),
                                                sboxW5,
                                                sboxW5,
                                                Text('coupon savings',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w500,
                                                        fontSize: 14,
                                                        color: colorblack
                                                            .withOpacity(0.7))),
                                                const Spacer(),
                                                GestureDetector(
                                                  onTap: () {
                                                    context
                                                        .read<CouponCubit>()
                                                        .selectCoupon(
                                                            isSelected: false,
                                                            coupon: couponState
                                                                .coupon,
                                                            packageAmount: 0);
                                                  },
                                                  child: Text('Remove',
                                                      style: TextStyle(
                                                          color: colorblack
                                                              .withOpacity(0.5),
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          fontSize: 16)),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                      onTap: () {
                                        showModalBottomSheet(
                                          isScrollControlled: true,
                                          shape: const RoundedRectangleBorder(
                                              side: BorderSide(
                                                  color: Colors.white),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(20),
                                                  topRight:
                                                      Radius.circular(20))),
                                          context: context,
                                          builder: (context) {
                                            return SelectCouponBottomSheetWidget(
                                              packageAmount: state
                                                  .packageDetails
                                                  .data!
                                                  .packageDetails!
                                                  .packageCost!
                                                  .toInt(),
                                              packageUuid: widget.packageUuid,
                                            );
                                          },
                                        );
                                      },
                                    ),
                                    BookingPageTile(
                                      isBorder: false,
                                      title: 'Payment Summary',
                                      icon: Icons.local_offer_outlined,
                                      bottomWidget: PaymentSummaryTileWidget(
                                        packageEntity: state.packageDetails,
                                        Coupon:
                                            couponAmount, // Pass the coupon amount here
                                      ),
                                    ),
                                  ],
                                );
                              }
                              var currentAmount =
                                  '${((data.packageDetails!.packageCost ?? 0) + (data.packageDetails!.transportationCost ?? 0) + (data.packageDetails!.extraAllowance ?? 0) - (double.tryParse(data.packageDetails!.couponsAndDiscounts ?? '0') ?? 0) - (double.tryParse(couponAmount) ?? 0)).toStringAsFixed(2)}';
                              totalAmounts =
                                  double.tryParse(currentAmount) ?? 0;
                              debugPrint('totalAmounts=>$totalAmounts');
                              // If no coupon is added, show the default BookingPageTile
                              return Column(
                                children: [
                                  BookingPageTile(
                                    isBorder: false,
                                    title: 'Coupons and offers',
                                    icon: Icons.percent,
                                    trailingOfferButton: true,
                                    onTap: () {
                                      showModalBottomSheet(
                                        isScrollControlled: true,
                                        shape: const RoundedRectangleBorder(
                                            side:
                                                BorderSide(color: Colors.white),
                                            borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(20),
                                                topRight: Radius.circular(20))),
                                        context: context,
                                        builder: (context) {
                                          return SelectCouponBottomSheetWidget(
                                            packageAmount: state
                                                .packageDetails
                                                .data!
                                                .packageDetails!
                                                .packageCost!
                                                .toInt(),
                                            packageUuid: widget.packageUuid,
                                          );
                                        },
                                      );
                                    },
                                  ),
                                  BookingPageTile(
                                    isBorder: false,
                                    title: 'Payment Summary',
                                    icon: Icons.local_offer_outlined,
                                    bottomWidget: PaymentSummaryTileWidget(
                                      packageEntity: state.packageDetails,
                                      Coupon: '', // No coupon applied
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),

                          // BlocBuilder<CouponCubit, CouponCubitState>(
                          //   builder: (context, couponState) {
                          //      String couponAmount = '';
                          //     if (couponState is CouponAdded &&
                          //         couponState.isCouponAdded) {
                          //       return BookingPageTile(
                          //         isBorder: false,
                          //         title: couponState.coupon.couponCode ?? "",
                          //         icon: Icons.percent,
                          //         trailingOfferButton: false,
                          //         bottomWidget: couponState.isCouponAdded
                          //             ? Padding(
                          //                 padding: const EdgeInsets.symmetric(
                          //                     horizontal: 2, vertical: 10),
                          //                 child: Column(
                          //                   children: [
                          //                     Row(
                          //                       crossAxisAlignment:
                          //                           CrossAxisAlignment.center,
                          //                       mainAxisAlignment:
                          //                           MainAxisAlignment.center,
                          //                       children: [
                          //                         Text(
                          //                             'Rs.${couponState.coupon.fixedAmount.toString()}',
                          //                             style: TextStyle(
                          //                                 color: colorblack
                          //                                     .withOpacity(0.5),
                          //                                 fontWeight:
                          //                                     FontWeight.w600,
                          //                                 fontSize: 16)),
                          //                         sboxW5,
                          //                         sboxW5,
                          //                         Text('coupon savings',
                          //                             style: TextStyle(
                          //                                 fontWeight:
                          //                                     FontWeight.w500,
                          //                                 fontSize: 14,
                          //                                 color: colorblack
                          //                                     .withOpacity(
                          //                                         0.7))),
                          //                         const Spacer(),
                          //                         GestureDetector(
                          //                           onTap: () {
                          //                             context
                          //                                 .read<CouponCubit>()
                          //                                 .selectCoupon(
                          //                                     isSelected: false,
                          //                                     coupon:
                          //                                         couponState
                          //                                             .coupon,
                          //                                     packageAmount: 0);
                          //                           },
                          //                           child: Text('Cancel',
                          //                               style: TextStyle(
                          //                                   color: colorblack
                          //                                       .withOpacity(
                          //                                           0.5),
                          //                                   fontWeight:
                          //                                       FontWeight.w500,
                          //                                   fontSize: 16)),
                          //                         ),
                          //                       ],
                          //                     ),
                          //                   ],
                          //                 ),
                          //               )
                          //             : const SizedBox.shrink(),
                          //         onTap: () {
                          //           showModalBottomSheet(
                          //             isScrollControlled: true,
                          //             shape: const RoundedRectangleBorder(
                          //                 side: BorderSide(color: Colors.white),
                          //                 borderRadius: BorderRadius.only(
                          //                     topLeft: Radius.circular(20),
                          //                     topRight: Radius.circular(20))),
                          //             context: context,
                          //             builder: (context) {
                          //               return SelectCouponBottomSheetWidget(
                          //                 packageAmount: state
                          //                     .packageDetails
                          //                     .data!
                          //                     .packageDetails!
                          //                     .packageCost!
                          //                     .toInt(),
                          //                 packageUuid: widget.packageUuid,
                          //               );
                          //             },
                          //           );
                          //         },
                          //       );
                          //     }
                          //     return BookingPageTile(
                          //       isBorder: false,
                          //       title: 'Coupons and offers',
                          //       icon: Icons.percent,
                          //       trailingOfferButton: true,
                          //       onTap: () {
                          //         showModalBottomSheet(
                          //           isScrollControlled: true,
                          //           shape: const RoundedRectangleBorder(
                          //               side: BorderSide(color: Colors.white),
                          //               borderRadius: BorderRadius.only(
                          //                   topLeft: Radius.circular(20),
                          //                   topRight: Radius.circular(20))),
                          //           context: context,
                          //           builder: (context) {
                          //             return SelectCouponBottomSheetWidget(
                          //               packageAmount: state.packageDetails
                          //                   .data!.packageDetails!.packageCost!
                          //                   .toInt(),
                          //               packageUuid: widget.packageUuid,
                          //             );
                          //           },
                          //         );
                          //       },
                          //     );
                          //   },
                          // ),
                          // BookingPageTile(
                          //   isBorder: false,
                          //   title: 'Payment Summary',
                          //   icon: Icons.local_offer_outlined,
                          //   bottomWidget: PaymentSummaryTileWidget(
                          //       packageEntity: state.packageDetails, Coupon:couponAmount ,),
                          // ),

                          BookingPageTile(
                            trailingIcon: Icons.arrow_forward_ios_outlined,
                            title: 'Service Agreement',
                            icon: Icons.handshake_outlined,
                            isTopCurved: false,
                            isBorder: true,
                            onTap: () {
                              showModalBottomSheet(
                                isScrollControlled: true,
                                shape: const RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.white),
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                  ),
                                ),
                                context: context,
                                builder: (context) {
                                  return ServiceAgreementBottomSheetWidget(
                                    Agreementurl: data
                                        .packageDetails!.uploadPackageAgreement
                                        .toString(),
                                  );
                                },
                              ).then((value) {
                                setState(() {
                                  isTermsAgreed = value ?? false;
                                });
                              });
                            },
                          ),
                          sbox20,
                          sbox20,
                          sbox20,
                          sbox20,
                          sbox20,
                          sbox20,
                          sbox20,
                          sbox20,
                          sbox20,
                          sbox20,
                          sbox20,
                          sbox20,
                        ],
                      );
                    }
                    return const Text('something went wrong');
                  },
                ),
              ),
            ),
            BlocListener<AddBookingBloc, AddBookingState>(
              listener: (context, state) {
                if (state is AddBookingSuccess) {
                  debugPrint('----AddBookingSuccess-----');
                  isAgreed != false
                      ? AppNavigation.pushNavigation(
                          context,
                          ProceedToPaymentPage(
                              packageUuid: widget.packageUuid,
                              packageCost: totalAmounts,
                              bookingUuid:
                                  state.bookingEntity.data!.bookingUuid!
                              //'08a022a7-a57d-47ab-ba19-86e56fa1de66'
                              ))
                      : null;
                }
              },
              child: BlocBuilder<AddBookingBloc, AddBookingState>(
                builder: (context, state) {
                  if (state is AddBookingLoading) {
                    debugPrint('----AddBookingLoading-----');
                    return const SizedBox(
                      // height: 100.w * 0.72,
                      child: Center(
                        child: CircularProgressIndicator(),
                      ),
                    );
                  } else if (state is AddBookingFailed) {
                    debugPrint('----AddBookingFailed-----');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PaymentFailedPage(
                            packageUuid: widget.packageUuid,
                          ),
                        ));
                  }
                  // else if (state is AddBookingSuccess) {

                  //   return bookingButton(
                  //     100.w,
                  //     context,
                  //     state.bookingEntity.data!.bookingUuid!,
                  //     // state.bookingEntity.data!.baseFare!.toDouble(),
                  //     totalAmounts,
                  //   );
                  // }
                  debugPrint('----AddBookingOther-----');
                  // return const SizedBox();
                  return bookingButton(100.w, context, '', totalAmounts);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Positioned bookingButton(double width, BuildContext context,
      String bookingUuid, double packageCost) {
    return Positioned(
      bottom: 0,
      right: 0,
      left: 0,
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(color: colorwhite),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                isTermsAgreed != false
                    ? BookingConfirmationTileWidget(
                        icon: Icons.handshake,
                        width: width,
                        boldText: 'Agreement',
                        text: 'Signed')
                    : const SizedBox.shrink(),

                BlocBuilder<SelectDateCubit, SelectDateState>(
                  builder: (context, state) {
                    if (state is DateAdded && state.isDateAdded) {
                      isDateChanged = true;
                      return BookingConfirmationTileWidget(
                          icon: Icons.calendar_month,
                          width: width,
                          boldText: 'Date & Time',
                          text:
                              '${DateFormat('EEEE').format(state.date)}, ${state.date.day.toString()}th ${DateFormat('MMMM').format(state.date)}, ${state.date.year.toString()},${DateFormat('h:mm a').format(state.date)}');
                    }
                    return const SizedBox.shrink();
                  },
                ),

                // isAddressChanged != false
                //     ? BookingConfirmationTileWidget(
                //         icon: Icons.location_on_outlined,
                //         width: width,
                //         boldText: selectedAddress.addressType,
                //         text:
                //             '${selectedAddress.addressLine1},${selectedAddress.addressLine2},${selectedAddress.city},${selectedAddress.pinCode}')
                //     : const SizedBox.shrink(),

                BlocBuilder<AddressCubit, AddressCubitState>(
                  builder: (context, state) {
                    if (state is AddressAdded && state.isAddressAdded) {
                      isAddressChanged = true;
                      return BookingConfirmationTileWidget(
                          icon: Icons.location_on_outlined,
                          width: width,
                          boldText: state.address.addressType!,
                          text:
                              '${state.address.addressLine1},${state.address.addressLine2},${state.address.city},${state.address.pinCode}');
                    }
                    return const SizedBox.shrink();
                  },
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5),
                  child: ButtonWidget(
                    text: isAgreed != true
                        ? 'Proceed to ${isAddressChanged != true ? 'Address ,' : ''}${isDateChanged != true ? ' Date & Time' : ''}${isTermsAgreed != false && isAddressChanged != false || isDateChanged != false ? 'Agreement' : ''}'
                        : "Proceed to Payment"
                    // ${isAgreed != false ? 'Payment' : ''}'
                    ,
                    width: width,
                    color: isAgreed != true ? colorgrey : colorred,
                    // navigation: isAgreed != false
                    //     ? ProceedToPaymentPage(
                    //         bookingUuid: bookingUuid, packageCost: packageCost,
                    //       )
                    //     : null,
                    onPressed: () {
                      debugPrint('onpresssed-isAgreed ===> $isAgreed');
                      addBookingRequest.amount = totalAmounts.toInt();

                      if (isAgreed) {
                        context.read<AddBookingBloc>().add(
                            AddBooking(addBookingRequest: addBookingRequest));
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
