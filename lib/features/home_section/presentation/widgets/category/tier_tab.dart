import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/all_partners_entity.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/all_partner_bloc/all_partner_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/top_partner_widget/top_partner_widget.dart';

class TierTab extends StatefulWidget {
  const TierTab({super.key});

  @override
  State<TierTab> createState() => _TierTabState();
}

class _TierTabState extends State<TierTab> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  List<ProfileElement> dataList = [];

  ValueNotifier<List<ProfileElement>> datasource =
      ValueNotifier<List<ProfileElement>>([]);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 3,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: bggray,
          toolbarHeight: 0,
          automaticallyImplyLeading: false,
          bottom: ButtonsTabBar(
            onTap: (index) {
              setState(() {
                // Updating the datasource based on the tab selected
                if (index == 0) {
                  datasource.value = dataList
                      .where((element) =>
                          element.subscriptionAgreement != null &&
                          element.subscriptionAgreement!.subscriptionTier
                              .contains("Gold"))
                      .toList().reversed
                     .toList();
                } else if (index == 1) {
                  datasource.value = dataList
                      .where((element) =>
                          element.subscriptionAgreement != null &&
                          element.subscriptionAgreement!.subscriptionTier
                              .contains("Silver"))
                      .toList().reversed
                     .toList();
                } else if (index == 2) {
                  datasource.value = dataList
                      .where((element) =>
                          element.subscriptionAgreement != null &&
                          element.subscriptionAgreement!.subscriptionTier
                              .contains("Bronze"))
                      .toList().reversed
                     .toList();
                }
              });
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 50),
            buttonMargin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            height: 110,
            controller: _tabController,
            elevation: 0,
            backgroundColor: Colors.grey[300],
            radius: 15,
            borderWidth: 0.2,
            borderColor: colorblack.withOpacity(0.5),
            unselectedBackgroundColor: colorwhite.withOpacity(0.7),
            labelStyle: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            unselectedLabelStyle: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
            unselectedBorderColor: colorblack.withOpacity(0.5),
            tabs: [
              Tab(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        'assets/photos/gold.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    sbox,
                    const Text(
                      'Gold',
                      style: TextStyle(
                          color: colorblack,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Tab(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        'assets/photos/silver.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    sbox,
                    const Text(
                      'Silver',
                      style: TextStyle(
                          color: colorblack,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    )
                  ],
                ),
              ),
              Tab(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                      width: 50,
                      child: Image.asset(
                        'assets/photos/bronze.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    sbox,
                    const Text(
                      'Bronze',
                      style: TextStyle(
                          color: colorblack,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: BlocBuilder<AllPartnerBloc, AllPartnerBlocState>(
                builder: (context, state) {
                  if (state is GetAllProfileFailed) {
                    return const Text('Something went wrong');
                  } else if (state is GetAllProfileLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is GetAllProfileSuccess) {
                    dataList = state.partner.data.profiles;

                    // Initialize datasource when loading profiles
                    if (datasource.value.isEmpty) {
                      datasource.value = dataList;
                    }

                    return Column(
                      children: [
                        ValueListenableBuilder<List<ProfileElement>>(
                          valueListenable: datasource,
                          builder: (context, value, child) => value.isNotEmpty
                              ? ListView.builder(
                                  physics: const BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  itemCount: value.length,
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return TopPartnerCardWidget(
                                      width: width,
                                      entity: value,
                                      index: index,
                                    );
                                  },
                                )
                              : const Center(child: Text('Nothing found')),
                        ),
                      ],
                    );
                  }
                  return const Text('No data available');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// import 'package:buttons_tabbar/buttons_tabbar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_consumer_app/core/colors/colors.dart';
// import 'package:flutter_consumer_app/core/constant/constant.dart';
// import 'package:flutter_consumer_app/features/home_section/domain/entities/response/all_partners_entity.dart';
// import 'package:flutter_consumer_app/features/home_section/presentation/bloc/all_partner_bloc/all_partner_bloc_bloc.dart';
// import 'package:flutter_consumer_app/features/home_section/presentation/widgets/top_partner_widget/top_partner_widget.dart';

// class TierTab extends StatefulWidget {
//   const TierTab({super.key});

//   @override
//   State<TierTab> createState() => _TierTabState();
// }

// class _TierTabState extends State<TierTab> with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     _tabController = TabController(length: 3, vsync: this);

//     super.initState();
//   }

//   List<ProfileElement> dataList = [];

//   ValueNotifier<List<ProfileElement>> datasource =
//       ValueNotifier<List<ProfileElement>>([]);

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;

//     return DefaultTabController(
//       length: 3,
//       initialIndex: 1,
//       child: Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: bggray,
//           toolbarHeight: 0,
//           automaticallyImplyLeading: false,
//           bottom: ButtonsTabBar(
//             onTap: (index) {
//               if (index == 0) {
//                 datasource.value = dataList
//                     .where((element) =>
//                         element.subscriptionAgreement != null &&
//                         element.subscriptionAgreement!.subscriptionTier
//                             .contains("Gold"))
//                     .toList()
//                     .reversed
//                     .toList();
//               } else if (index == 1) {
//                 datasource.value = dataList
//                     .where((element) =>
//                         element.subscriptionAgreement != null &&
//                         element.subscriptionAgreement!.subscriptionTier
//                             .contains("Silver"))
//                     .toList()
//                     .reversed
//                     .toList();
//               } else if (index == 2) {
//                 datasource.value = dataList
//                     .where((element) =>
//                         element.subscriptionAgreement != null &&
//                         element.subscriptionAgreement!.subscriptionTier
//                             .contains("Bronze"))
//                     .toList()
//                     .reversed
//                     .toList();
//               }
//             },
//             contentPadding: const EdgeInsets.symmetric(horizontal: 50),
//             buttonMargin:
//                 const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//             height: 110,
//             controller: _tabController,
//             elevation: 0,
//             backgroundColor: colorgrey,
//             radius: 15,
//             borderWidth: 0.2,
//             borderColor: colorblack.withOpacity(0.5),
//             unselectedBackgroundColor: colorwhite.withOpacity(0.7),
//             labelStyle: const TextStyle(
//               color: Colors.white,
//               fontWeight: FontWeight.w500,
//             ),
//             unselectedLabelStyle: const TextStyle(
//               color: Colors.black,
//               fontWeight: FontWeight.w500,
//             ),
//             unselectedBorderColor: colorblack.withOpacity(0.5),
//             tabs: [
//               Tab(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       height: 50,
//                       width: 50,
//                       child: Image.asset(
//                         'assets/images/defaultimg.png',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     sbox,
//                     const Text(
//                       'Gold',
//                       style: TextStyle(
//                           color: colorblack,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w400),
//                     )
//                   ],
//                 ),
//               ),
//               Tab(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       height: 50,
//                       width: 50,
//                       child: Image.asset(
//                         'assets/images/defaultimg.png',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     sbox,
//                     const Text(
//                       'Silver',
//                       style: TextStyle(
//                           color: colorblack,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w400),
//                     )
//                   ],
//                 ),
//               ),
//               Tab(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     SizedBox(
//                       height: 50,
//                       width: 50,
//                       child: Image.asset(
//                         'assets/images/defaultimg.png',
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     sbox,
//                     const Text(
//                       'Bronze',
//                       style: TextStyle(
//                           color: colorblack,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w400),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         body: CustomScrollView(
//           slivers: [
//             SliverToBoxAdapter(
//               child: BlocBuilder<AllPartnerBloc, AllPartnerBlocState>(
//                 builder: (context, state) {
//                   if (state is GetAllProfileFailed) {
//                     return const Text('somehting workgn');
//                   } else if (state is GetAllProfileLoading) {
//                     return const CircularProgressIndicator();
//                   } else if (state is GetAllProfileSuccess) {
//                     dataList = state.partner.data.profiles;
//                     datasource.value = dataList;
//                     print(datasource.toString());
//                     return Column(
//                       children: [
//                         datasource.value.isNotEmpty
//                             ? ValueListenableBuilder<List<ProfileElement>>(
//                                 valueListenable: datasource,
//                                 builder: (context, value, child) =>
//                                     ListView.builder(
//                                   physics: const BouncingScrollPhysics(),
//                                   shrinkWrap: true,
//                                   itemCount: value.length,
//                                   itemBuilder:
//                                       (BuildContext context, int index) {
//                                     return Padding(
//                                       padding: const EdgeInsets.symmetric(
//                                           horizontal: 10.0),
//                                       child: TopPartnerCardWidget(
//                                         width: width,
//                                         entity: value,
//                                         index: index,
//                                       ),
//                                     );
//                                   },
//                                 ),
//                               )
//                             : const Text('nothing found')
//                       ],
//                     );
//                   }
//                   return const Text('data');
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
