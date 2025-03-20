import 'dart:ui';
import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/pages/chat_screen_custom.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/bloc/partner_like_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/bloc/partner_like_bloc_event.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/package_like_bloc/package_like_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/most_booked_package_tile.dart';
import 'package:flutter_consumer_app/features/packages_section/presentation/bloc/reviews_bloc/review_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/bloc/partner_profile_bloc/partner_profile_bloc.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/about_tab_widget.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/faqs_tab_widget.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/favourite_button.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/gallery_tab_widget.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/packages_tab_widget.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/reviews_tab_widget.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:flutter_consumer_app/shared/widgets/container_icon_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_partner_profile_image_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/icon_button_widget.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';

class PartnerProfileAnimated extends StatefulWidget {
  const PartnerProfileAnimated({super.key, required this.uuid});
  final String uuid;

  @override
  State<PartnerProfileAnimated> createState() => _PartnerProfileAnimatedState();
}

class _PartnerProfileAnimatedState extends State<PartnerProfileAnimated>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  bool isFavourite = false;
  int imageCount = 0;
  final String userId = localDb.getString('id')!;

  @override
  void initState() {
    context.read<PartnerProfileBloc>().add(GetPartnerProfile(widget.uuid));
    BlocProvider.of<PartnerReviewBloc>(context)
        .add(GetPartnerReviews(widget.uuid));
    BlocProvider.of<PartnerLikeBloc>(context)
        .add(GetPartnerLike(partnerUuid: userId));

    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: BlocBuilder<PartnerProfileBloc, PartnerProfileState>(
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
            return const Text('something went wrong');
          }
          if (state is GetPartnerProfileSuccess) {
            final rating = state.partnerProfile.data!.reviewAverages;
            final reviews = state.partnerProfile.data!.profileReviews!;
            final reviewsAvarage = state.partnerProfile.data!.reviewAverages;

            final profile = state.partnerProfile.data!.profile!.profileDetails;
            final gallery = state.partnerProfile.data!.profile!.gallery;
            final faq = state.partnerProfile.data!.profile!.faQs;
            final portfolio = state.partnerProfile.data!.profile!.portfolio;

            // final partnerAvarageRating = getAvarageRating(rating);

            return DefaultTabController(
              length: 5,
              initialIndex: 1,
              child: NestedScrollView(
                physics: const BouncingScrollPhysics(),
                headerSliverBuilder: (context, innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      automaticallyImplyLeading: false,
                      stretch: true,
                      backgroundColor: colorwhite,
                      pinned: true,
                      elevation: 0,
                      expandedHeight: 450,
                      bottom: PreferredSize(
                        preferredSize: const Size.fromHeight(25),
                        child: Container(
                          color: colorwhite,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 10),
                                child: CustomPartnerProfileImageWidget(
                                  height: 60,
                                  width: 60,
                                  color: Colors.yellow.shade700,
                                  image: profile.profileImage ?? "",
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    sbox5,
                                    Text(
                                      profile.profileName ?? "",
                                      style: const TextStyle(
                                          fontSize: 18,
                                          color: colorblack,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    rating != null
                                        ? PackageRatingAndOrderCountWidget(
                                            review: rating.overallAverage
                                                .toString(),
                                            reviewCount:
                                                reviews.length.toString())
                                        : const Text('Nothing to show here')
                                  ],
                                ),
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(10),
                                child: IconButtonWidget(
                                  buttonName: 'Chat',
                                  onTap: () {
                                    AppNavigation.pushNavigation(
                                        context,
                                        const ChatScreenCustom(
                                            showPopUp: true,
                                            partnerUuid:
                                                '761f5aba-26f3-4edb-a4fe-9d1ef2b68881'));
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      flexibleSpace: FlexibleSpaceBar(
                        background: Column(
                          children: [
                            Stack(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1 / 1,
                                  child: Swiper(
                                    viewportFraction: 1,
                                    scale: 1.1,
                                    itemCount: profile.media!.length,
                                    pagination: const SwiperPagination(
                                      builder: DotSwiperPaginationBuilder(
                                          color: colorgrey,
                                          activeColor: colorwhite,
                                          size: 5,
                                          activeSize: 7),
                                    ),
                                    // control: const SwiperControl(),
                                    itemBuilder: (context, index) {
                                      // SchedulerBinding.instance
                                      //     .addPostFrameCallback((_) {
                                      //   setState(() {
                                      //     imageCount = index;
                                      //   });
                                      // });
                                      return SizedBox(
                                        height: width * 0.4,
                                        width: width,
                                        child: ClipRRect(
                                          borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20),
                                              bottomRight: Radius.circular(20)),
                                          child: CustomImage(
                                            imageUrl:
                                                profile.media?[0].mediaType ??
                                                    "",
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      );
                                    },
                                  ),
                                ),
                                Positioned(
                                  left: 20,
                                  top: 60,
                                  child: ContainerIconWidget(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    icon: Icons.chevron_left_outlined,
                                  ),
                                ),
                                const Positioned(
                                  right: 20,
                                  top: 60,
                                  child: ContainerIconWidget(
                                    icon: Icons.share,
                                  ),
                                ),
                                ProfileFavoriteButtonWidget(
                                    userId: userId, partnerUuid: widget.uuid),
                                // Positioned(
                                //   right: 80,
                                //   top: 60,
                                //   child: BlocBuilder<LikeBloc, LikeBlocState>(
                                //     builder: (context, likeState) {
                                //       if (likeState is GetPartnerLikeLoading) {
                                //         const SizedBox(
                                //           child: Center(
                                //             child: CircularProgressIndicator(),
                                //           ),
                                //         );
                                //       }
                                //       if (likeState is GetPartnerLikeFailed) {
                                //         const Icon(
                                //           Icons.abc,
                                //           color: colorred,
                                //         );
                                //       }
                                //       if (likeState is GetPartnerLikeSuccess) {
                                //         isFavourite = checkIfLiked(
                                //             likeState.getPartnerLikeEntity.data,
                                //             widget.uuid);
                                //         print(
                                //             "After checkIfLiked: $isFavourite");
                                //         return ContainerIconWidget(
                                //           onTap: () {
                                //             BlocProvider.of<LikeBloc>(context)
                                //                 .add(AddPartnerLike(
                                //                     addPartnerLikeRequest:
                                //                         AddPartnerLikeRequest(
                                //                             userUuid: userId,
                                //                             profileUuid:
                                //                                 widget.uuid,
                                //                             isLiked:
                                //                                 !isFavourite)));
                                //           },
                                //           isFavouite: !isFavourite,
                                //           icon: Icons.favorite,
                                //         );
                                //       }
                                //       return BlocListener<LikeBloc,
                                //           LikeBlocState>(
                                //         child: ContainerIconWidget(
                                //           onTap: () {
                                //             BlocProvider.of<LikeBloc>(context)
                                //                 .add(AddPartnerLike(
                                //                     addPartnerLikeRequest:
                                //                         AddPartnerLikeRequest(
                                //                             userUuid: userId,
                                //                             profileUuid:
                                //                                 widget.uuid,
                                //                             isLiked:
                                //                                 !isFavourite)));
                                //           },
                                //           isFavouite: !isFavourite,
                                //           icon: Icons.favorite,
                                //         ),
                                //         listener: (context, addLikeState) {
                                //           if (addLikeState
                                //               is AddPartnerLikeLoading) {
                                //             const SizedBox(
                                //               child: Center(
                                //                 child:
                                //                     CircularProgressIndicator(),
                                //               ),
                                //             );
                                //           }
                                //           if (addLikeState
                                //               is AddPartnerLikeFailed) {
                                //             const Icon(
                                //               Icons.ac_unit_rounded,
                                //               color: colorred,
                                //             );
                                //           }
                                //           if (addLikeState
                                //               is AddPartnerLikeSuccess) {
                                //             log('like added');
                                //             if (addLikeState
                                //                     .addPartnerLikeEntity
                                //                     .data
                                //                     .isLiked ==
                                //                 true) {
                                //               Utils.showSnackbar(
                                //                   'Added to Favourties');
                                //               SchedulerBinding.instance
                                //                   .addPostFrameCallback((_) {
                                //                 setState(() {
                                //                   isFavourite = addLikeState
                                //                       .addPartnerLikeEntity
                                //                       .data
                                //                       .isLiked;
                                //                 });
                                //               });
                                //             } else {
                                //               Utils.showSnackbar(
                                //                   'Removed from Favourties');
                                //               SchedulerBinding.instance
                                //                   .addPostFrameCallback((_) {
                                //                 setState(() {
                                //                   isFavourite = addLikeState
                                //                       .addPartnerLikeEntity
                                //                       .data
                                //                       .isLiked;
                                //                 });
                                //               });
                                //             }
                                //           }
                                //         },
                                //       );
                                //     },
                                //   ),
                                // ),
                                Positioned(
                                    right: 20,
                                    bottom: 60,
                                    child: ContainerIconWidget(
                                      onTap: () {
                                        _tabController.animateTo(4);
                                      },
                                      icon: Icons.grid_view_rounded,
                                    )),
                                Positioned(
                                    left: 20,
                                    bottom: 60,
                                    child: ContainerIconWidget(
                                      text: '${imageCount + 1} of ${3}',
                                    )),
                                Positioned(
                                  bottom: 0,
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        bottomLeft: Radius.circular(20),
                                        bottomRight: Radius.circular(20)),
                                    child: BackdropFilter(
                                      blendMode: BlendMode.srcIn,
                                      filter: ImageFilter.blur(
                                          sigmaX: 10.0, sigmaY: 10.0),
                                      child: Container(
                                        width: width,
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade200
                                                .withOpacity(0.2)),
                                        child: Center(
                                          child: Text(
                                            profile.profileHeadline ?? "",
                                            style: const TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverAppBar(
                      pinned: true,
                      elevation: 0,
                      toolbarHeight: 10,
                      backgroundColor: colorwhite,
                      bottom: const PreferredSize(
                          preferredSize: Size.fromHeight(0),
                          child: SizedBox.shrink()),
                      flexibleSpace: Column(
                        children: <Widget>[
                          ButtonsTabBar(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 20),
                            buttonMargin: const EdgeInsets.symmetric(
                                horizontal: 15, vertical: 5),
                            height: 55,
                            controller: _tabController,
                            elevation: 1,
                            backgroundColor: Colors.red, radius: 15,
                            unselectedBackgroundColor: colorwhite,
                            labelStyle: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                            unselectedLabelStyle: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            // Add your tabs here
                            tabs: const [
                              Tab(
                                text: 'Packages',
                              ),
                              Tab(
                                text: 'About',
                              ),
                              Tab(
                                text: 'Reviews',
                              ),
                              Tab(
                                text: 'FAQs',
                              ),
                              Tab(
                                text: 'Gallery',
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ];
                },
                body: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: _tabController,
                  children: [
                    PackagesTabWidget(
                        profile: profile!,
                        uuid: state.partnerProfile.data!.profile!.partnerUuid!),
                    portfolio != null
                        ? AboutTabWidget(
                            portfolio: portfolio,
                            about: state.partnerProfile.data!.profile!
                                .profileDetails!.profileCoverDescription!)
                        : const Center(child: Text('Nothing to show here')),
                    reviewsAvarage != null
                        ? ReviewsTabWidget(
                            reviews: reviews, reviewAverages: reviewsAvarage)
                        : const Center(child: Text('Nothing to show here')),
                    faq != null
                        ? FaqsTabWidget(faq: faq)
                        : const Center(child: Text('Nothing to show here')),
                    gallery != null
                        ? GalleryTabWidget(
                            gallery: gallery,
                          )
                        : const Center(child: Text('Nothing to show here'))
                  ],
                ),
              ),
            );
          }
          return const Text('not loading');
        },
      ),
    );
  }
}
