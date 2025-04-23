import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/category/specific_category_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/drawer_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/home_appbar_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/search_field_widget.dart';
import 'package:flutter_consumer_app/main.dart';

import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_chip_widget.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';

class AllCategoryPage extends StatefulWidget {
  const AllCategoryPage({super.key, required this.isGuestUser});

  final bool? isGuestUser;
  @override
  State<AllCategoryPage> createState() => _AllCategoryPageState();
}

class _AllCategoryPageState extends State<AllCategoryPage> {
  int? _value;

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  final String? fullName = localDb.getString('fullName')!;

  @override
  void initState() {
    context.read<CategoryBloc>().add(const GetParentCategoryDetails());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return ColoredSafeArea(
      color: colorwhite,
      child: Scaffold(
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
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding20),
            child: BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, state) {
                if (state is GetCategoryLoading) {
                  return SizedBox(
                    height: width * 0.72,
                    child: const Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                if (state is GetCategoryFailed) {
                  return const Text('something went wrong');
                }
                if (state is GetCategorySuccess) {
                  final data = state.categoryEntity.data!.parentCategories;
                  return Column(
                    children: [
                      sbox,
                      SearchFieldWidget(
                        backButton: true,
                        width: width,
                        text: 'Search for ‘Make up artists’',
                      ),
                      sbox,
                      HeadingTextWidget(
                          text: 'Who are you looking for?',
                          size: 22,
                          fontWeight: FontWeight.w500,
                          trailingButton: false,
                          textColor: colorblack.withOpacity(0.7)),
                      const HeadingTextWidget(
                          text: 'Take a look at what Megmo has to offer',
                          size: 16,
                          trailingButton: false),
                      GridView.builder(
                        padding: EdgeInsets.zero,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                        ),
                        itemCount: data!.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(padding5),
                            child: CustomChip(
                              borderRadius: 12,
                              fontSize: 16,
                              image: 'assets/images/layer1.png',
                              label: data[index].parentCategoryName ?? "",
                              width: width * 0.25,
                              height: width * 0.25,
                              color: colorred.withOpacity(0),
                              selected: _value == index,
                              isShadow: true,
                              onSelect: (string) {
                                // setState(
                                //   () {
                                //     _value = (string ? index : null)!;
                                //   },
                                // );
                                AppNavigation.pushNavigation(
                                  context,
                                  // const SpecificCategoryPage()
                                  SpecificCategoryPage(
                                    categoryTitle:
                                        data[index].parentCategoryName ?? "",
                                    isGuestUser: widget.isGuestUser,
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ],
                  );
                }
                return const Text('something went wrong');
              },
            ),
          ),
        ),
      ),
    );
  }
}
