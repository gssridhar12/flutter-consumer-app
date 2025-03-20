import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';

class ProceedtoPaymentListTileWidget extends StatelessWidget {
  const ProceedtoPaymentListTileWidget({
    super.key,
    required this.title,
    required this.leadingIcon,
  });
  final String title;
  final IconData leadingIcon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(horizontal: -3, vertical: -3),
      horizontalTitleGap: 0,
      contentPadding: const EdgeInsets.all(2),
      leading: Icon(leadingIcon, size: 20),
      title: Padding(
        padding: const EdgeInsets.only(top: 3.0),
        child: Text(title,
            style: TextStyle(fontSize: 14, color: colorblack.withOpacity(0.8))),
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_outlined,
        size: 16,
      ),
    );
  }
}
