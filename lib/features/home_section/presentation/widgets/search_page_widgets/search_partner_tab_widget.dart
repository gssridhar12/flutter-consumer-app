import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/search_bloc/search_bloc_bloc.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_container_widget.dart';
import 'package:sizer/sizer.dart';

class SearchPartnerTabWidget extends StatelessWidget {
  const SearchPartnerTabWidget({
    super.key,
    // required this.width,
    required this.keyword,
  });

  // final double width;
  final String keyword;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchBlocState>(
      builder: (context, state) {
        if (state is GetSearchPartnerLoading) {
          return const CircularProgressIndicator();
        } else if (state is GetSearchPartnerFailed) {
          return const SizedBox(
              height: 100, child: Center(child: Text('Nothing Found')));
        } else if (state is GetSearchPartnerSuccess) {
          final data = state.partner.data!.profiles;
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: data!.length,
            shrinkWrap: true,
            itemBuilder: (context, index) => Column(
              children: [
                CustomContainerWidget(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SizedBox(
                              height: 9.h,
                              width: 9.h,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(40),
                                child: CustomImage(
                                    imageUrl: data[index]
                                            .profileDetails
                                            ?.profileImage ??
                                        ''),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              sbox,
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: padding),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                        data[index]
                                                .profileDetails
                                                ?.profileName ??
                                            "",
                                        style: const TextStyle(
                                            fontSize: 16, color: colorblack)),
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        const Icon(
                                          Icons.star,
                                          size: 14,
                                          color: colorred,
                                        ),
                                        const Text(
                                          '4.3',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: colorred,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Text(
                                          '(365 gigs)',
                                          style: TextStyle(
                                              fontSize: 14,
                                              color:
                                                  colorblack.withOpacity(0.5),
                                              fontWeight: FontWeight.w400),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              sbox5,
                              const Padding(
                                padding:
                                    EdgeInsets.symmetric(horizontal: padding),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.stars_outlined,
                                      color: colorred,
                                      size: 12,
                                    ),
                                    Text(
                                      'Megmo Preferred Partner',
                                      style: TextStyle(
                                          color: colorred, fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              sbox,
                              Row(
                                children: [
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(left: padding),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: colorgrey.withOpacity(0.2)),
                                      child: const Padding(
                                        padding: EdgeInsets.all(5.0),
                                        child: Text('Level 7 Partner',
                                            style: TextStyle(fontSize: 12)),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: padding),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(5),
                                          color: colorgrey.withOpacity(0.2)),
                                      child: const Padding(
                                          padding: EdgeInsets.all(5.0),
                                          child: Text('Gold',
                                              style: TextStyle(fontSize: 12))),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(padding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 60.w,
                              child: Text(
                                data[index]
                                        .profileDetails
                                        ?.parentServiceOffered
                                        ?.join(', ') ??
                                    '',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: colorblack.withOpacity(0.7),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: padding),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: colorwhite,
                                    border: Border.all(
                                        color: colorblack.withOpacity(0.5))),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    sbox5,
                                    Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        child: Text(
                                            '₹ ${data[index].profileDetails?.unlockCost ?? ""}',
                                            style:
                                                const TextStyle(fontSize: 16))),
                                    const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        child: Text('onwards',
                                            style: TextStyle(fontSize: 12))),
                                    sbox5,
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                sbox,
                sbox,
              ],
            ),
          );
        }
        return const SizedBox(
          height: 10,
        );
      },
    );
  }
}
