// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/coupon_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/coupon_bloc/coupon_bloc.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/bottom_sheet_title_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/coupon_card_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/search_field_widget.dart';


class SelectCouponBottomSheetWidget extends StatefulWidget {
  const SelectCouponBottomSheetWidget({
    super.key,
    required this.packageUuid,
    required this.packageAmount,
  });
  final String packageUuid;
  final int packageAmount;
  @override
  State<SelectCouponBottomSheetWidget> createState() =>
      _SelectCouponBottomSheetWidgetState();
}

class _SelectCouponBottomSheetWidgetState
    extends State<SelectCouponBottomSheetWidget> {
  int? selectedRadio = 0;
  PackageCoupon? coupon;

  final List<PackageCoupon> coupons = [];

  @override
  void initState() {
    BlocProvider.of<CouponBloc>(context)
        .add(GetCoupon(packageUuid: widget.packageUuid));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SizedBox(
        height: height * 0.85,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: padding,
          ),
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sbox20,
                const BottomSheetIconandTitleWidget(
                  icon: Icons.percent,
                  title: 'Apply Coupon',
                ),
                sbox20,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: SearchFieldWidget(
                    isDense: true,
                    width: width,
                    text: 'Enter Coupon Code',
                  ),
                ),
                const Divider(),
                BlocListener<CouponBloc, CouponState>(
                  listener: (context, state) {
                    if (state is GetCouponSuccess) {
                      setState(() {
                        coupons
                            .addAll(state.getCouponEntity.data!.packageCoupons!);
                        coupon = coupons[selectedRadio!];
                      });
                    }
                  },
                  child: Flexible(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: coupons.length,
                      itemBuilder: (BuildContext buildContext, int index) {
                        return 
                        CouponCardWidget(
                          packageCoupon: coupons[index], packageAmount: widget.packageAmount,
                        );
                      },
                    ),
                  ),
                ),
                // const Divider(),
                // const Spacer(),
                // Padding(
                //   padding: const EdgeInsets.symmetric(horizontal: 10),
                //   child: ButtonWidget(
                //     text: 'Select Coupon',
                //     width: width,
                //     onPressed: () {
                //       context.read<CouponCubit>().selectCoupon(
                //           coupon: coupon!,
                //           isSelected: true,
                //           packageAmount: widget.packageAmount);
                //       Navigator.pop(context, coupon);
                //     },
                //   ),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
