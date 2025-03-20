import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/search_bloc/search_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/most_booked_package_tile.dart';
import 'package:flutter_consumer_app/features/packages_section/presentation/screens/package_details_page.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_container_widget.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchPackageTabWidget extends StatefulWidget {
  const SearchPackageTabWidget({
    super.key,
    required this.width,
    required this.keyword,
    required this.isGuestUser,
  });

  final double width;
  final String keyword;
  final bool isGuestUser;

  @override
  State<SearchPackageTabWidget> createState() => _SearchPackageTabWidgetState();
}

class _SearchPackageTabWidgetState extends State<SearchPackageTabWidget> {
  @override
  void initState() {
    // BlocProvider.of<SearchBloc>(context)
    //     .add(const GetSearchPackage('Solo Acoustic Set'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocBuilder<SearchBloc, SearchBlocState>(
          builder: (context, state) {
            if (state is GetSearchPackageLoading) {
              return const CircularProgressIndicator();
            } else if (state is GetSearchPackageFailed) {
              return const SizedBox(
                height: 100,
                child: Center(
                  child: Text('Nothing Found'),
                ),
              );
            } else if (state is GetSearchPackageSuccess) {
              final data = state.package.data!.packages;
              return ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: data!.length,
                shrinkWrap: true,
                itemBuilder: (context, index) => Column(
                  children: [
                    CustomContainerWidget(
                      onTap: () {
                        AppNavigation.pushNavigation(context,
                            PackageDetailsPage(uuid: data[index].packageUuid!));
                      },
                      borderRadius: 15,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  sbox20,
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10.0),
                                    child: Text(data[index].packageName ?? "",
                                        style: TextStyle(
                                            fontSize: 18,
                                            color:
                                                colorblack.withOpacity(0.7))),
                                  ),
                                  const PackageRatingAndGigsCountWidget(
                                    rating: "4.3",
                                    count: "pakage rating",
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  sboxW,
                                  SizedBox(
                                    height: 35.h,
                                    width: 35.h,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(30),
                                      child: CustomImage(
                                          imageUrl:
                                              data[index].packageCoverImage ??
                                                  ''),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: const EdgeInsets.only(
                                            right: 10, left: 10, top: 10),
                                        child: const Text(
                                          "api-not found",
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: colorblack,
                                              overflow: TextOverflow.ellipsis,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      const PackageRatingAndGigsCountWidget(
                                        rating: "api",
                                        count: 'not',
                                      ),
                                      sbox,
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            child: Stack(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(padding),
                                  child: SizedBox(
                                    height: 85.h,
                                    width: 85.h,
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: CustomImage(
                                          imageUrl:
                                              data[index].packageCoverImage ??
                                                  ''),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 75,
                                  right: 15,
                                  left: 15,
                                  bottom: 5,
                                  child: Container(
                                    width: widget.width * 0.2,
                                    height: widget.width * 0.08,
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 5,
                                              spreadRadius: 1,
                                              color:
                                                  colorblack.withOpacity(0.1))
                                        ],
                                        borderRadius: BorderRadius.circular(12),
                                        color: colorwhite),
                                    child: Center(
                                      child: Text(
                                        '₹ ${data[index].packageCost}',
                                        style: const TextStyle(color: colorred),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            }
            return const SizedBox(
              height: 10,
            );
          },
        ),
      ],
    );
  }
}
