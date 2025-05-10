import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/search_bloc/search_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/AppbarWedget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/search_field_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/search_page_widgets/search_package_tab_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/search_page_widgets/search_partner_tab_widget.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'dart:async';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  final TextEditingController textEditingController = TextEditingController();
  Timer? _debounce;
  String trending = 'Solo Acoustic Set ';

  final bool isGuestUser = localDb.getBool('isGuestUser')!;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBarWidgetPrimary(text: 'search'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding20),
          child: Column(
            children: [
              const SizedBox(
                height: 18,
              ),
              SearchFieldWidget(
                  onChanged: (value) {
                    if (_debounce != null && _debounce!.isActive) {
                      _debounce!.cancel();
                    }
                    _debounce = Timer(const Duration(milliseconds: 500), () {
                      if (tabController?.index == 0) {
                        // If "Packages" tab is selected
                        BlocProvider.of<SearchBloc>(context)
                            .add(GetSearchPackage(value));
                      } else {
                        // If "Partners" tab is selected
                        BlocProvider.of<SearchBloc>(context)
                            .add(GetSearchPartner(value));
                      }
                    });
                  },
                  navigation: false,
                  controller: textEditingController,
                  width: width,
                  text: 'Search for ‘Make up artists’'),
              sbox,
              Container(
                decoration: BoxDecoration(
                  color: colorred.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TabBar(
                  controller: tabController,
                  indicatorSize: TabBarIndicatorSize.tab,
                  unselectedLabelColor: colorblack.withOpacity(0.5),
                  labelColor: colorblack,
                  indicator: BoxDecoration(
                    border:
                        Border.all(color: colorred.withOpacity(0.2), width: 3),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Colors.white,
                  ),
                  tabs: const [
                    Tab(
                      child: Text('Packages'),
                    ),
                    Tab(
                      child: Text('Partners'),
                    )
                  ],
                ),
              ),
              // sbox,
              // const SearchPageHeadingwidget(
              //   icon: Icons.history,
              //   title: 'Recents',
              // ),
              sbox,
              Expanded(
                child: TabBarView(
                  physics: const BouncingScrollPhysics(),
                  controller: tabController,
                  children: [
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          SearchPackageTabWidget(
                              isGuestUser: isGuestUser,
                              width: width,
                              keyword: textEditingController.text),
                        ],
                      ),
                    ),
                    SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: Column(
                        children: [
                          SearchPartnerTabWidget(
                              keyword: textEditingController.text),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // const SearchPageHeadingwidget(
              //     title: 'Trending Searches', icon: Icons.trending_up_outlined),
              // sbox,
              // GridView.builder(
              //   padding: EdgeInsets.zero,
              //   shrinkWrap: true,
              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //     mainAxisSpacing: 10,
              //     childAspectRatio: 1 / 0.2,
              //     crossAxisCount: 2,
              //   ),
              //   itemCount: 3,
              //   itemBuilder: (BuildContext context, int index) {
              //     return SearchPageChipWidget(
              //         onTap: () {
              //           textEditingController.text = trending;
              //         },
              //         width: width,
              //         text: trending);
              //   },
              // ),
              sbox,
            ],
          ),
        ),
      ),
    );
  }
}