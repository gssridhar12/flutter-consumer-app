import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/become_partner/become_partner_form.dart';

import 'package:flutter_consumer_app/shared/widgets/custom_container_widget.dart';

class BecomePartnerWidget extends StatelessWidget {
  const BecomePartnerWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return CustomContainerWidget(
      borderRadius: 15,
      child: Padding(
        padding: const EdgeInsets.all(padding20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: width * 0.5,
              child: const Text(
                overflow: TextOverflow.clip,
                'Invent yourself on Megmo',
                style: TextStyle(fontSize: 26, color: colorblack),
              ),
            ),
            sbox,
            Text(
              'Start your creative career now!',
              style:
                  TextStyle(fontSize: 18, color: colorblack.withOpacity(0.5)),
            ),
            sbox,
             Row(
              children: [
                ButtonWidget(
                  text: 'Become a Partner',
                  borderRadius: 15,
                  navigation: BecomePartnerFormPage(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
