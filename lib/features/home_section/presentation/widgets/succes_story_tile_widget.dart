// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/SuccessStorieExpandedPage.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/image_and_text_widget.dart';

class SuccessStoryWidget extends StatelessWidget {
    final String? headingtext;
  const SuccessStoryWidget({super.key, this.headingtext});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(right: padding, left: padding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: SizedBox(
              width: width * 0.65,
              child: Stack(children: [
                GestureDetector(
                  onTap: () { 
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                             PageViewExample(headingtext: headingtext,)
                               // HomeSuccessStoryExpanded()
                                ));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset('assets/images/successtory.png',
                        fit: BoxFit.contain),
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(padding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomImageAndTextWidget(
                            width: MediaQuery.of(context).size.width,
                            image: 'assets/images/image 91.png',
                            text: 'Nancy King'),
                        sbox5,
                        Text(
                          'Hair & Makeup Artist for ',
                          style: TextStyle(color: colorwhite.withOpacity(0.9)),
                        ),
                        sbox5,
                        CustomImageAndTextWidget(
                            width: width,
                            image: 'assets/images/actor.png',
                            text: 'Amanda'),
                        sbox5,
                        Text(
                          'Nancy was great with her work, very professional.',
                          style: TextStyle(color: colorwhite.withOpacity(0.9)),
                        ),
                      ],
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
