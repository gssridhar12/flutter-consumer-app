import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/core/constant/list_tile.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/fresh_talent_bloc/fresh_talent_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/package_bloc/package_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/top_partner_bloc/top_partner_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/category/specific_category_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/drawer_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/edit_profile_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/luxe/LuxeMegmoPage.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/see_all/fresh_talent_on_megmo_see_all_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/see_all/most_booked_packages_see_all_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/see_all/success_stories_see_all_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/see_all/top_partners_in_demant_see_all_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/Who%20_are_lookng_for_seeall.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/become_partner_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/category_tile_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/home_appbar_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/package_card_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/partner_tile_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/partner_tile_widget_luxe.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/my_companion_widget.dart';
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
import '../pages/bookings_page.dart';
import '../pages/home_page.dart';
import '../pages/search_page.dart';
import '../pages/view_profile_page.dart';
import 'BottomNavbarWidget.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({
    super.key,
  });

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();

}

class _HomePageWidgetState extends State<HomePageWidget> {

  int _selectedIndex = 0;
  List<Widget> _list = BottomNavbarWidgets.list;

  void _onNavTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

    return ColoredSafeArea(

      color: bggray,
      child: Scaffold(
          key: scaffoldKey,

          backgroundColor: bggray,
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(70),
            child: HomeAppBarWidget(scaffoldKey: scaffoldKey),
          ),
          body: _list[_selectedIndex],

          bottomNavigationBar: BottomNavBar(
            currentIndex: _selectedIndex,
            onTap: _onNavTap,
          )
      ),
    );
  }
}


class HomeScrollContent extends StatefulWidget {
  @override
  State<HomeScrollContent> createState() => _HomeScrollContentState();
}

class _HomeScrollContentState extends State<HomeScrollContent> {
  final bool isGuestUser = localDb.getBool('isGuestUser')!;

  final String? fullName = localDb.getString('fullName') ?? "Pawrent";

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
    return SingleChildScrollView(

      physics: const BouncingScrollPhysics(),
      child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              sbox20,
              HeadingTextWidget(
                  text: 'My Companion'
              ),
              sbox,
              const CompanionSection(),






              SizedBox(height: 24),
              HeadingTextWidget(
                text: 'Who are you looking for?',
                trailingButton: true,
                onTap: () {
                  AppNavigation.pushNavigation(
                      context, Who_AreLookngForSeeall());
                },
              ),
              SizedBox(height: 14),
              SizedBox(
                height: 180,
                child: BlocBuilder<CategoryBloc, CategoryState>(
                  builder: (context, state) {
                    if (state is GetCategoryLoading) {
                      return const Center(child: CircularProgressIndicator());
                    }
                    if (state is GetCategoryFailed) {
                      return const Text('something went wrong');
                    }
                    if (state is GetCategorySuccess) {
                      final category = state.categoryEntity.data!
                          .parentCategories;
                      return GridView.builder(
                        padding: EdgeInsets.zero,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          childAspectRatio: 0.8,
                        ),
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: category!.length,
                        itemBuilder: (context, index) {
                          return CategoryTileWidget(
                            onTap: () {
                              AppNavigation.pushNavigation(
                                context,
                                SpecificCategoryPage(
                                  categoryTitle: category[index]
                                      .parentCategoryName ?? "",
                                  isGuestUser: isGuestUser,
                                ),
                              );
                            },
                            width: 100.w,
                            category: category[index],
                          );
                        },
                      );
                    }
                    return const Text('Something went wrong');
                  },
                ),
              ) ,
              HeadingTextWidget(
                text: 'Top Partners in demand',
                onTap: () {
                  AppNavigation.pushNavigation(
                    context,
                    TopPartnersInDemantSeeAllPage(isGuestUser: isGuestUser),
                  );
                },
              ),
              SizedBox(height: 14),
              BlocBuilder<TopPartnerBloc, TopPartnerState>(
                builder: (context, state) {
                  if (state is GetTopPartnerInDemantLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state is GetTopPartnerInDemantFailed) {
                    return const Text('something went wrong');
                  }
                  if (state is GetTopPartnerInDemantSuccess) {
                    return SizedBox(
                      height: 200,
                      child: ListView.builder(
                        padding: const EdgeInsets.only(left: padding),
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: state.partner.data!.profiles!.length,
                        itemBuilder: (context, index) {
                          return PartnerTileWidget(
                            index: index,
                            partnerEntity: state.partner,
                            isGuestUser: isGuestUser,
                            onTap: () {
                              AppNavigation.pushNavigation(
                                context,
                                PartnerProfileAnimated(
                                  uuid: state.partner.data!.profiles![index]
                                      .profile!.partnerUuid!,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    );
                  }
                  return const Text('nothing loaded');
                },
              ),
              SizedBox(height: 24),
              HeadingTextWidget(
                text: 'Most booked Packages',
                onTap: () {
                  AppNavigation.pushNavigation(
                    context,
                    MostBookedPackagesSeeAllPage(isGuestUser: isGuestUser),
                  );
                },
              ),
              SizedBox(height: 14),
              BlocBuilder<PackageBloc, PackageState>(
                builder: (context, state) {
                  if (state is GetMostBookedPackageLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state is GetMostBookedPackageFailed) {
                    return const ShowErrorWidget();
                  }
                  if (state is GetMostBookedPackageSuccess) {
                    return SizedBox(
                      height: 220,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: state.package.data!.packages!.length,
                        itemBuilder: (context, index) {
                          final package = state.package.data!.packages![index]
                              .package!;
                          return PackageCardWidget(
                            key: ValueKey(package.packageUuid),
                            packageUuid: package.packageUuid!,
                            uuid: package.partnerUuid!,
                            index: index,
                            packageEntity: state.package,
                            isGuestUser: isGuestUser,
                            onTap: () {
                              AppNavigation.pushNavigation(
                                context,
                                PackageDetailsPage(
                                    uuid: package.packageUuid!),
                              );
                            },
                          );
                        },
                      ),
                    );
                  }
                  return const Text('packages Data Api Failed');
                },
              ),
              SizedBox(height: 24),
              HeadingTextWidget(
                text: 'Fresh Talent on Wigglypet',
                onTap: () {
                  AppNavigation.pushNavigation(
                    context,
                    FreshTalentOnMegmoSeeAllPage(isGuestUser: isGuestUser),
                  );
                },
              ),
              SizedBox(height: 14),
              BlocBuilder<FreshTalentBloc, FreshTalentState>(
                builder: (context, state) {
                  if (state is GetFreshTalentOnMegmoLoading) {
                    return const Center(child: CircularProgressIndicator());
                  }
                  if (state is GetFreshTalentOnMegmoFailed) {
                    return const ShowErrorWidget();
                  }
                  if (state is GetFreshTalentOnMegmoSuccess) {
                    return SizedBox(
                      height: 200,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: state.partner.data!.profiles!.length,
                        itemBuilder: (context, index) {
                          final profileDetails = state.partner.data!
                              .profiles![index].profile!.profileDetails!;
                          return profileDetails.lockeProfile == false
                              ? PartnerTileWidget(
                            partnerEntity: state.partner,
                            index: index,
                            isGuestUser: isGuestUser,
                            onTap: () {
                              AppNavigation.pushNavigation(
                                context,
                                PartnerProfileAnimated(
                                  uuid: state.partner.data!.profiles![index]
                                      .profile!.partnerUuid!,
                                ),
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
              SizedBox(height: 32),
              BecomePartnerWidget(width: 100.w),
              SizedBox(height: 32),



            ],

          )
      ),
    );






  }
}

