import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/core/icons/app_icons_icons.dart';
import 'package:flutter_initicon/flutter_initicon.dart';
import 'package:sizer/sizer.dart';

class RewardsCardWidget extends StatelessWidget {
  const RewardsCardWidget({
    super.key,
    required this.isGuestUser,
    required this.name,
  });

  final bool isGuestUser;
  final String name;

  @override
  Widget build(BuildContext context) {
    return !isGuestUser
        ? Column(
            children: [
              Container(
                // height: width * 0.25,
                width: 100.w,
                decoration: BoxDecoration(
                    color: colorred.withOpacity(0.3),
                    borderRadius: const BorderRadiusDirectional.only(
                        topStart: Radius.circular(10),
                        topEnd: Radius.circular(10))),
                child: Stack(children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: AspectRatio(
                      aspectRatio: 1 / 0.8,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/tier_images/unnamed.png',
                          fit: BoxFit.cover,
                          alignment: Alignment.center,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(padding),
                            child: Initicon(
                              text: "Muhammed Bilal",
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(vertical: padding20),
                            child: SizedBox(
                              width: 15.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const FittedBox(
                                    child: Text(
                                      'Patron',
                                      style: TextStyle(
                                          color: colorwhite,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                  sbox5,
                                  const FittedBox(
                                    child: Text(
                                      'Level 0',
                                      style: TextStyle(
                                          color: colorwhite,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            width: 20.w,
                            child: FittedBox(
                              child: Text(
                                'View rewards',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: colorwhite.withOpacity(0.7),
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.keyboard_arrow_right_outlined,
                                color: colorwhite,
                              ))
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: padding15,
                        ),
                        child: SizedBox(
                          width: 100.h,
                          child: FittedBox(
                            child: Text(
                              'Book a Professional within 45 days and unlock level 2',
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  overflow: TextOverflow.clip,
                                  color: colorwhite.withOpacity(0.7)),
                            ),
                          ),
                        ),
                      ),
                      sbox
                    ],
                  ),
                ]),
              ),
              Container(
                height: 8.h,
                width: 100.w,
                alignment: Alignment.bottomCenter,
                decoration: const BoxDecoration(
                    color: colorwhite,
                    borderRadius: BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(10),
                        bottomStart: Radius.circular(10))),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: padding15, horizontal: padding20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            size: 24,
                            AppIcons.coins,
                            color: colorred,
                          ),
                        ],
                      ),
                      sboxW5,
                      const Text(
                        '250',
                        style: TextStyle(
                            fontSize: 20,
                            color: colorred,
                            fontWeight: FontWeight.w500),
                      ),
                      sboxW5,
                      const Text(
                        'coins',
                        style: TextStyle(
                            fontSize: 16,
                            color: colorblack,
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            size: 20,
                            AppIcons.calendar,
                            color: colorred,
                          ),
                        ],
                      ),
                      sboxW5,
                      const Text(
                        '45',
                        style: TextStyle(
                            fontSize: 20,
                            color: colorred,
                            fontWeight: FontWeight.w500),
                      ),
                      sboxW5,
                      const Text(
                        'days',
                        style: TextStyle(
                            fontSize: 16,
                            color: colorblack,
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          )
        : _disabledCard(100.w);
  }
}

Widget _disabledCard(width) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: padding15),
    child: Stack(
      // alignment: Alignment.bottomCenter,
      children: [
        ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
          child: Column(
            children: [
              Container(
                height: width * 0.3,
                width: width,
                decoration: BoxDecoration(
                    color: colorred.withOpacity(0.3),
                    borderRadius: BorderRadiusDirectional.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.all(padding),
                          child: CircleAvatar(
                            backgroundImage: NetworkImage(
                                'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png'),
                          ),
                        ),
                        const Padding(
                          padding: EdgeInsets.symmetric(vertical: padding20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Patron',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Level 0',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        const Text(
                          'View rewards',
                          style: TextStyle(fontSize: 16),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon:
                                const Icon(Icons.keyboard_arrow_right_outlined))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: padding15,
                      ),
                      child: SizedBox(
                        width: width * 0.55,
                        child: Text(
                          'Book a Professional within 45 days and unlock level 2',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w200,
                            overflow: TextOverflow.clip,
                            color: colorblack.withOpacity(0.7),
                          ),
                        ),
                      ),
                    ),
                    sbox
                  ],
                ),
              ),
              Container(
                height: width * 0.15,
                width: width,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                    color: colorwhite,
                    borderRadius: BorderRadiusDirectional.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: padding15, horizontal: padding20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Spacer(),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            size: 22,
                            Icons.monetization_on,
                            color: colorred,
                          ),
                        ],
                      ),
                      sboxW5,
                      const Text(
                        '250',
                        style: TextStyle(
                            fontSize: 25,
                            color: colorred,
                            fontWeight: FontWeight.w500),
                      ),
                      sboxW5,
                      const Text(
                        'coins',
                        style: TextStyle(
                            fontSize: 20,
                            color: colorblack,
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            size: 22,
                            Icons.calendar_month_rounded,
                            color: colorred,
                          ),
                        ],
                      ),
                      sboxW5,
                      const Text(
                        '45',
                        style: TextStyle(
                            fontSize: 25,
                            color: colorred,
                            fontWeight: FontWeight.w500),
                      ),
                      sboxW5,
                      const Text(
                        'days',
                        style: TextStyle(
                            fontSize: 20,
                            color: colorblack,
                            fontWeight: FontWeight.w500),
                      ),
                      const Spacer(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        const Positioned(
            bottom: 80,
            right: 50,
            left: 50,
            child: Icon(
              Icons.lock_outlined,
              color: colorred,
              size: 30,
            ))
      ],
    ),
  );
}
