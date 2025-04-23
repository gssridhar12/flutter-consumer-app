import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/coupon_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/cubits/coupon_cubit/coupon_cubit.dart';
import 'package:flutter_consumer_app/features/booking_section/utils/coupon_card.dart';
import 'package:flutter_consumer_app/features/booking_section/utils/dotted_line.dart';
import 'package:flutter_consumer_app/shared/widgets/bulleted_text_widget.dart';
import 'package:sizer/sizer.dart';

import '../../../../core/style/appstyles.dart';

class CouponCardWidget extends StatefulWidget {
  const CouponCardWidget({
    super.key,
    required this.packageCoupon,
  });

  final PackageCoupon packageCoupon;

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
                child: Text(widget.packageCoupon!.couponCode ?? "",
                    style: AppStyles.black18regular),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Text(
                    'You can save Rs.${widget.packageCoupon.fixedAmount} on this booking!',
                    style: AppStyles.green16regular),
              ),
              Padding(
                  //Separater line
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
                  context.read<CouponCubit>().selectCoupon(
                      coupon: widget.packageCoupon,
                      isSelected: true,
                      packageAmount:
                          widget!.packageCoupon!.fixedAmount!.toInt());
                  Navigator.pop(context);
                },
                child: Container(
                  width: 100.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20)),
                      color: colorred.withOpacity(0.5)),
                  child: const Center(child: Text('APPLY')),
                ),
              ),
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
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: BulletedTextWidget(
                          fontSize: 16,
                          width: 100.w,
                          text: 'Offer valid till Mar 20, 2024 11:59 PM.'),
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
