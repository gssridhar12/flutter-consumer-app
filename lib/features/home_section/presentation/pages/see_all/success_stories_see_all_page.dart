import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_user_entity.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/package_bloc/package_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/category/all_category_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/drawer_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/category_tile_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/home_appbar_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/search_field_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/succes_story_tile_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';

class SucessStoriesSeeAllPage extends StatefulWidget {
  const SucessStoriesSeeAllPage({super.key, this.userModel, this.isGuestUser});

  final GetUserEntity? userModel;
  final bool? isGuestUser;

  @override
  State<SucessStoriesSeeAllPage> createState() =>
      SucessStoriesSeeAllPageState();
}

class SucessStoriesSeeAllPageState extends State<SucessStoriesSeeAllPage> {
  @override
  void initState() {
    super.initState();
    context.read<PackageBloc>().add(const GetMostBookedPackage());
  }

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;

    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        key: scaffoldKey,
        drawer: DrawerWidget(
            scaffoldKey: scaffoldKey,
            name: widget.userModel != null
                ? widget.userModel!.data!.fullName!
                : 'Pawrent',
            isGuestUser: widget.isGuestUser!),
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
                  backButton: true,
                  width: width,
                  text: 'Search for ‘Pet Boarding’',
                ),
                sbox20,
                HeadingTextWidget(
                    text: 'Success Stories',
                    size: 22,
                    fontWeight: FontWeight.w600,
                    trailingButton: false,
                    textColor: colorblack.withOpacity(0.7)),
                sbox,
                const HeadingTextWidget(
                    text: 'Take a look at what Wigglypet partners have been up to.',
                    size: 16,
                    trailingButton: false),
                sbox20,
                BlocBuilder<CategoryBloc, CategoryState>(
                  builder: (context, state) {
                    if (state is GetCategoryLoading) {
                      return SizedBox(
                        height: width * 0.50,
                        child: const Center(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }
                    if (state is GetCategoryFailed) {
                      return const Text('something went wrong');
                    }
                    if (state is GetCategorySuccess) {
                      final category =
                          state.categoryEntity.data!.parentCategories;
                      return SizedBox(
                        height: width * 0.23,
                        width: width,
                        child: GridView.builder(
                          padding: EdgeInsets.zero,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 1),
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
                                          AllCategoryPage(
                                            isGuestUser: widget.isGuestUser,
                                          ));
                                    },
                                    width: width,
                                    category: category[index]),
                              ],
                            );
                          },
                        ),
                      );
                    }
                    return const Text('Something went wrong');
                  },
                ),
                HeadingTextWidget(
                    size: 22,
                    text: 'Near You',
                    trailingButton: false,
                    textColor: colorblack.withOpacity(0.7)),
                sbox20,
                SizedBox(
                  height: width * 1.1,
                  width: width,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return const SuccessStoryWidget(headingtext: 'Near You',);
                    },
                  ),
                ),
                HeadingTextWidget(
                    size: 22,
                    text: 'Most trending',
                    trailingButton: false,
                    textColor: colorblack.withOpacity(0.7)),
                sbox20,
                SizedBox(
                  height: width * 1.1,
                  width: width,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return const SuccessStoryWidget(headingtext: 'Most trending',);
                    },
                  ),
                ),
                HeadingTextWidget(
                    size: 22,
                    text: 'Your saved Partners',
                    trailingButton: false,
                    textColor: colorblack.withOpacity(0.7)),
                sbox20,
                SizedBox(
                  height: width * 1.1,
                  width: width,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return const SuccessStoryWidget(headingtext: 'Saved Partner',);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
