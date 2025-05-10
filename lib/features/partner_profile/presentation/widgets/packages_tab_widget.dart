import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/get_bucket_list_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/bloc/get_bucket_bloc/bucket_bloc.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/package_widgets/text_container_widget.dart';
import 'package:get_it/get_it.dart';
import 'package:readmore/readmore.dart';
import '../../../packages_section/presentation/screens/package_details_page.dart';
import '../bloc/get_bucket_list_bloc.dart/bucket_list_bloc.dart';
import '../bloc/get_bucket_list_bloc.dart/bucket_list_event.dart';
import '../bloc/get_bucket_list_bloc.dart/bucket_list_state.dart';
import 'package_widgets/profile_package_card.dart';

class PackagesTabWidget extends StatefulWidget {
  const PackagesTabWidget({
    super.key,
    required this.profile,
    required this.uuid,
  });

  final ProfileDetails profile;
  final String uuid;

  @override
  State<PackagesTabWidget> createState() => _PackagesTabWidgetState();
}

class _PackagesTabWidgetState extends State<PackagesTabWidget> {
  ScrollController scrollController = ScrollController();
  final getIt = GetIt.instance;
  
  // final List<String> categories = [
  //   'Bestseller Packages',
  //   'Performances',
  //   'Collaborations',
  //   'Coaching',
  //   'Promoted Packages',
  //   'Request a Package'
  // ];

  // final List<String> images = [
  //   'assets/images/hand.png',
  //   'assets/images/request.png',
  //   'assets/images/Rectangle3.png',
  //   'assets/images/coaching.png',
  //   'assets/images/collaboration.png',
  //   'assets/images/mike.png'
  // ];

  @override
  void initState() {
    scrollController.addListener(() {});
    super.initState();
  }

  void animateTo() => scrollController.animateTo(50,
      duration: const Duration(milliseconds: 1000), curve: Curves.bounceIn);

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;
    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              sbox20,
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20), color: colorgrey),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.stars_outlined, color: colorred),
                      Text(
                        'Megmo Preferred Partner',
                        style: TextStyle(color: colorred),
                      )
                    ],
                  ),
                ),
              ),
              sbox,
              const Wrap(
                children: [
                  TextContainerWidget(
                      text: 'Level 0 Partner', color: colorgrey),
                  TextContainerWidget(
                      text: 'Door step service', color: colorgrey),
                  TextContainerWidget(text: 'Gold', color: colorgrey),
                ],
              ),
              sbox20,
              ReadMoreText(
                style: const TextStyle(fontSize: 16),
                widget.profile.profileCoverDescription ?? "",

                // 'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                trimLines: 2,
                colorClickableText: Colors.pink,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'Show more',
                trimExpandedText: 'Show less',
                moreStyle:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              
              sbox20,
              BlocProvider(
                create: (context) => getIt<BucketListBloc>()
                  ..add(GetBucketData(partnerId: widget.uuid)),
                child: BlocBuilder<BucketListBloc, BucketListState>(
                  builder: (context, state) {
                    if (state is GetBucketListLoading) {
                      return const SizedBox(
                        // height: width * 0.72,
                        child: Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    if (state is GetBucketListFailed) {
                      return const Text('something went wrong');
                    }
                    if (state is GetBucketListSuccess) {
                      // Get the bucket list from the state
                      final bucketList = state.bucket.data?.buckets ?? [];
                      if (bucketList.isEmpty) {
                        return const Text('No Bucket Data Available');
                      }
                      final data = state.bucket.data?.buckets![0];
                      BucketData? matchingBucket;
                      try {
                        matchingBucket = bucketList.firstWhere(
                          (bucket) => bucket.partnerUuid == widget.uuid,
                        );
                      } catch (e) {
                        matchingBucket = null;
                      }
                      // Get the bucketId if the matching bucket exists
                      String selectedBucketId = matchingBucket != null
                          ? (matchingBucket.bucketUuid ?? "")
                          : "";
                      debugPrint('selectedBucketId: $selectedBucketId');
                      return Column(
                        children: [

                          sbox20,
              const HeadingTextWidget(
                text: 'All Packages',
                trailingButton: false,
              ),
              sbox20,
              GridView.builder(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    childAspectRatio: 1 / 1.35),
                itemCount: bucketList.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () {
                      scrollController.animateTo(
                          scrollController.position.minScrollExtent,
                          duration: const Duration(milliseconds: 1000),
                          curve: Curves.bounceIn);
                    },
                    child: GestureDetector(
                      onTap: () {
                        if (index == bucketList[index].bucketCoverImage!.length - 1) {
                          // AppNavigation.pushNavigation(
                          //     context, const BecomeApartnerButtonPage());
                        }
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10.0),
                        child: Container(
                          // width: width * 0.2,
                          // height: width * 0.3,
                          decoration: const BoxDecoration(
                              color: colorwhite,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: ClipRRect(
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                  ),
                                  child: Image.network(bucketList[index].bucketCoverImage.toString(),
                                      fit: BoxFit.cover),
                                ),
                              ),
                              sbox,
                              Text(
                                bucketList[index].bucketName.toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w400),
                              ),
                              sbox,
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
                          // getBestSellerPackages(state.package.data.packages)
                          //         .isNotEmpty
                          //     ? const HeadingTextWidget(
                          //         text: 'Bestseller Packages',
                          //         trailingButton: false,
                          //       )
                          //     : const SizedBox.shrink(),
                          // sbox20,
                          // ListView.builder(
                          //   padding: EdgeInsets.zero,
                          // physics: const NeverScrollableScrollPhysics(),
                          //   shrinkWrap: true,
                          //   itemCount:
                          //       getBestSellerPackages(state.package.data.packages)
                          //           .length,
                          //   itemBuilder: (BuildContext context, int index) {
                          //     return ProfilePackageCardWidget(
                          //       index: index,
                          //       package: getBestSellerPackages(
                          //           state.package.data.packages)[index],
                          //       isGeuestUser: false,
                          //       onTap: () {
                          //         Navigator.push(
                          //             context,
                          //             MaterialPageRoute(
                          //               builder: (context) => PackageDetailsPage(
                          //                   uuid: state.package.data.packages[index]
                          //                       .packageUuid),
                          //             ));
                          //       },
                          //     );
                          //   },
                          // ),
                          // sbox20,
                          HeadingTextWidget(
                            text: data?.bucketName ?? "",
                            trailingButton: false,
                          ),
                          sbox20,
                          BlocProvider(
                            create: (context) => getIt<BucketBloc>()
                              ..add(GetBucket(uuid: selectedBucketId)),
                            child: BlocBuilder<BucketBloc, BucketState>(
                              builder: (context, state) {
                                if (state is GetBucketLoading) {
                                  return const Center(
                                      child: CircularProgressIndicator());
                                } else if (state is GetBucketFailed) {
                                  return const Text('something went wrong');
                                } else if (state is GetBucketSuccess) {
                                  final data = state.bucket.data?.bucket;
                                  return ListView.builder(
                                    controller: scrollController,
                                    padding: EdgeInsets.zero,
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    shrinkWrap: true,
                                    itemCount: data!.selectedPackages?.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      return ProfilePackageCardWidget(
                                        index: index,
                                        package: data.selectedPackages![index],
                                        Ratereview: state.bucket.data!
                                            .packageReviewAvg![index],
                                        isGeuestUser: false,
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  PackageDetailsPage(
                                                      uuid: data
                                                          .selectedPackages![
                                                              index]
                                                          .packageUuid!),
                                            ),
                                          );
                                        },
                                      );
                                    },
                                  );
                                } else {
                                  return const Text(
                                      'Failed to load package details');
                                }
                              },
                            ),
                          ),
                          // sbox20,
                          // const HeadingTextWidget(
                          //   text: 'Collaborations',
                          //   trailingButton: false,
                          // ),
                          // sbox20,
                          // ListView.builder(
                          //   padding: EdgeInsets.zero,
                          //   physics: const NeverScrollableScrollPhysics(),
                          //   shrinkWrap: true,
                          //   itemCount: data.selectedPackages.length,
                          //   itemBuilder: (BuildContext context, int index) {
                          //     return ProfilePackageCardWidget(
                          //       index: index,
                          //       package:
                          //           data.selectedPackages[index],
                          //       isGeuestUser: false,
                          //       onTap: () {
                          //         Navigator.push(
                          //           context,
                          //           MaterialPageRoute(
                          //             builder: (context) => PackageDetailsPage(
                          //                 uuid: data.selectedPackages[index]
                          //                     .packageUuid),
                          //           ),
                          //         );
                          //       },
                          //     );
                          //   },
                          // ),
                          // sbox20,
                          // // getPromotedPackages(state.package.data.packages)
                          // //         .isNotEmpty
                          // //     ?
                          // const HeadingTextWidget(
                          //   text: 'Promoted Packages',
                          //   trailingButton: false,
                          // ),
                          // // : const SizedBox.shrink(),
                          // sbox20,
                          // ListView.builder(
                          //   padding: EdgeInsets.zero,
                          //   physics: const NeverScrollableScrollPhysics(),
                          //   shrinkWrap: true,
                          //   itemCount: data.selectedPackages.length,
                          //   itemBuilder: (BuildContext context, int index) {
                          //     return ProfilePackageCardWidget(
                          //       package:
                          //           data.selectedPackages[index],
                          //       index: index,
                          //       isGeuestUser: false,
                          //       onTap: () {
                          //         Navigator.push(
                          //           context,
                          //           MaterialPageRoute(
                          //             builder: (context) => PackageDetailsPage(
                          //                 uuid: data.selectedPackages[index]
                          //                     .packageUuid),
                          //           ),
                          //         );
                          //       },
                          //     );
                          //   },
                          // ),
                        ],
                      );
                    }
                    return const Text('partner api failed');
                  },
                ),
              ),
              const SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
