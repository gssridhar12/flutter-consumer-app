// ignore_for_file: no_leading_underscores_for_local_identifiers, unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/gallery_widget/galarry_reels.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';

class LatestTabWidget extends StatefulWidget {
  const LatestTabWidget({super.key, required this.gallery, this.name,});
  final List<Gallery> gallery;
  final String? name;

  @override
  State<LatestTabWidget> createState() => _LatestTabWidgetState();
}

class _LatestTabWidgetState extends State<LatestTabWidget> {
  @override
  Widget build(BuildContext context) {
    // Reverse the gallery list
    final reversedGallery = widget.gallery.reversed.toList();
    final PageController _pageController = PageController();
  int _currentPage = 0;

    return
    SizedBox(
      height: 600,
      child: PageView.builder(
          controller: _pageController,
          itemCount: 2, // Number of pages
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
          itemBuilder: (context, index) {
            if (index == 0) {
              return 
       GridView.builder(
        padding: EdgeInsets.zero,
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, 
          mainAxisSpacing: 0
        ),
        itemCount: reversedGallery.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8, right: 8),
            child: InkWell(
              onTap: () {
                  _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,);
               
              },
              child: CustomImage(
                imageUrl: reversedGallery[index].media![0].mediaType ?? "",
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          );
          
        },
           );
      } else if (index == 1) {
              return GalarryReels(
                      gallery: reversedGallery,
                     );
           
            } else {
              return Container();
            }
        }),
    );
}}


// import 'package:flutter/material.dart';
// import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
// import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';

// class LatestTabWidget extends StatelessWidget {
//   const LatestTabWidget({super.key, required this.gallery});
//   final List<Gallery> gallery;
//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       padding: EdgeInsets.zero,
//       physics: const BouncingScrollPhysics(),
//       shrinkWrap: true,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 3, mainAxisSpacing: 0),
//       itemCount: gallery.length,
//       itemBuilder: (BuildContext context, int index) {
//         return Padding(
//             padding: const EdgeInsets.only(top: 8.0, bottom: 8, right: 8),
//             child: CustomImage(
//               imageUrl: gallery[index].media?[0].mediaType??"",
//               borderRadius: BorderRadius.circular(10),
//             ));
//       },
//     );
//   }
// }


