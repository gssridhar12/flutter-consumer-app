import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
// import 'package:story_view/controller/story_controller.dart';
// import 'package:story_view/widgets/story_view.dart';

class MegmoWidgetExpand extends StatefulWidget {
  const MegmoWidgetExpand({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;

  @override
  State<MegmoWidgetExpand> createState() => _ShowWidgetPaymentState();
}

class _ShowWidgetPaymentState extends State<MegmoWidgetExpand> {
  // final StoryController controller = StoryController();
  bool isVolumeOn = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            // Container(
            //   width: 414,
            //   height: 637.09,
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(12.28),
            //   ),
            //   child: ClipRRect(
            //     borderRadius: BorderRadius.circular(12.28),
            //     child: StoryView(
            //       controller: controller,
            //       storyItems: [
            //         StoryItem.text(
            //           title: ' Welcome ',
            //           textStyle: TextStyle(fontSize: 50),
            //           backgroundColor: colorred,
            //           roundedTop: true,
            //         ),
            //         StoryItem.inlineProviderImage(
            //           AssetImage(
            //             'assets/images/actor.png',
            //           ),
            //         ),
            //         StoryItem.inlineProviderImage(
            //           AssetImage(
            //             'assets/images/sliderimage.png',
            //           ),
            //         ),
            //         StoryItem.pageVideo(
            //           'assets/images/video.mp4', // Replace with the actual URL or local path of your video
            //           controller: controller, // Pass your controller here
            //           caption: 'Your Video Caption',
            //           imageFit: BoxFit.cover,
            //         ),
            //         StoryItem.pageVideo("assets/images/diwali.mp4",
            //             duration: Duration(seconds: 5), controller: controller),
            //       ],
            //     ),
            //   ),
            // ),
            Container(
              width: 414,
              height: 637.09,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.28),
                gradient: LinearGradient(
                  begin: const Alignment(0.00, -1.00),
                  end: const Alignment(0, 1),
                  colors: [
                    Colors.black
                        .withOpacity(0), // You can adjust the opacity here
                    Colors.black, // You can adjust the opacity here
                  ],
                ),
              ),
            ),
            Positioned(
              top: 28, // Adjust the top position of the icon
              right: 12, // Adjust the right position of the icon
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: const Icon(
                    Icons.close,
                    color: colorblack,
                    size: 24,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 28, // Adjust the top position of the new widget
              left: 12, // Adjust the left position of the new widget
              child: Container(
                width: 242,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/actor.png'),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 7),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Reet’s Wedding Set',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              height: 1.07,
                            ),
                          ),
                          Text(
                            'Aug 2021',
                            style: TextStyle(
                              color: Color(0xFFBFBFBF),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.14,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              top: 320, // Adjust the top position of the new icons
              right: 12, // Adjust the right position of the icon
              child: GestureDetector(
                onTap: () {
                  // Toggle the state when the icon is tapped
                  setState(() {
                    isVolumeOn = !isVolumeOn;
                  });
                },
                child: Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.5),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    isVolumeOn
                        ? Icons.volume_up_outlined
                        : Icons.volume_off_outlined,
                    color: colorblack,
                    size: 24,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 370, // Adjust the top position of the new icons
              right: 12, // Adjust the left position of the new icons
              child: Column(
                children: [
                  // Container(
                  //   width: 48,
                  //   height: 48,
                  //   decoration: BoxDecoration(
                  //     color: Colors.white.withOpacity(0.5),
                  //     shape: BoxShape.circle,
                  //   ),
                  //   child: Icon(
                  //     Icons.volume_up_outlined,
                  //     color: colorblack,
                  //     size: 24,
                  //   ),
                  // ),
                  sbox,
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.ios_share_outlined,
                      color: colorblack,
                      size: 24,
                    ),
                  ),
                  sbox,
                  Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.favorite_border_outlined,
                      color: colorblack,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 450, // Adjust the top position of the new icons
              left: 22,
              child: Container(
                width: 142,
                height: 48,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 48,
                      height: 48,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/actor.png'),
                          fit: BoxFit.cover,
                        ),
                        shape: BoxShape.circle,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 7),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Client-',
                            style: TextStyle(
                              color: Color(0xFFBFBFBF),
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              height: 1.14,
                            ),
                          ),
                          Text(
                            'Amanda',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              height: 1.11,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 510, // Adjust the top position of the new icons
              left: 28,
              child: Row(
                children: [
                  Text(
                    'Rated- ',
                    style: TextStyle(
                      color: Color(0xFFBFBFBF),
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      height: 1.07,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: colorwhite,
                      ),
                      Icon(
                        Icons.star,
                        color: colorwhite,
                      ),
                      Icon(
                        Icons.star,
                        color: colorwhite,
                      )
                    ],
                  )
                ],
              ),
            ),
            Positioned(
                top: 550, // Adjust the top position of the new icons
                left: 40,
                child: Row(
                  children: [
                    Icon(
                      Icons.radio_button_checked,
                      color: colorwhite,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 60, left: 20),
                      child: SizedBox(
                        width: 294.75,
                        child: Text(
                          'Nancy was great with her work, very professional. ',
                          style: TextStyle(
                            color: Color(0xFFBFBFBF),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            height: 1.20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ))
          ],
        ),
      ],
    );
  }
}
