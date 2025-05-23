import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/top_partner_bloc/top_partner_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/category/all_category_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/drawer_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/category_tile_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/home_appbar_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/search_field_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/top_partner_widget/top_partner_card.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';

class TopPartnersInDemantSeeAllPage extends StatefulWidget {
  const TopPartnersInDemantSeeAllPage({super.key, this.isGuestUser});

  // final GetUserEntity? userModel;
  final bool? isGuestUser;

  @override
  State<TopPartnersInDemantSeeAllPage> createState() =>
      TopPartnersInDemantSeeAllPageState();
}

class TopPartnersInDemantSeeAllPageState
    extends State<TopPartnersInDemantSeeAllPage> with TickerProviderStateMixin {
  // AnimationController animationController =AnimationController(vsync: );

  final String? fullName = localDb.getString('fullName');

  @override
  void initState() {
    // animationController = BottomSheet.createAnimationController(this);
    // animationController.duration = Duration(seconds: 3);
    context.read<TopPartnerBloc>().add(const GetTopTopPartnerInDemant());
    super.initState();
  }

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  void dispose() {
    // animationController.dispose();
    super.dispose();
  }

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
              name: fullName ?? 'Pawrent',
              isGuestUser: widget.isGuestUser ?? false),
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
                      text: 'Top Partners in Demand',
                      size: 22,
                      fontWeight: FontWeight.w600,
                      trailingButton: false,
                      textColor: colorblack.withOpacity(0.7)),

                  const HeadingTextWidget(
                      text: "Wigglypet's bestselling partners this month",
                      size: 15,
                      fontWeight: FontWeight.w400,
                      trailingButton: false),

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
                                    category: category[index],
                                  ),
                                ],
                              );
                            },
                          ),
                        );
                      }
                      return const Text('Something went wrong');
                    },
                  ),
                  BlocBuilder<TopPartnerBloc, TopPartnerState>(
                    builder: (context, state) {
                      if (state is GetTopPartnerInDemantLoading) {
                        return SizedBox(
                          height: width * 0.72,
                          child: const Center(
                            child: CircularProgressIndicator(),
                          ),
                        );
                      }
                      if (state is GetTopPartnerInDemantFailed) {
                        return const Text('something went wrong');
                      }
                      if (state is GetTopPartnerInDemantSuccess) {
                        return ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: state.partner.data?.profiles?.length ?? 0,
                          itemBuilder: (BuildContext context, int index) {
                            if (state.partner.data?.profiles == null) {
                              return const SizedBox.shrink();
                            }
                            return TopPartnerCardCard(
                              width: width,
                              entity: state.partner.data!.profiles,
                              index: index,
                            );
                          },
                        );
                      }
                      return const Text('asdfasdf');
                    },
                  ),
                  // TopPartnerCardWidget(width: width),
                  // TopPartnerCardWidget(width: width),
                  // TopPartnerCardWidget(width: width),
                  // TopPartnerCardWidget(width: width),
                ],
              ),
            ),
          )),
    );
  }
}
