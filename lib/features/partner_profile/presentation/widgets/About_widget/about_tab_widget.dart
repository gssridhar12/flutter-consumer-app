// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/most_booked_package_tile.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/About_widget/Portfolio_details.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/About_widget/Portfolio_seeall.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/About_widget/Story_gig.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/About_widget/megmo_gigs_seeall.dart';

import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:readmore/readmore.dart';

class AboutTabWidget extends StatelessWidget {
  const AboutTabWidget({
    super.key,
    required this.portfolio,
    required this.about,
    required this.megmoGig,
    required this.profile,
  });
  final List<MegmoGig> megmoGig;
  // final List<ProfileDetails> Profiledetail;
  final ProfileDetails profile;

  final List<Portfolio> portfolio;
  final String about;
  final LatLng _center = const LatLng(12.9716, 77.5946);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    List<BorderRadius> border = [
      const BorderRadius.only(topLeft: Radius.circular(10)),
      const BorderRadius.only(topRight: Radius.circular(10)),
      const BorderRadius.only(bottomLeft: Radius.circular(10)),
      const BorderRadius.only(bottomRight: Radius.circular(10))
    ];
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sbox20,
                const HeadingTextWidget(
                  text: 'Partner Information',
                  trailingButton: false,
                  size: 20,
                ),
                sbox20,
                ReadMoreText(
                  style: const TextStyle(fontSize: 16),
                  about,
                  trimLines: 5,
                  colorClickableText: Colors.pink,
                  trimMode: TrimMode.Line,
                  trimCollapsedText: 'Show more',
                  trimExpandedText: 'Show less',
                  moreStyle: const TextStyle(
                      fontSize: 14, fontWeight: FontWeight.bold),
                ),
                sbox20,
                HeadingTextWidget(
                    text: 'My Portfolio',
                    trailingButton: true,
                    trailingWidget: PortfolioSeeall(
                      portfolio: portfolio,
                      profile: profile,
                    )),
                sbox20,
                GridView.builder(
                  padding: EdgeInsets.zero,
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      childAspectRatio: 1 / 1,
                      crossAxisCount: 2,
                      mainAxisSpacing: 0),
                  itemCount: portfolio.length > 4 ? 4 : portfolio.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Portfolio_details(
                                        portfolio: portfolio,
                                        profile: profile,
                                      )));
                        },
                        child: CustomImage(
                          imageUrl: portfolio[index].projectCover ?? "",
                          borderRadius: border[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: ClipRRect(
                            borderRadius: index != 1 && index != 0
                                ? border[index]
                                : BorderRadius.zero,
                            child: BackdropFilter(
                              blendMode: BlendMode.srcIn,
                              filter:
                                  ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                              child: Container(
                                width: width,
                                height: 30,
                                decoration: BoxDecoration(
                                    color:
                                        Colors.grey.shade200.withOpacity(0.2)),
                                child: Center(
                                  child: Text(
                                    portfolio[index].projectHeadline ?? "",
                                  ),
                                ),
                              ),
                            ),
                          )),
                    ]);
                  },
                ),
                sbox20,
                HeadingTextWidget(
                  text: 'My Megmo Gigs',
                  trailingWidget: Gigs_seeall_page(
                    megmoGig: megmoGig,
                    profile: profile,
                  ),
                ),
                sbox20,
                SizedBox(
                  height: width * 0.7,
                  width: width,
                  child: ListView.builder(
                    // physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: megmoGig.length > 4 ? 4:megmoGig.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Stack(children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: SizedBox(
                              height: width * 0.8,
                              width: width * 0.4,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Storty_list(
                                              megmoGig: megmoGig,
                                              profile: profile,
                                            )),
                                  );
                                },
                                child: CustomImage(
                                  imageUrl: megmoGig[index].gigCover!,
                                  borderRadius: border[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                            left: 0,
                            right: 8,
                            bottom: 0,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(10),
                                  bottomRight: Radius.circular(10)),
                              child: BackdropFilter(
                                blendMode: BlendMode.srcIn,
                                filter: ImageFilter.blur(
                                    sigmaX: 10.0, sigmaY: 10.0),
                                child: Container(
                                  width: width,
                                  height: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.shade200
                                          .withOpacity(0.2)),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          megmoGig[index].gigHeadline ?? "",
                                          style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500,
                                              color: colorwhite),
                                        ),
                                        sbox5,
                                        Text(
                                          megmoGig[index].skills.toString(),
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w100,
                                            color: colorwhite,
                                          ),
                                          maxLines:
                                              1, // Ensure text is shown in a single line
                                          overflow: TextOverflow
                                              .ellipsis, // Show ellipsis (...) if the text is too long
                                        ),
                                        const PackageRatingAndReviewCountWidget(
                                          fontSize: 15,
                                          color: colorwhite,
                                          iconSize: 17,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            )),
                      ]);
                    },
                  ),
                ),
                sbox20,
                const Divider(
                  color: colorred,
                ),
                sbox20,

                Column(
                  children: [
                    ListTile(
                      leading:
                          Icon(Icons.location_on_outlined, color: Colors.red),
                      title: Text("Current location",
                          style: TextStyle(fontSize: 12)),
                      subtitle: Text(
                          "${profile.city}, ${profile.state}, ${profile.country}",
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                    Divider(
                        indent: 40,
                        thickness: 1), // Divider starting from title text

                    ListTile(
                      leading: Icon(Icons.live_help_sharp, color: Colors.red),
                      title: Text("Level", style: TextStyle(fontSize: 12)),
                      subtitle: Text(profile.skills.toString(),
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                    Divider(indent: 40, thickness: 1),

                    ListTile(
                      leading: Icon(Icons.language_outlined, color: Colors.red),
                      title: Text("Languages", style: TextStyle(fontSize: 12)),
                      subtitle: Text(profile.languages.toString(),
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                    Divider(indent: 40, thickness: 1),

                    ListTile(
                      leading: Icon(Icons.message_outlined, color: Colors.red),
                      title: Text("Avg-response time",
                          style: TextStyle(fontSize: 12)),
                      subtitle: Text("6 hours",
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                    Divider(indent: 40, thickness: 1),

                    ListTile(
                      leading:
                          Icon(Icons.location_on_outlined, color: Colors.red),
                      title: Text("Form", style: TextStyle(fontSize: 12)),
                      subtitle: Text(
                          "${profile.city}, ${profile.state}, ${profile.country}",
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                    Divider(indent: 40, thickness: 1),

                    ListTile(
                      leading: Icon(Icons.business_center_outlined,
                          color: Colors.red),
                      title: Text("No. of Gigs on Megmo",
                          style: TextStyle(fontSize: 12)),
                      subtitle: Text(megmoGig.length.toString(),
                          style: TextStyle(fontSize: 16, color: Colors.black)),
                    ),
                    Divider(indent: 40, thickness: 1),
                  ],
                ),

                Divider(
                  color: Colors.red,
                ),
                sbox20,
                SizedBox(
                    height: 250,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(children: [
                      GoogleMap(
                          initialCameraPosition:
                              CameraPosition(target: _center, zoom: 6)),
                      Positioned(
                          top: 70,
                          right: 50,
                          left: 50,
                          bottom: 70,
                          child: CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.red[100],
                            child: CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 30,
                                child: ClipRRect(
                                    borderRadius: BorderRadius.circular(41),
                                    child:
                                        Image.asset("assets/photos/ss.png"))),
                          ))
                    ])),
                // SizedBox(
                //     height: height * 0.25,
                //     width: width,
                //     child: ClipRRect(
                //       borderRadius: const BorderRadius.only(
                //           topLeft: Radius.circular(18),
                //           topRight: Radius.circular(18)),
                //       child: GoogleMap(
                //         onMapCreated: _onMapCreated,
                //         initialCameraPosition: CameraPosition(
                //           target: _center,
                //           zoom: 11.0,
                //         ),
                //         markers: _markers,
                //       ),
                //     ),
                //   ),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(color: colorgrey),
                    color: colorwhite,
                    borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(18),
                        bottomLeft: Radius.circular(18)),
                  ),
                  child: Center(
                    child: Text(
                      'Exact location provided after booking.',
                      style: TextStyle(color: colorblack.withOpacity(0.5)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 90,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}

// import 'dart:ui';

// import 'package:flutter/material.dart';
// import 'package:flutter_consumer_app/core/colors/colors.dart';
// import 'package:flutter_consumer_app/core/constant/constant.dart';
// import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
// import 'package:flutter_consumer_app/features/home_section/presentation/widgets/most_booked_package_tile.dart';
// import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
// import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/MegmoSeeAll.dart';
// import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/Portfolio_seeAll.dart';

// import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
// import 'package:readmore/readmore.dart';

// class AboutTabWidget extends StatelessWidget {
//   const AboutTabWidget(
//       {super.key, required this.portfolio, required this.about});

//   final List<Portfolio> portfolio;
//   final String about;
//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;

//     List<BorderRadius> border = [
//       const BorderRadius.only(topLeft: Radius.circular(10)),
//       const BorderRadius.only(topRight: Radius.circular(10)),
//       const BorderRadius.only(bottomLeft: Radius.circular(10)),
//       const BorderRadius.only(bottomRight: Radius.circular(10))
//     ];
//     return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
//       SliverToBoxAdapter(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               sbox20,
//               const HeadingTextWidget(
//                 text: 'Partner Information',
//                 trailingButton: false,
//                 size: 20,
//               ),
//               sbox20,
//               ReadMoreText(
//                 style: const TextStyle(fontSize: 16),
//                 about,
//                 trimLines: 5,
//                 colorClickableText: Colors.pink,
//                 trimMode: TrimMode.Line,
//                 trimCollapsedText: 'Show more',
//                 trimExpandedText: 'Show less',
//                 moreStyle:
//                     const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//               ),
//               sbox20,
//               const HeadingTextWidget(
//                   text: 'My Portfolio',
//                   trailingButton: true,
//                   trailingWidget: MyHomePagetile()),
//               sbox20,
//               GridView.builder(
//                 padding: EdgeInsets.zero,
//                 physics: const BouncingScrollPhysics(),
//                 shrinkWrap: true,
//                 gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisSpacing: 10,
//                     childAspectRatio: 1 / 1,
//                     crossAxisCount: 2,
//                     mainAxisSpacing: 0),
//                 itemCount: portfolio.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Stack(children: [
//                     CustomImage(
//                       imageUrl: portfolio[index].projectCover ?? "",
//                       borderRadius: border[index],
//                       fit: BoxFit.cover,
//                     ),
//                     Positioned(
//                         left: 0,
//                         right: 0,
//                         bottom: 12,
//                         child: ClipRRect(
//                           borderRadius: index != 1 && index != 0
//                               ? border[index]
//                               : BorderRadius.zero,
//                           child: BackdropFilter(
//                             blendMode: BlendMode.srcIn,
//                             filter:
//                                 ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
//                             child: Container(
//                               width: width,
//                               height: 30,
//                               decoration: BoxDecoration(
//                                   color: Colors.grey.shade200.withOpacity(0.2)),
//                               child: Center(
//                                 child: Text(
//                                   portfolio[index].projectHeadline ?? "",
//                                 ),
//                               ),
//                             ),
//                           ),
//                         )),
//                   ]);
//                 },
//               ),
//               sbox20,
//               const HeadingTextWidget(
//                 text: 'My Megmo Gigs',
//                 trailingWidget: MyMegmoSeeAllPagetile(),
//               ),
//               sbox20,
//               SizedBox(
//                 height: width * 0.7,
//                 width: width,
//                 child: ListView.builder(
//                   // physics: const BouncingScrollPhysics(),
//                   scrollDirection: Axis.horizontal,
//                   shrinkWrap: true,
//                   itemCount: 4,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Stack(children: [
//                       Padding(
//                         padding: const EdgeInsets.only(right: 8.0),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(10),
//                           child: SizedBox(
//                             height: width * 0.8,
//                             width: width * 0.4,
//                             child: Image.asset(
//                               'assets/images/becomepartber23(3).png',
//                               fit: BoxFit.cover,
//                             ),
//                           ),
//                         ),
//                       ),
//                       Positioned(
//                           left: 0,
//                           right: 8,
//                           bottom: 0,
//                           child: ClipRRect(
//                             borderRadius: const BorderRadius.only(
//                                 bottomLeft: Radius.circular(10),
//                                 bottomRight: Radius.circular(10)),
//                             child: BackdropFilter(
//                               blendMode: BlendMode.srcIn,
//                               filter:
//                                   ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
//                               child: Container(
//                                 width: width,
//                                 height: 90,
//                                 decoration: BoxDecoration(
//                                     color:
//                                         Colors.grey.shade200.withOpacity(0.2)),
//                                 child: Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Column(
//                                     crossAxisAlignment:
//                                         CrossAxisAlignment.start,
//                                     children: [
//                                       const Text(
//                                         'Nancy King',
//                                         style: TextStyle(
//                                             fontSize: 18,
//                                             fontWeight: FontWeight.w500,
//                                             color: colorwhite),
//                                       ),
//                                       sbox5,
//                                       const Text(
//                                         'Hair & Makeup Artist',
//                                         style: TextStyle(
//                                             fontSize: 14,
//                                             fontWeight: FontWeight.w100,
//                                             color: colorwhite),
//                                       ),
//                                       const PackageRatingAndReviewCountWidget(
//                                         fontSize: 15,
//                                         color: colorwhite,
//                                         iconSize: 17,
//                                       )
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           )),
//                     ]);
//                   },
//                 ),
//               ),
//               sbox20,
//               const Divider(
//                 color: colorred,
//               ),
//               sbox20,
//             ],
//           ),
//         ),
//       ),
//     ]);
//   }
// }
