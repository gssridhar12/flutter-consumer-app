
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';

class MegmoGigsReel1 extends StatefulWidget {
  const MegmoGigsReel1({super.key, required this.megmoGig, this.profile,});
  final List<MegmoGig> megmoGig;
  final ProfileDetails? profile;

  @override
  State<MegmoGigsReel1> createState() => _MegmoGigsReel1State();
}

class _MegmoGigsReel1State extends State<MegmoGigsReel1> {

  List<String> imageurl = [
    "https://cdn.pixabay.com/photo/2023/03/12/18/26/girl-7847557_640.jpg",
    "https://static.remove.bg/sample-gallery/graphics/bird-thumbnail.jpg",
    "https://media.istockphoto.com/id/1188276282/photo/beautiful-woman-dancing-in-the-forest.jpg?s=612x612&w=0&k=20&c=Zp1LHLhRi3lP3EPj8yWPFNC2SEPqebPWziPIuIR3PHY=",
    "https://media.istockphoto.com/id/1188276267/photo/beautiful-woman-dancing-in-the-forest.jpg?s=612x612&w=0&k=20&c=x7uihkDxt1i7jBUVKbj856rwKBxLVAzz0OW6fQBpSjA="
  ];

  PageController _pageController = PageController();
  int currentPage = 0;
  Timer? _timer;
   bool isVolumeOn = false;
    bool isLiked = false;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (currentPage < imageurl.length - 1) {
        currentPage++;
      } else {
        currentPage = 0;
      }
    
      setState(() {
        _pageController.animateToPage(
          currentPage,
          duration: Duration(milliseconds: 500),
          curve: Curves.easeInOut,
        );
      });
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 40,
          ),
         
         
                SizedBox(
                  height: 750,
                  child: Stack(
                    children: [
                      PageView.builder(
                        controller: _pageController,
                        itemCount:
                        //imageurl.length,
                         widget.megmoGig.length,
                        physics: const BouncingScrollPhysics(),
                        onPageChanged: (index) {
                          // Ensure progress bar updates on manual scroll
                          setState(() {
                            currentPage = index; // Update the currentPage when manually scrolled
                          });
                        },
                        itemBuilder: (context, index) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    width: 420,
                                    height: 730,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12.28),
                                      gradient: LinearGradient(
                                        begin: Alignment(0.00, -1.00),
                                        end: Alignment(0, 1),
                                        colors: [
                                          Colors.black.withOpacity(0),
                                          Colors.black,
                                        ],
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(12.28),
                                      child: Image.network(
                                        widget.megmoGig[index].media![index].mediaType.toString(),
                                       // imageurl[index],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    left: 20,
                                    right: 20,
                                    child:  SizedBox(
                                      width: 400,
                                      child: LinearProgressIndicator(
                                                  value: (currentPage + 1) /
                                                  widget.megmoGig.length,
                                                   //imageurl.length,
                                                  backgroundColor: Colors.grey,
                                                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                                ),
                                    ),),
                                  Positioned(
                                    top: 65,
                                    right: 15,
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
                                    top: 65,
                                    left: 15,
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
                                    bottom: 190,
                                    right: 15,
                                    child: GestureDetector(
                                      onTap: () {
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
                              bottom: 120,
                              right: 12,
                              child: Column(
                                children: [
                                  sbox,
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        isLiked = !isLiked;
                                      });
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content: Text(isLiked
                                              ? 'Liked'
                                              : 'Unliked'),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      width: 48,
                                      height: 48,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.5),
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        isLiked
                                            ? Icons.favorite
                                            : Icons.favorite_border_outlined,
                                        color: isLiked
                                            ? Colors.red
                                            : colorblack,
                                        size: 24,
                                      ),
                                    ),)])),
                                  
                                  Positioned(
                                    bottom: 142,
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
                                    bottom: 95,
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
                                            for(int i=0;i<4;i++)
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                              size: 24,
                                            ),
                                           
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 55,
                                    left: 30,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.radio_button_checked,
                                          color: colorwhite,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 5.0),
                                          child: Text(
                                            'Nancy was great with her work, very professional. ',
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          );
                        },
                      ),
                    ],
                  ),
                )
        ],
      ),
    );
  }
}
