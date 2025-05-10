
// ignore_for_file: prefer_const_constructors, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/gallery_widget/galarry_reels.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';

class OldestTabWidget extends StatefulWidget {
  const OldestTabWidget({super.key, required this.gallery, this.name,  this.pageController});
  final List<Gallery> gallery;

   final String? name;
    final PageController? pageController;

  @override
  State<OldestTabWidget> createState() => _OldestTabWidgetState();
}

class _OldestTabWidgetState extends State<OldestTabWidget> {
  @override
  Widget build(BuildContext context) {
     final PageController _pageController = PageController();
  // ignore: unused_local_variable
  int _currentPage = 0;
    return SizedBox(
      height: 800,
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
              return GridView.builder(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, mainAxisSpacing: 0),
      itemCount: widget.gallery.length,
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
                imageUrl: 
                widget.gallery[index].media![0].mediaType??"",
                borderRadius: BorderRadius.circular(10),
              ),
            ));
      },
    );
  }
  else if (index == 1) {
              return GalarryReels(gallery: widget.gallery,);
           
            } else {
              return Container();
            }
}));}}