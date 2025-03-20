// import 'dart:ui';

// import 'package:buttons_tabbar/buttons_tabbar.dart';
// import 'package:card_swiper/card_swiper.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/scheduler.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_consumer_app/core/colors/colors.dart';
// import 'package:flutter_consumer_app/core/constant/constant.dart';
// import 'package:flutter_consumer_app/features/home_section/src/presentation/widgets/most_booked_package_tile.dart';
// import 'package:flutter_consumer_app/features/partner_profile/presentation/bloc/partner_profile_bloc/partner_profile_bloc.dart';
// import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/about_tab_widget.dart';
// import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/faqs_tab_widget.dart';
// import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/gallery_tab_widget.dart';
// import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/packages_tab_widget.dart';
// import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/reviews_tab_widget.dart';
// import 'package:flutter_consumer_app/shared/widgets/container_icon_widget.dart';
// import 'package:flutter_consumer_app/shared/widgets/custom_partner_profile_image_widget.dart';
// import 'package:flutter_consumer_app/shared/widgets/icon_button_widget.dart';

// class PartnerProfilePage extends StatefulWidget {
//   const PartnerProfilePage({super.key, required this.uuid});

//   final String uuid;

//   @override
//   State<PartnerProfilePage> createState() => _PartnerProfilePageState();
// }

// class _PartnerProfilePageState extends State<PartnerProfilePage>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;
//   bool isFavourite = false;
//   int imageCount = 0;

//   @override
//   void initState() {
//     context.read<PartnerProfileBloc>().add(GetPartnerProfile(widget.uuid));

//     _tabController = TabController(length: 5, vsync: this);
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _tabController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;
//     // final height = MediaQuery.of(context).size.height;

//     return Scaffold(
//       backgroundColor: bggray,
//       body: BlocBuilder<PartnerProfileBloc, PartnerProfileState>(
//         builder: (context, state) {
//           if (state is GetPartnerProfileLoading) {
//             return SizedBox(
//               height: width * 0.72,
//               child: const Center(
//                 child: CircularProgressIndicator(),
//               ),
//             );
//           }
//           if (state is GetPartnerProfileFailed) {
//             return const Text('something went wrong');
//           }
//           if (state is GetPartnerProfileSuccess) {
//             final profile = state.partnerProfile.data.profileDetails;
//             final gallery = state.partnerProfile.data.gallery;
//             final faq = state.partnerProfile.data.faQs;

//             return CustomScrollView(
//               physics: const BouncingScrollPhysics(),
//               slivers: [
//                 SliverToBoxAdapter(
//                   child: Column(
//                     children: [
//                       Stack(
//                         children: [
//                           AspectRatio(
//                             aspectRatio: 1 / 1,
//                             child: Swiper(
//                               viewportFraction: 1,
//                               scale: 1.1,
//                               itemCount: profile.media.length,
//                               pagination: const SwiperPagination(
//                                 builder: DotSwiperPaginationBuilder(
//                                     color: colorgrey,
//                                     activeColor: colorwhite,
//                                     size: 5,
//                                     activeSize: 7),
//                               ),
//                               // control: const SwiperControl(),
//                               itemBuilder: (context, index) {
//                                 SchedulerBinding.instance
//                                     .addPostFrameCallback((_) {
//                                   setState(() {
//                                     imageCount = index;
//                                   });
//                                 });
//                                 return SizedBox(
//                                   height: width * 0.4,
//                                   width: width,
//                                   child: ClipRRect(
//                                     borderRadius: const BorderRadius.only(
//                                         bottomLeft: Radius.circular(20),
//                                         bottomRight: Radius.circular(20)),
//                                     child: Image.network(
//                                       profile.media[0].mediaType,
//                                       fit: BoxFit.cover,
//                                     ),
//                                   ),
//                                 );
//                               },
//                             ),
//                           ),
//                           Positioned(
//                               bottom: 0,
//                               child: ClipRRect(
//                                 borderRadius: const BorderRadius.only(
//                                     bottomLeft: Radius.circular(20),
//                                     bottomRight: Radius.circular(20)),
//                                 child: BackdropFilter(
//                                   blendMode: BlendMode.srcIn,
//                                   filter: ImageFilter.blur(
//                                       sigmaX: 10.0, sigmaY: 10.0),
//                                   child: Container(
//                                     width: width,
//                                     height: 50,
//                                     decoration: BoxDecoration(
//                                         color: Colors.grey.shade200
//                                             .withOpacity(0.2)),
//                                     child: Center(
//                                       child: Text(
//                                         profile.profileHeadline,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               )),
//                           Positioned(
//                               left: 20,
//                               top: 60,
//                               child: ContainerIconWidget(
//                                 onTap: () {
//                                   Navigator.pop(context);
//                                 },
//                                 icon: Icons.chevron_left_outlined,
//                               )),
//                           const Positioned(
//                             right: 20,
//                             top: 60,
//                             child: ContainerIconWidget(
//                               icon: Icons.share,
//                             ),
//                           ),
//                           Positioned(
//                               right: 80,
//                               top: 60,
//                               child: ContainerIconWidget(
//                                 isFavouite: isFavourite,
//                                 onTap: () {
//                                   setState(() {
//                                     isFavourite = !isFavourite;
//                                   });
//                                 },
//                                 icon: Icons.favorite_border_outlined,
//                               )),
//                           Positioned(
//                               right: 20,
//                               bottom: 60,
//                               child: ContainerIconWidget(
//                                 onTap: () {
//                                   _tabController.animateTo(4);
//                                 },
//                                 icon: Icons.grid_view_rounded,
//                               )),
//                           Positioned(
//                               left: 20,
//                               bottom: 60,
//                               child: ContainerIconWidget(
//                                 text:
//                                     '${imageCount + 1} of ${profile.media.length}',
//                               )),
//                         ],
//                       ),
//                       sbox20,
//                       Row(
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 10),
//                             child: CustomPartnerProfileImageWidget(
//                               color: Colors.yellow.shade700,
//                               image: profile.profileImage,
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 sbox5,
//                                 Text(
//                                   profile.profileName,
//                                   style: const TextStyle(
//                                       fontSize: 18,
//                                       color: colorblack,
//                                       fontWeight: FontWeight.w600),
//                                 ),
//                                 const PackageRatingAndOrderCountWidget(),
//                               ],
//                             ),
//                           ),
//                           const Spacer(),
//                           const Padding(
//                             padding: EdgeInsets.all(10),
//                             child: IconButtonWidget(buttonName: 'Chat'),
//                           ),
//                         ],
//                       ),
//                       sbox,
//                       DefaultTabController(
//                         initialIndex: 0,
//                         length: 5,
//                         child: Column(
//                           children: <Widget>[
//                             ButtonsTabBar(
//                               contentPadding:
//                                   const EdgeInsets.symmetric(horizontal: 20),
//                               buttonMargin: const EdgeInsets.symmetric(
//                                   horizontal: 20, vertical: 5),
//                               height: 55,
//                               controller: _tabController,
//                               elevation: 1,
//                               backgroundColor: Colors.red, radius: 15,
//                               unselectedBackgroundColor: colorwhite,
//                               labelStyle: const TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                               unselectedLabelStyle: const TextStyle(
//                                 color: Colors.black,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                               // Add your tabs here
//                               tabs: const [
//                                 Tab(
//                                   text: 'Packages',
//                                 ),
//                                 Tab(
//                                   text: 'About',
//                                 ),
//                                 Tab(
//                                   text: 'Reviews',
//                                 ),
//                                 Tab(
//                                   text: 'FAQs',
//                                 ),
//                                 Tab(
//                                   text: 'Gallery',
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SliverFillRemaining(
//                   // hasScrollBody: false,
//                   child: TabBarView(
//                     physics: const BouncingScrollPhysics(),
//                     controller: _tabController,
//                     children: [
//                       PackagesTabWidget(
//                           profile: profile,
//                           uuid: state.partnerProfile.data.partnerUuid),
//                       const AboutTabWidget(),
//                       const ReviewsTabWidget(),
//                       FaqsTabWidget(faq: faq),
//                       GalleryTabWidget(
//                         gallery: gallery,
//                       )
//                     ],
//                   ),
//                 )
//               ],
//             );
//           }
//           return const Text('Profile Data Api Failed');
//         },
//       ),
//     );
//   }
// }
