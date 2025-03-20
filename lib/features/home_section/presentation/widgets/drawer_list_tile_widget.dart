import 'package:flutter/material.dart';

class DrawerListTileWidget extends StatelessWidget {
  const DrawerListTileWidget({
    super.key,
    required this.title,
    this.isTrailing = true,
    this.leadingIcon,
    this.trailingIcon,
    this.ontap,
    this.leadingIconColor,
    this.navigation,
    this.isEnabled = true,
  });
  final String title;
  final bool isTrailing;
  final Widget? leadingIcon;
  final Widget? trailingIcon;
  final Function()? ontap;
  final Color? leadingIconColor;
  final Widget? navigation;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      enabled: isEnabled,
      onTap: () {
        ontap!();
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //     builder: (context) => navigation!,
        //   ),
        // );
      },
      leading: leadingIcon,
      minLeadingWidth: 25,
      iconColor: leadingIconColor,
      title: Text(
        title,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.start,
      ),

      ///to make it scrollable
      // title: SingleChildScrollView(
      //   scrollDirection: Axis.horizontal,
      //   child: Text(title),
      // ),
      trailing: isTrailing ? trailingIcon : null,
    );
  }
}
