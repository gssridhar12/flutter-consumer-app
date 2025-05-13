// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/coupon_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/cubits/coupon_cubit/coupon_cubit.dart';
import 'package:flutter_consumer_app/features/booking_section/utils/coupon_card.dart';
import 'package:flutter_consumer_app/features/booking_section/utils/dotted_line.dart';
import 'package:flutter_consumer_app/shared/widgets/bulleted_text_widget.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/style/appstyles.dart';

class CouponCardWidget extends StatefulWidget {
  const CouponCardWidget({
    super.key,
    required this.packageCoupon,
    required this.packageAmount,
  });

  final PackageCoupon packageCoupon;
  final int packageAmount;

  @override
  State<CouponCardWidget> createState() => _CouponCardWidgetState();
}

class _CouponCardWidgetState extends State<CouponCardWidget> {
  bool isDetailsVisible = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: !isDetailsVisible ? 25.h : 42.h,
      width: 90.w,
      margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
      child: ClipPath(
        clipper: DolDurmaClipper(holeRadius: 20),
        child: Container(
          decoration: BoxDecoration(
              color: colorwhite, borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(widget.packageCoupon.couponCode ?? "",
                    style: AppStyles.black18regular),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                    'You can save Rs.${widget.packageCoupon.fixedAmount} on this booking!',
                    style: AppStyles.green16regular),
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: DottedLine()),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(widget.packageCoupon.couponDescription ?? "",
                    style: AppStyles.black16regular),
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    isDetailsVisible = !isDetailsVisible;
                  });
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Text('View Details',
                      style: AppStyles.black16regularOpacity5),
                ),
              ),
              GestureDetector(
                onTap: () {
                  DateTime currentDateTime = DateTime.now();

                  if (widget.packageAmount <
                      widget.packageCoupon.minBillingTotal!.toDouble()) {
                    if (widget.packageCoupon.validTo != null &&
                        widget.packageCoupon.validTo!
                            .isBefore(currentDateTime)) {
                      // Show dialog for invalid coupon
                      Future.microtask(() {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            Future.delayed(const Duration(seconds: 2), () {
                              Navigator.of(context).pop();
                            });

                            return AlertDialog(
                              title: Text(
                                "Opps! \n Coupons does not exist.",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              content: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                   
                                    TextSpan(
                                      text:
                                          "Go Back",
                                      style: TextStyle(
                                        color: Colors.red,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                   
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      });
                    } else {
                      context.read<CouponCubit>().selectCoupon(
                            coupon: widget.packageCoupon,
                            isSelected: true,
                            packageAmount:
                                widget.packageCoupon.fixedAmount!.toInt(),
                          );

                      Navigator.of(context).pop();

                      Future.microtask(() {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            Future.delayed(const Duration(seconds: 2), () {
                              Navigator.of(context).pop();
                            });

                            return AlertDialog(
                              title: Text(
                                "'${widget.packageCoupon.couponCode ?? ""}' applied",
                                textAlign: TextAlign.center,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              content: RichText(
                                textAlign: TextAlign.center,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Woohooo! You ',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    TextSpan(
                                      text:
                                          'saved Rs. ${widget.packageCoupon.fixedAmount} ',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'using this coupon!',
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      });
                    }
                  } else {
                    Future.microtask(() {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          Future.delayed(const Duration(seconds: 200), () {
                            Navigator.of(context).pop();
                          });

                          return AlertDialog(
                            title: Text(
                              "'Oops! \nCoupons cannot be Applied",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            content: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Add ',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  TextSpan(
                                    text:
                                        'Rs. ${((widget.packageAmount - (widget.packageCoupon.minBillingTotal?.toDouble() ?? 0)).abs()).toStringAsFixed(2)} ',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                    ),
                                  ),
                                  TextSpan(
                                    text:
                                        'more in your cart to avail this coupon',
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    });
                  }

                  // if (widget.packageAmount >
                  //     widget.packageCoupon.minBillingTotal!.toDouble()) {
                  //   context.read<CouponCubit>().selectCoupon(
                  //         coupon: widget.packageCoupon,
                  //         isSelected: true,
                  //         packageAmount:
                  //             widget.packageCoupon.fixedAmount!.toInt(),
                  //       );
                  //   // if (widget.packageAmount<widget.packageCoupon.minBillingTotal!.toDouble())
                  //   // context.read<CouponCubit>().selectCoupon(
                  //   //     coupon: widget.packageCoupon,
                  //   //     isSelected: true,
                  //   //     packageAmount: widget.packageCoupon.fixedAmount!.toInt());
                  //   Navigator.of(context).pop();

                  //   Future.microtask(() {
                  //     showDialog(
                  //       context: context,
                  //       builder: (BuildContext context) {
                  //         Future.delayed(const Duration(seconds: 2), () {
                  //           Navigator.of(context).pop();
                  //         });

                  //         return AlertDialog(
                  //           title: Text(
                  //             "'${widget.packageCoupon.couponCode ?? ""}' applied",
                  //             textAlign: TextAlign.center,
                  //             style: TextStyle(fontWeight: FontWeight.bold),
                  //           ),
                  //           content:
                  //               // Column(
                  //               //   children: [
                  //               RichText(
                  //             textAlign: TextAlign.center,
                  //             text: TextSpan(
                  //               children: [
                  //                 TextSpan(
                  //                   text: 'Woohooo! You ',
                  //                   style: TextStyle(
                  //                       color: Colors.grey,
                  //                       fontSize: 16,
                  //                       fontWeight: FontWeight.w500),
                  //                 ),
                  //                 TextSpan(
                  //                   text:
                  //                       'saved Rs. ${widget.packageAmount - widget.packageCoupon.minBillingTotal!.toDouble()} ',
                  //                   style: TextStyle(
                  //                     color: Colors.green,
                  //                     fontWeight: FontWeight.w500,
                  //                     fontSize: 16,
                  //                   ),
                  //                 ),
                  //                 TextSpan(
                  //                   text: 'using this coupon!',
                  //                   style: TextStyle(
                  //                       color: Colors.grey,
                  //                       fontSize: 16,
                  //                       fontWeight: FontWeight.w500),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),

                  //           //     Text("YAY!",
                  //           // textAlign: TextAlign.center,
                  //           // style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                  //           //   ],
                  //           // ),

                  //           //  Container(

                  //           //   child: Text(
                  //           //       'Woohooo! You saved Rs.${widget.packageCoupon.fixedAmount}!'),
                  //           // ),
                  //         );
                  //       },
                  //     );
                  //   });
                  // } else {
                  //   Future.microtask(() {
                  //     showDialog(
                  //       context: context,
                  //       builder: (BuildContext context) {
                  //         Future.delayed(const Duration(seconds: 200), () {
                  //           Navigator.of(context).pop();
                  //         });

                  //         return AlertDialog(
                  //           title: Text(
                  //             "'Opps! \nCoupons cannot be Applied",
                  //             textAlign: TextAlign.center,
                  //             style: TextStyle(fontWeight: FontWeight.bold),
                  //           ),
                  //           content:
                  //               // Column(
                  //               //   children: [
                  //               RichText(
                  //             textAlign: TextAlign.center,
                  //             text: TextSpan(
                  //               children: [
                  //                 TextSpan(
                  //                   text: 'Add ',
                  //                   style: TextStyle(
                  //                       color: Colors.grey,
                  //                       fontSize: 16,
                  //                       fontWeight: FontWeight.w500),
                  //                 ),
                  //                 TextSpan(
                  //                   text:
                  //                       'Rs. ${((widget.packageAmount - (widget.packageCoupon.minBillingTotal?.toDouble() ?? 0)).abs()).toStringAsFixed(2)} ',
                  //                   style: TextStyle(
                  //                     color: Colors.grey,
                  //                     fontWeight: FontWeight.w500,
                  //                     fontSize: 16,
                  //                   ),
                  //                 ),
                  //                 TextSpan(
                  //                   text:
                  //                       'more in your cart to avail this coupons',
                  //                   style: TextStyle(
                  //                       color: Colors.grey,
                  //                       fontSize: 16,
                  //                       fontWeight: FontWeight.w500),
                  //                 ),
                  //               ],
                  //             ),
                  //           ),

                  //           //     Text("YAY!",
                  //           // textAlign: TextAlign.center,
                  //           // style: TextStyle(fontWeight: FontWeight.bold,color: Colors.red),),
                  //           //   ],
                  //           // ),

                  //           //  Container(

                  //           //   child: Text(
                  //           //       'Woohooo! You saved Rs.${widget.packageCoupon.fixedAmount}!'),
                  //           // ),
                  //         );
                  //       },
                  //     );
                  //   });
                  // }
                  // ;
                },
                child: Container(
                  width: 100.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: colorred.withOpacity(0.5),
                  ),
                  child: const Center(child: Text('APPLY')),
                ),
              ),

              // GestureDetector(
              //   onTap: () {
              //     context.read<CouponCubit>().selectCoupon(
              //         coupon: widget.packageCoupon,
              //         isSelected: true,
              //         packageAmount: widget.packageCoupon.fixedAmount!.toInt());
              //     Navigator.pop(context);
              //   },
              //   child: Container(
              //     width: 100.w,
              //     height: 5.h,
              //     decoration: BoxDecoration(
              //         borderRadius: const BorderRadius.only(
              //             bottomLeft: Radius.circular(20),
              //             bottomRight: Radius.circular(20)),
              //         color: colorred.withOpacity(0.5)),
              //     child: const Center(child: Text('APPLY')),
              //   ),
              // ),
              sbox,
              Visibility(
                visible: isDetailsVisible,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text('Terms and Conditions apply',
                          style: AppStyles.black16regular),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: BulletedTextWidget(
                          fontSize: 16,
                          width: 100.w,
                          text: 'Offer is valid only on selected packages.'),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: BulletedTextWidget(
                          fontSize: 16,
                          width: 100.w,
                          text:
                              'Coupon code can be applied only once in 2 hr on this package'),
                    ),
                    // '${DateFormat('EEEE').format(packages[index].bookingDetails!.startDate!)}, ${packages[index].bookingDetails!.startDate!.day.toString()}th ${DateFormat('MMMM').format(packages[index].bookingDetails!.startDate!)}, ${packages[index].bookingDetails!.startDate!.year.toString()},${DateFormat('h:mm a').format(packages[index].bookingDetails!.startDate!)}',
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: BulletedTextWidget(
                        fontSize: 16,
                        width: 100.w,
                        text:
                            'Offer valid till ${DateFormat('EEEE').format(widget.packageCoupon.validTo!)}, ${widget.packageCoupon.validTo!.day.toString()}th ${DateFormat('MMMM').format(widget.packageCoupon.validTo!)}, ${widget.packageCoupon.validTo!.year.toString()}, ${DateFormat('h:mm a').format(widget.packageCoupon.validTo!)}',
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
