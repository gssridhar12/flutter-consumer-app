// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/gallery_widget/galarry_reels.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';

class PopularTabWidget extends StatefulWidget {
  const PopularTabWidget({super.key, required this.gallery,});
  final List<Gallery> gallery;
  @override
  State<PopularTabWidget> createState() => _PopularTabWidgetState();
}

class _PopularTabWidgetState extends State<PopularTabWidget> {
  @override
  Widget build(BuildContext context) {
       final PageController _pageController = PageController();
  int _currentPage = 0;
    List<Gallery> profileGallery = widget.gallery.where((g) => g.assignedTo != null && g.assignedTo!.contains("PROFILE")).toList();

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
              return 
    GridView.builder(
      padding: EdgeInsets.zero,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 0,
      ),
      itemCount: profileGallery.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8, right: 8),
          child: InkWell(
            onTap: () {
                _pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,);
             
            },
            child: profileGallery[index].media != null && profileGallery[index].media!.isNotEmpty
                ? CustomImage(
                    imageUrl: profileGallery[index].media![0].mediaType ?? "",
                    borderRadius: BorderRadius.circular(10),
                  )
                : const Text("No image found"),
          ),
        );
      },
    );
  }
  else if (index == 1) {
              return GalarryReels(
                     gallery: profileGallery,);
           
            } else {
              return Container();
            }
}));}}
