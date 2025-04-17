import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/fresh_talent_bloc/fresh_talent_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/package_bloc/package_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/top_partner_bloc/top_partner_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/category/specific_category_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/drawer_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/luxe/LuxeMegmoPage.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/see_all/fresh_talent_on_megmo_see_all_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/see_all/most_booked_packages_see_all_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/see_all/success_stories_see_all_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/see_all/top_partners_in_demant_see_all_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/become_partner_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/category_tile_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/home_appbar_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/package_card_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/partner_tile_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/partner_tile_widget_luxe.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/rewards_card_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/search_field_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/succes_story_tile_widget.dart';
import 'package:flutter_consumer_app/features/packages_section/presentation/screens/package_details_page.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/pages/partner_profile_animated.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/shared/widgets/error_widget.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:sizer/sizer.dart';

import '../bloc/category_bloc/category_bloc.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    super.key,
  });

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final bool isGuestUser = localDb.getBool('isGuestUser')!;
  final String? fullName = localDb.getString('fullName') ?? "Guest";

  @override
  void initState() {
    context.read<CategoryBloc>().add(const GetParentCategoryDetails());
    context.read<TopPartnerBloc>().add(const GetTopTopPartnerInDemant());
    context.read<PackageBloc>().add(const GetMostBookedPackage());
    BlocProvider.of<FreshTalentBloc>(context)
        .add(const GetFreshTalentOnMegmo());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // super.build(context);

    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        key: scaffoldKey,
        drawer: DrawerWidget(
            scaffoldKey: scaffoldKey,
            name: fullName ?? 'Guest',
            isGuestUser: isGuestUser),
        backgroundColor: bggray,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: HomeAppBarWidget(
            scaffoldKey: scaffoldKey,
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sbox,
                SearchFieldWidget(
                  width: 100.w,
                  text: 'Search for ‘Make up artists’',
                ),
                HeadingTextWidget(
                    fontWeight: FontWeight.w400,
                    text: fullName != null ? 'Hii $fullName,' : 'Hii Guest,',
                    size: 22,
                    trailingButton: false,
                    textColor: colorred),
                HeadingTextWidget(
                  text: 'Welcome to WigglyPet!',
                  trailingButton: false,
                  size: 18,
                  textColor: colorblack.withOpacity(0.7),
                ),
                sbox,
                RewardsCardWidget(
                    name: fullName ?? '', isGuestUser: isGuestUser),
                const HeadingTextWidget(
                  text: 'Who are you looking for?',
                  trailingButton: false,
                ),



BlocBuilder<CategoryBloc, CategoryState>(
  builder: (context, state) {
    if (state is GetCategoryLoading) {
      return SizedBox(
        height: 30.h,
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    if (state is GetCategoryFailed) {
      return const ShowErrorWidget();
    }
    if (state is GetCategorySuccess) {
      final category =
          state.categoryEntity.data!.parentCategories;
      return ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height * 0.02,
          maxHeight: MediaQuery.of(context).size.height * 0.25,
        ),
        child: SizedBox(
          width: 100.w,
          child: GridView.builder(
            padding: EdgeInsets.zero,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: category!.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  CategoryTileWidget(
                      onTap: () {
                        AppNavigation.pushNavigation(
                          context,
                          SpecificCategoryPage(
                            categoryTitle:
                                category[index].parentCategoryName ?? "Men ,Women",
                            isGuestUser: isGuestUser,
                          ),
                        );
                      },
                      width: 100.w,
                      category: category[index]),
                ],
              );
            },
          ),
        ),
      );
    }
    return const Text('Something went wrong');
  },
),





            HeadingTextWidget(
                  text: 'Top Partners in demand',
                  onTap: () {
                    AppNavigation.pushNavigation(
                      context,
                      TopPartnersInDemantSeeAllPage(
                        isGuestUser: isGuestUser,
                      ),
                    );
                  },
                ),
                BlocBuilder<TopPartnerBloc, TopPartnerState>(
                  builder: (context, state) {
                    if (state is GetTopPartnerInDemantLoading) {
                      return SizedBox(
                        height: 30.h,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    if (state is GetTopPartnerInDemantFailed) {
                      return const ShowErrorWidget();
                    }
                    if (state is GetTopPartnerInDemantSuccess) {
                      return ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: MediaQuery.of(context).size.height * 0.25,
                          maxHeight: MediaQuery.of(context).size.height * 0.35,
                        ),
                        child: SizedBox(
                          width: 100.w,
                          child: ListView.builder(
                            addAutomaticKeepAlives: true,
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: state.partner.data!.profiles!.length,
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  ///Checks if partner is a luxe profile or not
                                  state.partner.data!.profiles![index].profile!
                                              .profileDetails!.lockeProfile ==
                                          true
                                      ? PartnerTileWidget(
                                          index: index,
                                          partnerEntity: state.partner,
                                          isGuestUser: isGuestUser,
                                          onTap: () {
                                            // if (isGuestUser != false) {
                                            AppNavigation.pushNavigation(
                                                context,
                                                PartnerProfileAnimated(
                                                    uuid: state
                                                        .partner
                                                        .data!
                                                        .profiles![index]
                                                        .profile!
                                                        .partnerUuid!));
                                            // } else {
                                            //   AppNavigation.pushNavigation(
                                            //       context,
                                            //       const ThreeOptionsPage());
                                            // }
                                          },
                                        )
                                      : PartnerTileLuxeWidget(
                                          index: index,
                                          partnerEntity: state.partner,
                                          isGuestUser: isGuestUser,
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                builder: (context) =>
                                                    const LuxeMegmoScreen(),
                                              ),
                                            );
                                          },
                                        ),
                                ],
                              );
                            },
                          ),
                        ),
                      );
                    }
                    return const Text('nothing loaded');
                  },
                ),
                HeadingTextWidget(
                  text: 'Most booked Packages',
                  onTap: () {
                    AppNavigation.pushNavigation(
                      context,
                      MostBookedPackagesSeeAllPage(
                        isGuestUser: isGuestUser,
                      ),
                    );
                  },
                ),
                sbox,
                BlocBuilder<PackageBloc, PackageState>(
                  builder: (context, state) {
                   
                    if (state is GetMostBookedPackageLoading) {
                      return SizedBox(
                        height: 38.h,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    if (state is GetMostBookedPackageFailed) {
                      return const ShowErrorWidget();
                    }
                    if (state is GetMostBookedPackageSuccess) {
                    
                      return ConstrainedBox(
                        constraints: BoxConstraints(
                          minHeight: MediaQuery.of(context).size.height * 0.38,
                          maxHeight: MediaQuery.of(context).size.height * 0.39,
                        ),
                        child: SizedBox(
                          width: 100.w,
                          child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            addAutomaticKeepAlives: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: state.package.data!.packages!.length,
                            itemBuilder: (BuildContext context, int index) {
                              final package =
                                  state.package.data!.packages![index].package!;
                              return PackageCardWidget(
                                key: ValueKey(package
                                    .packageUuid), // Provide a unique key
                                packageUuid: package.packageUuid!,
                                uuid: package.partnerUuid!,
                                index: index,
                                packageEntity: state.package,
                                isGuestUser: isGuestUser,
                                onTap: () {
                                  AppNavigation.pushNavigation(
                                    context,
                                    PackageDetailsPage(
                                      uuid: package.packageUuid!,
                                    ),
                                  );
                                },
                              );
                            },
                          ),
                        ),
                      );
                    }
                    return const Text('packages Data Api Failed');
                  },
                ),
                HeadingTextWidget(
                  text: 'Fresh Talent on WigglyPet',
                  onTap: () {
                    AppNavigation.pushNavigation(
                      context,
                      FreshTalentOnMegmoSeeAllPage(
                        isGuestUser: isGuestUser,
                      ),
                    );
                  },
                ),
                sbox,
                BlocBuilder<FreshTalentBloc, FreshTalentState>(
                  builder: (context, state) {
                    if (state is GetFreshTalentOnMegmoLoading) {
                      return SizedBox(
                        height: 32.h,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    if (state is GetFreshTalentOnMegmoFailed) {
                      return const ShowErrorWidget();
                    }
                    if (state is GetFreshTalentOnMegmoSuccess) {
                      return SizedBox(
                        height: 32.h,
                        width: 100.w,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: state.partner.data!.profiles!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return state.partner.data!.profiles![index].profile!
                                        .profileDetails!.lockeProfile ==
                                    false
                                ? PartnerTileWidget(
                                    partnerEntity: state.partner,
                                    index: index,
                                    isGuestUser: isGuestUser,
                                    onTap: () {
                                      AppNavigation.pushNavigation(
                                        context,
                                        PartnerProfileAnimated(
                                            uuid: state
                                                .partner
                                                .data!
                                                .profiles![index]
                                                .profile!
                                                .partnerUuid!),
                                      );
                                    },
                                  )
                                : PartnerTileLuxeWidget(
                                    index: index,
                                    partnerEntity: state.partner,
                                    isGuestUser: isGuestUser,
                                    onTap: () {
                                      AppNavigation.pushNavigation(
                                          context, const LuxeMegmoScreen());
                                    },
                                  );
                          },
                        ),
                      );
                    }
                    return const Text('nothing loaded');
                  },
                ),
                sbox,
                HeadingTextWidget(
                  onTap: () {
                    AppNavigation.pushNavigation(
                      context,
                      SucessStoriesSeeAllPage(
                        isGuestUser: isGuestUser,
                      ),
                    );
                  },
                  text: 'Success Stories',
                ),
                sbox,
                SizedBox(
                  width: 80.w,
                  child: Text(
                      'Take a look at what WigglyPet partners are achieving',
                      style: TextStyle(
                          fontSize: 12, color: colorblack.withOpacity(0.5))),
                ),
                sbox20,
                SizedBox(
                  height: 50.h,
                  width: 100.w,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return const SuccessStoryWidget();
                    },
                  ),
                ),
                sbox20,
                BecomePartnerWidget(width: 100.w),
                sbox20,
              ],
            ),
          ),
        ),
      ),
    );
  }
  //for static testing


  ///TODO fix this
  // @override
  // bool get wantKeepAlive => true;
}
