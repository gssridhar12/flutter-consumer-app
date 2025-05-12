import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/textWidget.dart';

import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class LuxBlackMegmoSeeAllPagetile extends StatefulWidget {
  const LuxBlackMegmoSeeAllPagetile({Key? key, required this.title})
      : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LuxBlackMegmoSeeAllPagetile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 0, right: 24),
          child: TextWidget(
              text:
                  "This is some of the gigs Neha has done through Woofurs so that you can get a better understanding of their experience."),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => const MegmoExpandedprofileAbout()));
            },
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: StaggeredGridView.count(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 4,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 5.0,
                children: const <Widget>[
                  ImageFeedDesign(image: 'assets/images/sliderimage.png'),
                  ImageFeedDesign(image: 'assets/images/becomepartner3.png'),
                  ImageFeedDesign(image: 'assets/images/actor.png'),
                  ImageFeedDesign(image: 'assets/images/becomepartner3.png'),
                  ImageFeedDesign(image: 'assets/images/sliderimage.png'),
                  ImageFeedDesign(image: 'assets/images/actor.png'),
                  ImageFeedDesign(image: 'assets/images/becomepartner4.png'),
                ],
                staggeredTiles: const <StaggeredTile>[
                  StaggeredTile.fit(2),
                  StaggeredTile.fit(2),
                  StaggeredTile.fit(2),
                  StaggeredTile.fit(2),
                  StaggeredTile.fit(2),
                  StaggeredTile.fit(2),
                  StaggeredTile.fit(2),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class ImageFeedDesign extends StatelessWidget {
  const ImageFeedDesign({required this.image});

  final String image;
  final String place = 'NMACC Festival';
  final String distance = 'Aug 2021';
  final Color kWhite = colorwhite;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<double>(
      future: _getImageAspectRatio(image),
      builder: (BuildContext context, AsyncSnapshot<double> snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.hasData) {
          double aspectRatio = snapshot.data!;
          double containerWidth = MediaQuery.of(context).size.width / 2 - 15;
          double containerHeight = containerWidth / aspectRatio;

          return Container(
            width: containerWidth,
            height:
                containerHeight + 50, // Adjusted height for additional content
            decoration: BoxDecoration(
              color: kWhite,
              borderRadius: const BorderRadius.all(Radius.circular(15.0)),
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(255, 48, 47, 47).withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 0,
                  offset: const Offset(0, 0.30),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: containerHeight,
                  decoration: BoxDecoration(
                    color: kWhite,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(image),
                    ),
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            place,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              color: colorblack,
                              fontWeight: FontWeight.bold,
                              fontSize: 12.0,
                            ),
                          ),
                          const SizedBox(height: 4.0),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                distance,
                                style: const TextStyle(
                                    color: colorblack, fontSize: 10),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 5),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: colorred,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: colorred,
                                      size: 12,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: colorred,
                                      size: 12,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )),
                ),
              ],
            ),
          );
        } else {
          return Container(); // Placeholder widget while loading or if an error occurs
        }
      },
    );
  }

  Future<double> _getImageAspectRatio(String imagePath) async {
    final ByteData data = await rootBundle.load(imagePath);
    final List<int> bytes = data.buffer.asUint8List();
    final ui.Codec codec =
        await ui.instantiateImageCodec(Uint8List.fromList(bytes));
    final ui.FrameInfo frameInfo = await codec.getNextFrame();
    double aspectRatio = frameInfo.image.width / frameInfo.image.height;
    return aspectRatio;
  }
}


//

// class ImageFeedDesign extends StatelessWidget {
//   ImageFeedDesign({required this.image});
//   final String image;
//   final String place = "Reet's Wedding Set";
//   final String distance = 'Aug 2021';

//   Color kWhite = colorwhite;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: kWhite,
//         borderRadius: BorderRadius.all(Radius.circular(15.0)),
//         boxShadow: [
//           BoxShadow(
//             color: const Color.fromARGB(255, 48, 47, 47).withOpacity(0.3),
//             spreadRadius: 0,
//             blurRadius: 0,
//             offset: Offset(0, 1),
//           )
//         ],
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Container(
//             width: double.infinity,
//             child: AspectRatio(
//               aspectRatio:
//                   1.0, // Set the aspect ratio based on your requirements
//               child: ClipRRect(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(15.0),
//                   topRight: Radius.circular(15.0),
//                 ),
//                 child: Image.asset(
//                   image,
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   place,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(
//                     color: colorblack,
//                     fontWeight: FontWeight.bold,
//                     fontSize: 12.0,
//                   ),
//                 ),
//                 SizedBox(height: 4.0),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       distance,
//                       style: TextStyle(color: colorblack, fontSize: 10),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 5),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.start,
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Icon(
//                             Icons.star,
//                             color: colorred,
//                             size: 12,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: colorred,
//                             size: 12,
//                           ),
//                           Icon(
//                             Icons.star,
//                             color: colorred,
//                             size: 12,
//                           )
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 5,
//           ),
//         ],
//       ),
//     );
//   }
// }
