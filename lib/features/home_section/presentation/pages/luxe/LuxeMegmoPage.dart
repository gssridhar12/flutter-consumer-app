import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class LuxeMegmoScreen extends StatefulWidget {
  const LuxeMegmoScreen({Key? key}) : super(key: key);

  @override
  State<LuxeMegmoScreen> createState() =>
      _LuxeMegmoScreenState(); // Changed the state class name
}

class _LuxeMegmoScreenState extends State<LuxeMegmoScreen> {
  // Changed the state class name
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Container(
            color: colorblack, // Ensure 'colorblack' is defined
            child: Column(
              children: [
                const Text(
                  // Corrected widget name
               
                      'Recording musician as well as a professional performer with 10+ years of work experience',
               
                ),
                sbox20,
                // const LuxePopupWidegtPage(), // Corrected widget name
                sbox20,
                sbox20,
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 22),
                  child: HeadingTextWidget(
                    text: "Neha's Portfolio",
                    textColor: colorwhite,
                    trailingButton: true,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 13, right: 13),
                  child: SizedBox(
                    height: 600,
                    child: Text('data')
                  ),
                ),

                sbox20,
                const Padding(
                  padding: EdgeInsets.only(left: 20, right: 22),
                  child: HeadingTextWidget(
                    text: "Neha's Wigglypet Gigs",
                    textColor: colorwhite,
                    trailingButton: true,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 13, right: 13),
                  child: SizedBox(
                    height: 600,
                    child: Text('data')
                  ),
                ),

                sbox20,
                Padding(
                  padding: const EdgeInsets.only(right: 22, left: 320),
                  child: GradientText(
                    'View all >',
                    style: const TextStyle(
                      fontSize: 11.0,
                    ),
                    colors: const [colorred, colorpink],
                  ),
                ),
                sbox20,
                sbox20,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
