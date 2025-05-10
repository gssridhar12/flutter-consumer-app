import 'dart:ui';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/pages/booking_details_page.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/pages/chat_screen_custom.dart';
// import 'package:flutter_consumer_app/features/home_section/src/domain/entities/response/get_like_entity.dart';
// import 'package:flutter_consumer_app/features/home_section/src/domain/entities/response/get_package_like_entity.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/package_like_bloc/package_like_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/like_button.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/most_booked_package_tile.dart';
import 'package:flutter_consumer_app/features/packages_section/presentation/bloc/package_details_bloc/package_details_bloc.dart';
import 'package:flutter_consumer_app/features/packages_section/presentation/bloc/package_review_bloc/package_review_bloc.dart';
import 'package:flutter_consumer_app/features/packages_section/presentation/bloc/reviews_bloc/review_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/packages_section/presentation/widgets/package_heading_widget.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/bloc/partner_profile_bloc/partner_profile_bloc.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/pages/partner_profile_animated.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/package_widgets/text_container_widget.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:flutter_consumer_app/shared/widgets/container_icon_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_partner_profile_image_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/error_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/icon_button_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/rating_card_widget.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:flutter_widget_from_html/flutter_widget_from_html.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:readmore/readmore.dart';
import 'package:sizer/sizer.dart';

class PackageDetailsPage extends StatefulWidget {
  const PackageDetailsPage({super.key, required this.uuid});
  final String uuid;
  @override
  State<PackageDetailsPage> createState() => _PackageDetailsPageState();
}

class _PackageDetailsPageState extends State<PackageDetailsPage> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(37.7749, -122.4194);
  final Set<Marker> _markers = {};

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  final String userId = localDb.getString('id') ?? "";

  late final packageBloc = BlocProvider.of<PackageReviewBloc>(context);
  late final partnerBloc = GetIt.instance<PartnerReviewBloc>();
  ValueNotifier<int> indexNotifier = ValueNotifier<int>(0);
  bool isDataLoaded = false;

  @override
  void initState() {
    BlocProvider.of<PackageDetailsBloc>(context)
        .add(GetPackageDetails(widget.uuid));
    if (userId != "") {
      context.read<PackageLikeBloc>().add(GetPackageLike(userId: userId));
    }

    packageBloc.add(GetPackageReviews(widget.uuid));
    Future.delayed(const Duration(milliseconds: 1000)).then((value) =>
        BlocProvider.of<PartnerReviewBloc>(context)
            .add(GetPartnerReviews(widget.uuid)));
    partnerBloc.add(GetPartnerReviews(widget.uuid));

    super.initState();
  }

  // bool checkIfLiked(List<LikedPackage> package, String packageUuid) {
  //   if (package.isEmpty) return false;
  //   final isLiked = package
  //       .any((e) => e.contains(packageUuid) && e.isLiked == true);
  //   print(isLiked);
  //   return isLiked;
  // }

  bool isFavourite = false;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: bggray,
      body: BlocBuilder<PackageDetailsBloc, PackageDetailsState>(
        builder: (context, state) {
          if (state is GetPackageDetailsLoading) {
            return SizedBox(
              height: width * 0.72,
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
          if (state is GetPackageDetailsFailed) {
            return const ShowErrorWidget();
          }
          if (state is GetPackageDetailsSuccess) {
            final package = state.packageDetails.data;
            final packageReviews = state.packageDetails.data!.packageReviews;

            context
                .read<PartnerProfileBloc>()
                .add(GetPartnerProfile(package!.packageDetails!.partnerUuid!));
            return Stack(
              children: [
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      ValueListenableBuilder(
                          valueListenable: indexNotifier,
                          builder: (context, indexValue, _) => Stack(
                                children: [
                                  AspectRatio(
                                    aspectRatio: 1 / 1,
                                    child: Swiper(
                                      viewportFraction: 1,
                                      scale: 1.1,
                                      itemCount: 3,
                                      pagination: const SwiperPagination(
                                        builder: DotSwiperPaginationBuilder(
                                            color: colorgrey,
                                            activeColor: colorwhite,
                                            size: 5,
                                            activeSize: 7),
                                      ),
                                      // control: const SwiperControl(),
                                      itemBuilder: (context, index) {
                                        WidgetsBinding.instance
                                            .addPostFrameCallback((_) {
                                          indexNotifier.value = index;
                                        });

                                        return SizedBox(
                                            height: width * 0.4,
                                            width: width,
                                            child: CustomImage(
                                                imageUrl: package
                                                        .packageDetails!
                                                        .packageGallery![index]
                                                        .mediatype ??
                                                    ""));
                                      },
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    child: ClipRRect(
                                      child: BackdropFilter(
                                        blendMode: BlendMode.srcIn,
                                        filter: ImageFilter.blur(
                                            sigmaX: 10.0, sigmaY: 10.0),
                                        child: Container(
                                          width: width,
                                          height: 65,
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
                                                  package
                                                          .packageDetails
                                                          ?.packageGallery?[
                                                              indexValue]
                                                          .description ??
                                                      "",
                                                  style: const TextStyle(
                                                      color: colorwhite,
                                                      fontSize: 18),
                                                ),
                                                sbox5,
                                                Text(
                                                  package.packageDetails
                                                              ?.createdOn !=
                                                          null
                                                      ? '${DateFormat('EEEE').format(package.packageDetails!.createdOn!)}, ${package.packageDetails!.createdOn!.day}th ${DateFormat('MMMM').format(package.packageDetails!.createdOn!)}, ${package.packageDetails!.createdOn!.year}'
                                                      : 'Date not available', // Fallback text when `createdOn` is null
                                                  style: const TextStyle(
                                                    color: colorwhite,
                                                    fontSize: 16,
                                                  ),
                                                ),

                                                // Text(
                                                //   '${DateFormat('EEEE').format(package.packageDetails!.createdOn!)}, ${package.packageDetails!.createdOn!.day.toString()}th ${DateFormat('MMMM').format(package.packageDetails!.createdOn!)}, ${package.packageDetails!.createdOn!.year.toString()}',
                                                //   style: const TextStyle(
                                                //       color: colorwhite,
                                                //       fontSize: 16),
                                                // ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 20,
                                    top: 60,
                                    child: ContainerIconWidget(
                                      onTap: () =>
                                          AppNavigation.popNavigation(context),
                                      icon: Icons.chevron_left,
                                    ),
                                  ),
                                  Positioned(
                                    right: 30,
                                    top: 60,
                                    child: LikeButton(
                                      packageUuid: widget.uuid,
                                      userId: userId,
                                      widgetType: WidgetType.packagescreen,
                                    ),
                                  ),
                                  // const Positioned(
                                  //   right: 20,
                                  //   top: 60,
                                  //   child: ContainerIconWidget(
                                  //     icon: Icons.share,
                                  //   ),
                                  // ),
                                  Positioned(
                                      right: 20,
                                      bottom: 70,
                                      child: ContainerIconWidget(
                                        onTap: () {},
                                        icon: Icons.grid_view_rounded,
                                      )),
                                  Positioned(
                                    left: 20,
                                    bottom: 70,
                                    child: ContainerIconWidget(
                                      text:
                                          '${indexValue + 1} of ${package.packageDetails!.packageGallery!.length}',
                                    ),
                                  ),
                                ],
                              )),
                      // const Spacer(),
                      sbox20,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    sbox5,
                                    Text(
                                      package.packageDetails!.packageName ?? "",
                                      style: const TextStyle(
                                          fontSize: 20,
                                          color: colorblack,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    PackageRatingAndReviewCountWidget(
                                        review: package
                                                .reviewAverages?.overallAverage
                                                ?.toStringAsFixed(1) ??
                                            "",
                                        reviewCount: package
                                            .packageReviews!.length
                                            .toString()),
                                  ],
                                ),
                                const Spacer(),
                                SizedBox(
                                  width: 85,
                                  child: IconButtonWidget(
                                    buttonName: 'Chat',
                                    onTap: () {
                                      AppNavigation.pushNavigation(
                                        context,
                                        ChatScreenCustom(
                                          partnerUuid: package
                                              .packageDetails!.partnerUuid!,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                            sbox,
                            ReadMoreText(
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                              package.packageDetails!.packageHeadline ?? "",
                              trimLines: 2,
                              colorClickableText: Colors.pink,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: 'Show less',
                              moreStyle: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            sbox20,
                            Wrap(
                              children: [
                                // TextContainerWidget(
                                //   text: 'Hot selling in music',
                                //   color: colorred.withOpacity(0.2),
                                // ),
                                // TextContainerWidget(
                                //   text: 'Door step service',
                                //   color: colorred.withOpacity(0.2),
                                // ),
                                ...package.packageDetails!.packageKeywords!
                                    .map((keyword) {
                                  return TextContainerWidget(
                                    text: keyword,
                                    color: colorred.withOpacity(0.2),
                                  );
                                }).toList(),
                              ],
                            ),
                            sbox20,
                            PackageHeadingWidget(
                              icon: Icons.menu_book_sharp,
                              text: 'Package description',
                            ),
                            sbox20,
                            ReadMoreText(
                              style: const TextStyle(
                                  fontSize: 16, wordSpacing: 2, height: 1.1),
                              package.packageDetails!.packageDescription ?? "",
                              trimLines: 4,
                              colorClickableText: Colors.pink,
                              trimMode: TrimMode.Line,
                              trimCollapsedText: 'Show more',
                              trimExpandedText: 'Show less',
                              moreStyle: const TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                            sbox20,
                            PackageHeadingWidget(
                              icon: Icons.bookmark_add_outlined,
                              text: 'Inclusions',
                            ),
                            sbox20,
                            Container(
                              transform:
                                  Matrix4.translationValues(-23.0, 0.0, 0.0),
                              transformAlignment: Alignment.centerRight,
                              padding: EdgeInsets.zero,
                              margin: EdgeInsets.zero,
                              alignment: Alignment
                                  .centerLeft, // Aligning the container's content to the left
                              child: HtmlWidget(
                                textStyle: const TextStyle(
                                    height: 1.3,
                                    fontSize: 16,
                                    overflow: TextOverflow.ellipsis),
                                package.packageDetails!.packageInclusions!,
                                // '<ul><li><strong>Duration : </strong>1 hour</li><li><strong>Equipment : </strong>Icluded</li></ul>',
                              ),
                            ),
                            // ListView.builder(
                            //   physics: const NeverScrollableScrollPhysics(),
                            //   padding: EdgeInsets.zero,
                            //   shrinkWrap: true,
                            //   itemCount: 3,
                            //   itemBuilder: (BuildContext context, int index) {
                            //     return Column(
                            //       children: [
                            //         BulletedTextWidget(
                            //             width: width,
                            //             boldText: 'Category',
                            //             text: package.packageDetails!
                            //                 .packageInclusions![0]),
                            //         sbox
                            //       ],
                            //     );
                            //   },
                            // ),
                            sbox20,
                            PackageHeadingWidget(
                              icon: Icons.bookmark_remove_outlined,
                              text: 'Exclusions',
                            ),
                            sbox20,
                            Container(
                              transform:
                                  Matrix4.translationValues(-23.0, 0.0, 0.0),
                              transformAlignment: Alignment.centerRight,
                              padding: EdgeInsets.zero,
                              margin: EdgeInsets.zero,
                              alignment: Alignment
                                  .centerLeft, // Aligning the container's content to the left
                              child: HtmlWidget(
                                textStyle: const TextStyle(
                                    height: 1.3,
                                    fontSize: 16,
                                    overflow: TextOverflow.ellipsis),
                                package.packageDetails!.packageExclusions!,
                                // '<ul><li><strong>Duration : </strong>1 hour</li><li><strong>Equipment : </strong>Icluded</li></ul>',
                              ),
                            ),
                            sbox20,
                            PackageHeadingWidget(
                              icon: Icons.school_outlined,
                              text: 'Must knows',
                            ),
                            sbox20,
                            Container(
                              transform:
                                  Matrix4.translationValues(-23.0, 0.0, 0.0),
                              transformAlignment: Alignment.centerRight,
                              padding: EdgeInsets.zero,
                              margin: EdgeInsets.zero,
                              alignment: Alignment.centerLeft,
                              child: HtmlWidget(
                                textStyle: const TextStyle(
                                    height: 1.3,
                                    fontSize: 16,
                                    overflow: TextOverflow.ellipsis),
                                package.packageDetails!.packageMustKnows!,
                                // '<ul><li><strong>Duration : </strong>1 hour</li><li><strong>Equipment : </strong>Icluded</li></ul>',
                              ),
                            ),
                            sbox20,
                            BlocBuilder<PartnerProfileBloc,
                                PartnerProfileState>(
                              builder: (context, state) {
                                if (state is GetPartnerProfileLoading) {
                                  return SizedBox(
                                    height: width * 0.72,
                                    child: const Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }
                                if (state is GetPartnerProfileFailed) {
                                  return const ShowErrorWidget();
                                }
                                if (state is GetPartnerProfileSuccess) {
                                  final profileName = state.partnerProfile.data
                                      ?.profile?.profileDetails?.profileName;
                                  //  if(state.partnerProfile.data!=null){ final partnerReviews =
                                  //       state.partnerProfile.data!.profileReviews;}
                                  return PackageHeadingWidget(
                                    icon: Icons.location_on_outlined,
                                    text: '$profileName be traveling form here',
                                  );
                                }
                                return const Text('partner profile not found');
                              },
                            ),

                            sbox20,
                            SizedBox(
                              height: height * 0.25,
                              width: width,
                              child: Stack(children: [
                                ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(18),
                                      topRight: Radius.circular(18)),
                                  child: GoogleMap(
                                    onMapCreated: _onMapCreated,
                                    zoomControlsEnabled: false,
                                    initialCameraPosition: CameraPosition(
                                      target: _center,
                                      zoom: 11.0,
                                    ),
                                    markers: _markers,
                                  ),
                                ),
                                Positioned.fill(
                                  bottom: 50,
                                  top: 50,
                                  child: CircleAvatar(
                                    radius: 20,
                                    backgroundColor: colorred.withOpacity(0.3),
                                    child: CustomPartnerProfileImageWidget(
                                        height: 70,
                                        width: 70,
                                        image: package.packageDetails
                                                ?.packageCoverImage ??
                                            '',
                                        color: Colors.yellow),
                                  ),
                                ),
                              ]),
                            ),
                            Container(
                              height: height * 0.05,
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
                                  style: TextStyle(
                                      color: colorblack.withOpacity(0.5)),
                                ),
                              ),
                            ),
                            sbox20,
                            PackageHeadingWidget(
                              trailingWidget: true,
                              icon: Icons.reviews_outlined,
                              text: 'Package Reviews and Ratings',
                            ),
                            sbox20,
                            package.packageReviews!.isNotEmpty &&
                                    package.packageReviews == null
                                ? SizedBox(
                                    height: height * 0.26,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      padding: EdgeInsets.zero,
                                      physics: const BouncingScrollPhysics(),
                                      shrinkWrap: true,
                                      itemCount: packageReviews!.length,
                                      itemBuilder:
                                          (BuildContext context, int index) {
                                        return RatingCardWidget(
                                          width: width,
                                          packageData: packageReviews[index],
                                        );
                                      },
                                    ),
                                  )
                                : const ShowErrorWidget(
                                    errorText: "No reviews available",
                                  ),
                            sbox20,
                            PackageHeadingWidget(
                              icon: Icons.location_on_outlined,
                              text: 'Service Provided by ',
                            ),
                            sbox20,
                            BlocBuilder<PartnerProfileBloc,
                                PartnerProfileState>(
                              builder: (context, state) {
                                if (state is GetPartnerProfileLoading) {
                                  return SizedBox(
                                    height: width * 0.72,
                                    child: const Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }
                                if (state is GetPartnerProfileFailed) {
                                  return const ShowErrorWidget();
                                }
                                if (state is GetPartnerProfileSuccess) {
                                  final partner = state.partnerProfile.data;
                                  //  if(state.partnerProfile.data!=null){ final partnerReviews =
                                  //       state.partnerProfile.data!.profileReviews;}
                                  return state.partnerProfile.data != null
                                      ? Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomPartnerProfileImageWidget(
                                                  color: Colors.yellow.shade700,
                                                  image: partner!
                                                          .profile!
                                                          .profileDetails!
                                                          .profileImage ??
                                                      "",
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      sbox5,
                                                      Text(
                                                        partner
                                                                .profile!
                                                                .profileDetails!
                                                                .profileName ??
                                                            "",
                                                        style: const TextStyle(
                                                            fontSize: 18,
                                                            color: colorblack,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w600),
                                                      ),
                                                      PackageRatingAndOrderCountWidget(
                                                          review: partner
                                                              .reviewAverages!
                                                              .overallAverage
                                                              .toString(),
                                                          reviewCount: partner
                                                              .profileReviews!
                                                              .length
                                                              .toString()),
                                                    ],
                                                  ),
                                                ),
                                                const Spacer(),
                                                ButtonWidget(
                                                  borderRadius: 25,
                                                  text: "View Profile",
                                                  buttonColor: colorred,
                                                  width: 30.w,
                                                  color: colorwhite,
                                                  onPressed: () {
                                                    AppNavigation.pushNavigation(
                                                        context,
                                                        PartnerProfileAnimated(
                                                            uuid: partner
                                                                .profile!
                                                                .partnerUuid!));
                                                  },
                                                )
                                              ],
                                            ),
                                            sbox,
                                            Container(
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: colorred),
                                              child: const Padding(
                                                padding: EdgeInsets.all(7.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    Icon(Icons.stars_outlined,
                                                        color: colorwhite),
                                                    Text(
                                                      'Megmo Preferred Partner',
                                                      style: TextStyle(
                                                          color: colorwhite),
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                            sbox,
                                            const Wrap(
                                              children: [
                                                TextContainerWidget(
                                                    text:
                                                        'Megmo Preferred Partner',
                                                    color: colorwhite),
                                                TextContainerWidget(
                                                    text: 'Door step service',
                                                    color: colorwhite),
                                                TextContainerWidget(
                                                    text: 'Gold',
                                                    color: colorwhite),
                                              ],
                                            ),
                                            sbox20,
                                            ReadMoreText(
                                              style: const TextStyle(
                                                  fontSize: 16, height: 1.5),
                                              partner.profile!.profileDetails!
                                                      .profileCoverDescription ??
                                                  "",
                                              trimLines: 3,
                                              colorClickableText: Colors.pink,
                                              trimMode: TrimMode.Line,
                                              trimCollapsedText: 'Show more',
                                              trimExpandedText: 'Show less',
                                              moreStyle: const TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            sbox20,
                                            PackageHeadingWidget(
                                              trailingWidget: true,
                                              icon: Icons.location_on_outlined,
                                              text:
                                                  'Partner Reviews and Ratings',
                                            ),
                                            sbox20,
                                            partner.profileReviews!.isNotEmpty
                                                ? SizedBox(
                                                    height: height * 0.26,
                                                    child: ListView.builder(
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      padding: EdgeInsets.zero,
                                                      physics:
                                                          const BouncingScrollPhysics(),
                                                      shrinkWrap: true,
                                                      itemCount: partner
                                                          .profileReviews!
                                                          .length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return RatingCardWidget(
                                                          width: width,
                                                          packageData: partner
                                                                  .profileReviews![
                                                              index],
                                                        );
                                                      },
                                                    ),
                                                  )
                                                : const ShowErrorWidget(
                                                    errorText:
                                                        "No reviews available",
                                                  )
                                          ],
                                        )
                                      : const Text('Not Available');
                                }
                                return const Text('data');
                              },
                            ),
                            sbox20,
                            sbox20,
                            sbox20,
                            sbox20,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  // top: 820,
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: colorwhite,
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '₹ old Package cost',
                                style: TextStyle(
                                    color: colorblack.withOpacity(0.5),
                                    decoration: TextDecoration.lineThrough,
                                    fontSize: 16),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '₹ ${package.packageDetails!.packageCost ?? ""}',
                                    style: const TextStyle(
                                        fontSize: 22,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  sboxW,
                                  Text(
                                    '${package.packageDetails!.couponsAndDiscounts ?? ""} off',
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.normal),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: ButtonWidget(
                            onPressed: () {
                              AppNavigation.pushNavigation(
                                context,
                                BookingDetailsPage(
                                    packageUuid: state.packageDetails.data!
                                        .packageDetails!.packageUuid!),
                              );
                            },
                            text: 'Proceed',
                            borderRadius: 30,
                            width: width * 0.3,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            );
          }
          return const Text('partner package api failed');
        },
      ),
    );
  }
}
