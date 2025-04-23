import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/all_partner_bloc/all_partner_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/drawer_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/category/all_tab.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/category/cost_tab.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/category/level_tab.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/category/prefered_partner_tab.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/category/tier_tab.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/home_appbar_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/search_field_widget.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';

class SpecificCategoryPage extends StatefulWidget {
  const SpecificCategoryPage(
      {super.key,
      // required this.userModel,
      required this.isGuestUser,
      required this.categoryTitle});

  // final GetUserEntity? userModel;
  final bool? isGuestUser;
  final String categoryTitle;
  @override
  State<SpecificCategoryPage> createState() => _SpecificCategoryPageState();
}

class _SpecificCategoryPageState extends State<SpecificCategoryPage>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  late TabController _tabController;
  final String? fullName = localDb.getString('fullName')!;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);

    context.read<CategoryBloc>().add(const GetParentCategoryDetails());
    BlocProvider.of<AllPartnerBloc>(context).add(const GetAllProfiles());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return ColoredSafeArea(
      color: colorwhite,
      child: Scaffold(
        backgroundColor: bggray,
        key: scaffoldKey,
        drawer: DrawerWidget(
            scaffoldKey: scaffoldKey,
            name: fullName != null ? fullName! : 'Guest',
            isGuestUser: widget.isGuestUser!),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: HomeAppBarWidget(
            scaffoldKey: scaffoldKey,
          ),
        ),
        body: NestedScrollView(
          physics: const BouncingScrollPhysics(),
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                stretch: true,
                backgroundColor: bggray,
                pinned: true,
                elevation: 0,
                expandedHeight: 100,
                bottom: PreferredSize(
                  preferredSize: const Size.fromHeight(60),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Column(
                      children: [
                        sbox,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: SearchFieldWidget(
                            backButton: true,
                            width: width,
                            text: 'Search for packages and Partners here',
                          ),
                        ),
                        sbox,
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: HeadingTextWidget(
                              text: widget.categoryTitle,
                              size: 22,
                              fontWeight: FontWeight.w500,
                              trailingButton: false,
                              textColor: colorblack.withOpacity(0.7)),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              DefaultTabController(
                length: 5,
                initialIndex: 1,
                child: SliverAppBar(
                  automaticallyImplyLeading: false,
                  expandedHeight: 70,
                  pinned: true,
                  elevation: 0,
                  toolbarHeight: 55,
                  backgroundColor: bggray,
                  bottom: const PreferredSize(
                      preferredSize: Size.fromHeight(0),
                      child: SizedBox.shrink()),
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Column(
                      children: <Widget>[
                        ButtonsTabBar(
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20),
                          buttonMargin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 5),
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
                              text: 'All',
                            ),
                            Tab(
                              text: 'Tiers',
                            ),
                            Tab(
                              text: 'Level',
                            ),
                            Tab(
                              text: 'cost',
                            ),
                            Tab(
                              text: 'prefered Partners',
                            ),
                            Tab(
                              child: Icon(Icons.tune, color: colorblack),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ];
          },
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: TabBarView(
              physics: const BouncingScrollPhysics(),
              controller: _tabController,
              children: [
                AllTab(
                  categoryTitle: widget.categoryTitle,
                ),
                const TierTab(),
                // AllTab(),
                const LevelTab(),
                const CostTab(),
                const PreferedPartnersTab(),
                AllTab(
                  categoryTitle: widget.categoryTitle,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
