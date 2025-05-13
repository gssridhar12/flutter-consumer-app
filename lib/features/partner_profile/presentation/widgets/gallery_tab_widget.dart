// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/gallery_widget/Oldest_tab_widget.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/gallery_widget/Popular_tab_widget.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/gallery_widget/latest_tab_widget.dart';

class GalleryTabWidget extends StatefulWidget {
  const GalleryTabWidget({super.key, required this.gallery, this.name});
  final List<Gallery> gallery;
  final String? name;
  @override
  State<GalleryTabWidget> createState() => _GalleryTabWidgetState();
}

class _GalleryTabWidgetState extends State<GalleryTabWidget> {
  int? _value = 0;

  late List<Widget> chipwidget;
  List<String> choiceChip = ['Latest', 'Popular', 'Oldest'];
  @override
  void initState() {
    LatestTabWidget(gallery: widget.gallery,);
    chipwidget = [
      LatestTabWidget(gallery: widget.gallery,),
      PopularTabWidget(gallery: widget.gallery,),
      OldestTabWidget (gallery: widget.gallery,),
    ];

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
           HeadingTextWidget(
                  text: '${widget.name}’s Gallery',
                  trailingButton: false,
                ),
                Wrap(
                  spacing: 5.0,
                  children: List<Widget>.generate(
                    3,
                    (int index) {
                      return ChoiceChip(
                        padding: const EdgeInsets.only(right: 10),
                        selectedColor: colorwhite,
                        color: const WidgetStatePropertyAll(colorwhite),
                        backgroundColor: colorwhite,
                        label: Text(choiceChip[index],
                            style: TextStyle(
                                decoration: _value == index
                                    ? TextDecoration.underline
                                    : null,
                                color: colorred)),
                        selected: _value == index,
                        onSelected: (bool selected) {
                          setState(() {
                            _value = selected ? index : index;
                          });
                        },
                      );
                    },
                  ).toList(),
                ),
                chipwidget[_value!]
              ],

        
            ),
          ),
        ),
      ),
    ]);
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter_consumer_app/core/colors/colors.dart';
// import 'package:flutter_consumer_app/core/constant/constant.dart';
// import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
// import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
// import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/gallery_widget/latest_tab_widget.dart';

// class GalleryTabWidget extends StatefulWidget {
//   const GalleryTabWidget({super.key, required this.gallery});
//   final List<Gallery> gallery;
//   @override
//   State<GalleryTabWidget> createState() => _GalleryTabWidgetState();
// }

// class _GalleryTabWidgetState extends State<GalleryTabWidget> {
//   int? _value = 0;

//   late List<Widget> chipwidget;
//   List<String> choiceChip = ['Latest', 'Popular', 'Oldest'];
//   @override
//   void initState() {
//     LatestTabWidget(gallery: widget.gallery);
//     chipwidget = [
//       LatestTabWidget(gallery: widget.gallery),
//       LatestTabWidget(gallery: widget.gallery),
//       LatestTabWidget(gallery: widget.gallery),
//     ];

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return CustomScrollView(
//       physics: const BouncingScrollPhysics(),
//       slivers: [
//       SliverToBoxAdapter(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: padding20),
//           child: SingleChildScrollView(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const HeadingTextWidget(
//                   text: 'Neha’s Gallery',
//                   trailingButton: false,
//                 ),
//                 Wrap(
//                   spacing: 5.0,
//                   children: List<Widget>.generate(
//                     3,
//                     (int index) {
//                       return ChoiceChip(
//                         padding: const EdgeInsets.only(right: 10),
//                         selectedColor: colorwhite,
//                         color: const WidgetStatePropertyAll(colorwhite),
//                         backgroundColor: colorwhite,
//                         label: Text(choiceChip[index],
//                             style: TextStyle(
//                                 decoration: _value == index
//                                     ? TextDecoration.underline
//                                     : null,
//                                 color: colorred)),
//                         selected: _value == index,
//                         onSelected: (bool selected) {
//                           setState(() {
//                             _value = selected ? index : index;
//                           });
//                         },
//                       );
//                     },
//                   ).toList(),
//                 ),
//                 chipwidget[_value!]
//               ],

//               // GridView.builder(
//               //   physics: const NeverScrollableScrollPhysics(),
//               //   shrinkWrap: true,
//               //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//               //       crossAxisCount: 3,
//               //       crossAxisSpacing: 10,
//               //       childAspectRatio: 1 / 1.12),
//               //   itemCount: 6,
//               //   itemBuilder: (BuildContext context, int index) {
//               //     return Padding(
//               //       padding: const EdgeInsets.symmetric(vertical: 10.0),
//               //       child: Column(
//               //         crossAxisAlignment: CrossAxisAlignment.center,
//               //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               //         children: [
//               //           ClipRRect(
//               //               borderRadius:
//               //                   const BorderRadius.all(Radius.circular(10)),
//               //               child: Image.asset(
//               //                 'assets/images/becomepartber23(4).png',
//               //                 fit: BoxFit.cover,
//               //               )),
//               //         ],
//               //       ),
//               //     );

//               //   },
//               // ),
//             ),
//           ),
//         ),
//       ),
//     ]);
//   }
// }
