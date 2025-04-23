import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/search_page.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({
    super.key,
    required this.width,
    required this.text,
    this.height,
    this.prefixIcon,
    this.isDense,
    this.backButton = false,
    this.controller,
    this.navigation = true,
    this.onChanged,
  });

  final double width;
  final double? height;
  final String text;
  final Widget? prefixIcon;
  final bool? isDense;
  final bool? backButton;
  final TextEditingController? controller;
  final bool? navigation;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    bool isEnabled = !navigation!;
    return InkWell(
      onTap: () {
        if (navigation != false) {
          AppNavigation.pushNavigation(context, const SearchPage());
        }
      },
      child: TextField(
        enabled: isEnabled,
        onChanged: onChanged ?? (value) {},
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 9, horizontal: 15),
          fillColor: colorwhite,
          filled: true,
          hintText: text,
          hintStyle: const TextStyle(fontSize: 14),
          isDense: isDense,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          // boxShadow: [
          //   BoxShadow(
          //     blurRadius: 5,
          //     spreadRadius: 1,
          //     color: colorblack.withOpacity(0.1),
          //   ),
          // ],
        ),
      ),
    );
  }
}
