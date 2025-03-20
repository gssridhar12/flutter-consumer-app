import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/textWidget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class LuxBlackProfileSeeAllPagetile extends StatefulWidget {
  const LuxBlackProfileSeeAllPagetile({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LuxBlackProfileSeeAllPagetile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 0, right: 24),
          child: TextWidget(
              text:
                  'This is some of Neha’s work so that you can get a better understanding of their experience.'),
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //         builder: (context) => const PortfolioExpanded()));
            },
            child: Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 0,
              ),
              child: StaggeredGridView.count(
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 4,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 5.0,
                children: <Widget>[
                  ImageFeedDesign(image: 'assets/images/actor.png'),
                  ImageFeedDesign(image: 'assets/images/becomepartner4.png'),
                  ImageFeedDesign(image: 'assets/images/sliderimage.png'),
                  ImageFeedDesign(image: 'assets/images/becomepartner3.png'),
                  ImageFeedDesign(image: 'assets/images/becomepartner2.png'),
                  ImageFeedDesign(image: 'assets/images/successtory.png'),
                  ImageFeedDesign(image: 'assets/images/becomepartner3.png'),
                  // ... (add more images)
                ],
                staggeredTiles: const <StaggeredTile>[
                  StaggeredTile.fit(2),
                  StaggeredTile.fit(2),
                  StaggeredTile.fit(2),
                  StaggeredTile.fit(2),
                  StaggeredTile.fit(2),
                  StaggeredTile.fit(2),
                  StaggeredTile.fit(2),

                  // ... (add more staggered tiles)
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
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ),
                        ),
                        const SizedBox(height: 2.0),
                        Text(
                          distance,
                          style: const TextStyle(
                              color: Colors.black, fontSize: 10),
                        ),
                      ],
                    ),
                  ),
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
