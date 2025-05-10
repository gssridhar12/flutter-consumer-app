// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/cubits/coupon_cubit/coupon_cubit.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/entities/package_details_entitiy.dart';

// ignore: must_be_immutable
class PaymentSummaryTileWidget extends StatefulWidget {
  final PackageDetailsEntity packageEntity;
  final String Coupon;
  const PaymentSummaryTileWidget({
    super.key,
    required this.packageEntity,
    required this.Coupon,
  });

  @override
  State<PaymentSummaryTileWidget> createState() =>
      _PaymentSummaryTileWidgetState();
}

class _PaymentSummaryTileWidgetState extends State<PaymentSummaryTileWidget> {
  // List<String> titles = [
  //   'Base fare',
  //   'Promotional discount',
  //   'Tax ',
  //   'Transport',
  //   'Sp. allowance',
  //   'Membership discount',
  //   'Total',
  // ];
  int totalAmount = 0;
  @override
  Widget build(BuildContext context) {
    final data = widget.packageEntity.data;
    totalAmount = widget.packageEntity.data!.packageDetails!.packageCost!;
    return BlocListener<CouponCubit, CouponCubitState>(
      listener: (context, state) {
        if (state is CouponAdded && state.isCouponAdded) {
          debugPrint(state.toString());
          setState(() {});
          debugPrint(totalAmount.toString());
        }
      },
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            sbox,
            if (data!.packageDetails!.packageCost != null)
              PaymentSummaryListTilewidget(
                title: 'Base fare',
                trailing: 'Rs ${data.packageDetails!.packageCost ?? ""}',
              ),
            if (data.packageDetails!.couponsAndDiscounts != null &&
                double.tryParse(data.packageDetails!.couponsAndDiscounts!) !=
                    null &&
                double.parse(data.packageDetails!.couponsAndDiscounts!) > 0)
              PaymentSummaryListTilewidget(
                title: 'Promotional discount',
                trailing: '- Rs ${data.packageDetails!.couponsAndDiscounts}',
                trailingColor: Colors.green,
              ),

            // if (data.packageDetails!.couponsAndDiscounts != null)
            // PaymentSummaryListTilewidget(
            //   title: 'Promotional discount',
            //   trailing: data.packageDetails!.couponsAndDiscounts.toString(),
            //   trailingColor: Colors.green,
            // ),
            if (widget.Coupon != null && widget.Coupon.isNotEmpty)
              PaymentSummaryListTilewidget(
                title: "Coupon discount",
                trailing: '- Rs ${widget.Coupon}',
                trailingColor: Colors.green,
              ),
            if (data.packageDetails!.transportationCost != null)
              PaymentSummaryListTilewidget(
                title: 'Transport',
                trailing: 'Rs ${data.packageDetails!.transportationCost}',
                trailingColor: colorblack.withOpacity(0.5),
              ),
            if (data.packageDetails!.extraAllowance != null)
              PaymentSummaryListTilewidget(
                title: 'Sp. allowance',
                trailing: 'Rs ${data.packageDetails!.extraAllowance}',
                trailingColor: colorblack.withOpacity(0.5),
              ),
            // const PaymentSummaryListTilewidget(
            //   title: 'Membership discount',
            //   trailing: '-Rs 400',
            //   trailingColor: Colors.green,
            // ),
            const Divider(),
            PaymentSummaryListTilewidget(
              title: 'Total',
              trailing:
                  'Rs ${((data.packageDetails!.packageCost ?? 0) + (data.packageDetails!.transportationCost ?? 0) + (data.packageDetails!.extraAllowance ?? 0) - (double.tryParse(data.packageDetails!.couponsAndDiscounts ?? '0') ?? 0) - (double.tryParse(widget.Coupon) ?? 0)).toStringAsFixed(2)}',
              isBold: true,
            ),

            // PaymentSummaryListTilewidget(
            //   title: 'Total',
            //   trailing:
            //       'Rs ${data.packageDetails!.packageCost??0 + data.packageDetails!.transportationCost! + data.packageDetails!.extraAllowance!-widget.Coupon}',
            //   isBold: true,
            // ),
            BlocBuilder<CouponCubit, CouponCubitState>(
              builder: (context, state2) {
                if (state2 is CouponAdded && state2.isCouponAdded) {
                  debugPrint(state2.toString());
                  //   totalAmount -= 100;

                  return Container(
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(6)),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Icon(Icons.celebration,
                              size: 16, color: Colors.green),
                          Text(
                              ' Congrats! You have saved Rs ${state2.coupon.fixedAmount} on this deal',
                              style: const TextStyle(color: Colors.green)),
                        ],
                      ),
                    ),
                  );
                }
                return const SizedBox.shrink();
              },
            )
          ],
        ),
      ),
    );
  }
}

class PaymentSummaryListTilewidget extends StatelessWidget {
  const PaymentSummaryListTilewidget({
    super.key,
    required this.title,
    required this.trailing,
    this.trailingColor,
    this.isBold = false,
  });
  final String title;
  final String trailing;
  final Color? trailingColor;
  final bool? isBold;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      visualDensity: const VisualDensity(vertical: -3),
      contentPadding: const EdgeInsets.all(0),
      title: Text(
        title,
        style: TextStyle(
          fontSize: 15,
          fontWeight: isBold == true ? FontWeight.bold : FontWeight.w400,
        ),
      ),
      trailing: Text(
        trailing,
        style: TextStyle(
            color: trailingColor ?? colorblack,
            fontWeight: isBold == true ? FontWeight.bold : FontWeight.w400,
            fontSize: 13),
      ),
    );
  }
}
