import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/booking_container_widget.dart';

import '../../domain/entities/response/coupon_entity.dart';

class BookingPageTile extends StatelessWidget {
  final List<PackageCoupon> coupons = [];
   BookingPageTile({
    super.key,
    required this.title,
    this.icon,
    this.trailingAddButton = false,
    this.trailingOfferButton = false,
    this.bottomWidget,
    this.trailingIcon,
    this.isTopCurved,
    this.isBorder,
    this.onTap,
    this.isDataUpdated,
    this.isEditButton,
  });
    final String title;
  final IconData? icon;
  final bool trailingAddButton;
  final bool trailingOfferButton;
  final Widget? bottomWidget;
  final IconData? trailingIcon;
  final bool? isTopCurved;
  final bool? isBorder;
  final bool? isDataUpdated;
  final bool? isEditButton;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap != null ? onTap!() : null;
      },
      child: BookingContainerWidget(
        isTopCurved: isTopCurved,
        isBorder: isBorder,
        child: Padding(
          padding: const EdgeInsets.all(padding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  icon != null
                      ? Icon(icon, size: 18, color: colorred)
                      : Container(),
                  sboxW5,
                  Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      title,
                      style: const TextStyle(fontSize: 16, color: colorred),
                    ),
                  ),
                  const Spacer(),
                  trailingOfferButton != false
                      ? Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '${coupons.length +1} offers',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: colorblack.withOpacity(0.7)),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_outlined,
                              size: 22,
                              color: colorblack.withOpacity(0.7),
                            ),
                          ],
                        )
                      : Container(),
                  trailingAddButton != false
                      ? const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Add',
                              style: TextStyle(fontSize: 15, color: colorred),
                            ),
                            Icon(
                              Icons.add,
                              size: 21,
                              color: colorred,
                            ),
                          ],
                        )
                      : Container(),
                  // isDataUpdated != false && isEditButton != false
                  //     ? Text(
                  //         'Edit',
                  //         style: TextStyle(
                  //             color: colorblack.withOpacity(0.5),
                  //             decoration: TextDecoration.underline),
                  //       )
                  //     : const SizedBox.shrink(),
                  trailingIcon != null
                      ? Icon(
                          trailingIcon,
                          size: 15,
                        )
                      : Container()
                ],
              ),
              bottomWidget ?? Container(),
            ],
          ),
        ),
      ),
    );
  }
}
