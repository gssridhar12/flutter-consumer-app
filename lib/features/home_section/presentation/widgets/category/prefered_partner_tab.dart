import 'dart:developer';

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/all_partner_bloc/all_partner_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/top_partner_widget/top_partner_widget.dart';

import '../../../domain/entities/response/all_partners_entity.dart';

class PreferedPartnersTab extends StatefulWidget {
  const PreferedPartnersTab({super.key});

  @override
  State<PreferedPartnersTab> createState() => _PreferedPartnersTabState();
}

class _PreferedPartnersTabState extends State<PreferedPartnersTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);

    super.initState();
  }

  List<ProfileElement> dataList = [];
  ValueNotifier<List<ProfileElement>> datasource =
      ValueNotifier<List<ProfileElement>>([]);
  // void _handleTabChange() {
  // // Perform sorting logic based on the selected tab
  // datasource.value = dataList
  //     .where((element) => element.profileDetails.partnerInDemand == true)
  //     .toList();
  // print('tab clicked');
  // if (_tabController.indexIsChanging) {
  //   setState(() {
  //     // Update dataList based on the selected tab
  //     switch (_tabController.index) {
  //       case 0:
  //         // Sorting logic for "All"
  //         setState(() {
  //           dataList = dataList
  //               .where((element) =>
  //                   element.profileDetails.partnerInDemand == false)
  //               .toList();
  //           print('asdfasdfsadfasdfasdf');
  //         });

  //         break;
  //       case 1:

  //         // dataList.sort((a, b) => a.contains('Tiers') ? 0 : 1);
  //         break;
  //       case 2:

  //         // dataList.sort((a, b) => a.contains('Level') ? 0 : 1);
  //         break;
  //       case 3:

  //         // Add your sorting logic for cost here
  //         break;
  //       default:
  //         break;
  //     }
  //   });
  // }
  // }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return DefaultTabController(
        initialIndex: 0,
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0,
            backgroundColor: bggray,
            toolbarHeight: 0,
            automaticallyImplyLeading: false,
            bottom: ButtonsTabBar(
              onTap: (index) {
                if (index == 0) {
                  datasource.value = dataList
                      .where((element) =>
                          element.profile.profileDetails.partnerInDemand ==
                          false)
                      .toList()
                      .reversed
                      .toList();
                } else if (index == 1) {
                  datasource.value = dataList
                      .where((element) =>
                          element.profile.profileDetails.trendingPartner ==
                          false)
                      .toList()
                      .reversed
                      .toList();
                  log(datasource.value.toList().toString());
                } else if (index == 2) {
                  datasource.value = dataList
                      .where((element) =>
                          element.profile.profileDetails.freshTalent == false)
                      .toList();
                  log(datasource.value.toList().toString());
                }
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 20),
              buttonMargin:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
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
                          'assets/photos/demand_logo.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      sbox,
                      const Text(
                        textAlign: TextAlign.center,
                        'Show top partners\n in demand',
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
                          'assets/photos/package_bokeed.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      sbox,
                      const Text(
                        textAlign: TextAlign.center,
                        'Show most\n booked packages',
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
                          'assets/photos/specker.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      sbox,
                      const Text(
                        textAlign: TextAlign.center,
                        'Show fresh talent\n on Woofurs',
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
            physics: const BouncingScrollPhysics(),
            slivers: [
              SliverToBoxAdapter(
                child: BlocBuilder<AllPartnerBloc, AllPartnerBlocState>(
                  builder: (context, state) {
                    if (state is GetAllProfileFailed) {
                      return const Text('somehting workgn');
                    } else if (state is GetAllProfileLoading) {
                      return const CircularProgressIndicator();
                    } else if (state is GetAllProfileSuccess) {
                      dataList = state.partner.data.profiles;
                      datasource.value = dataList;
                      print(datasource.toString());
                      return Column(
                        children: [
                          datasource.value.isNotEmpty
                              ? ValueListenableBuilder<List<ProfileElement>>(
                                  valueListenable: datasource,
                                  builder: (context, value, child) =>
                                      ListView.builder(
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
                                  ),
                                )
                              : const Text('nothing found')
                        ],
                      );
                    }
                    return const Text('data');
                  },
                ),
              ),
            ],
          ),
        ));
  }
}

// import 'dart:developer';

// import 'package:buttons_tabbar/buttons_tabbar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_consumer_app/core/colors/colors.dart';
// import 'package:flutter_consumer_app/core/constant/constant.dart';
// import 'package:flutter_consumer_app/features/home_section/presentation/bloc/all_partner_bloc/all_partner_bloc_bloc.dart';
// import 'package:flutter_consumer_app/features/home_section/presentation/widgets/top_partner_widget/top_partner_widget.dart';

// import '../../../domain/entities/response/all_partners_entity.dart';

// class PreferedPartnersTab extends StatefulWidget {
//   const PreferedPartnersTab({super.key});

//   @override
//   State<PreferedPartnersTab> createState() => _PreferedPartnersTabState();
// }

// class _PreferedPartnersTabState extends State<PreferedPartnersTab>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     _tabController = TabController(length: 3, vsync: this);

//     super.initState();
//   }

//   List<ProfileElement> dataList = [];
//   ValueNotifier<List<ProfileElement>> datasource = ValueNotifier<List<ProfileElement>>([]);
//   // void _handleTabChange() {
//   // // Perform sorting logic based on the selected tab
//   // datasource.value = dataList
//   //     .where((element) => element.profileDetails.partnerInDemand == true)
//   //     .toList();
//   // print('tab clicked');
//   // if (_tabController.indexIsChanging) {
//   //   setState(() {
//   //     // Update dataList based on the selected tab
//   //     switch (_tabController.index) {
//   //       case 0:
//   //         // Sorting logic for "All"
//   //         setState(() {
//   //           dataList = dataList
//   //               .where((element) =>
//   //                   element.profileDetails.partnerInDemand == false)
//   //               .toList();
//   //           print('asdfasdfsadfasdfasdf');
//   //         });

//   //         break;
//   //       case 1:

//   //         // dataList.sort((a, b) => a.contains('Tiers') ? 0 : 1);
//   //         break;
//   //       case 2:

//   //         // dataList.sort((a, b) => a.contains('Level') ? 0 : 1);
//   //         break;
//   //       case 3:

//   //         // Add your sorting logic for cost here
//   //         break;
//   //       default:
//   //         break;
//   //     }
//   //   });
//   // }
//   // }

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;

//     return DefaultTabController(
//         initialIndex: 0,
//         length: 3,
//         child: Scaffold(
//           appBar: AppBar(
//             elevation: 0,
//             backgroundColor: bggray,
//             toolbarHeight: 0,
//             automaticallyImplyLeading: false,
//             bottom: ButtonsTabBar(
//               onTap: (index) {
//                 if (index == 0) {
//                   datasource.value = dataList
//                       .where((element) =>
//                           element.profile.profileDetails.partnerInDemand == false)
//                       .toList()
//                       .reversed
//                       .toList();
//                 } else if (index == 1) {
//                   datasource.value = dataList
//                       .where((element) =>
//                           element.profile.profileDetails.trendingPartner == false)
//                       .toList()
//                       .reversed
//                       .toList();
//                   log(datasource.value.toList().toString());
//                 } else if (index == 2) {
//                   datasource.value = dataList
//                       .where((element) =>
//                           element.profile.profileDetails.freshTalent == false)
//                       .toList();
//                   log(datasource.value.toList().toString());
//                 }
//               },
//               contentPadding: const EdgeInsets.symmetric(horizontal: 50),
//               buttonMargin:
//                   const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//               height: 110,
//               controller: _tabController,
//               elevation: 0,
//               backgroundColor: colorgrey,
//               radius: 15,
//               borderWidth: 0.2,
//               borderColor: colorblack.withOpacity(0.5),
//               unselectedBackgroundColor: colorwhite.withOpacity(0.7),
//               labelStyle: const TextStyle(
//                 color: Colors.white,
//                 fontWeight: FontWeight.w500,
//               ),
//               unselectedLabelStyle: const TextStyle(
//                 color: Colors.black,
//                 fontWeight: FontWeight.w500,
//               ),
//               unselectedBorderColor: colorblack.withOpacity(0.5),
//               tabs: [
//                 Tab(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       SizedBox(
//                         height: 50,
//                         width: 50,
//                         child: Image.asset(
//                          'assets/photos/demand_logo.png',
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       sbox,
//                       const Text(
//                         textAlign: TextAlign.center,
//                         'Show top partners\n in demand',
//                         style: TextStyle(
//                             color: colorblack,
//                             fontSize: 14,
//                             fontWeight: FontWeight.w400),
//                       )
//                     ],
//                   ),
//                 ),
//                 Tab(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       SizedBox(
//                         height: 50,
//                         width: 50,
//                         child: Image.asset(
//                            'assets/photos/package_bokeed.png',
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       sbox,
//                       const Text(
//                         textAlign: TextAlign.center,
//                         'Show most\n booked packages',
//                         style: TextStyle(
//                             color: colorblack,
//                             fontSize: 14,
//                             fontWeight: FontWeight.w400),
//                       )
//                     ],
//                   ),
//                 ),
//                 Tab(
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       SizedBox(
//                         height: 50,
//                         width: 50,
//                         child: Image.asset(
//                            'assets/photos/specker.png',
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       sbox,
//                       const Text(
//                         textAlign: TextAlign.center,
//                         'Show fresh talent\n on Woofurs',
//                         style: TextStyle(
//                             color: colorblack,
//                             fontSize: 14,
//                             fontWeight: FontWeight.w400),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           body: CustomScrollView(
//             physics: const BouncingScrollPhysics(),
//             slivers: [
//               SliverToBoxAdapter(
//                 child: BlocBuilder<AllPartnerBloc, AllPartnerBlocState>(
//                   builder: (context, state) {
//                     if (state is GetAllProfileFailed) {
//                       return const Text('somehting workgn');
//                     } else if (state is GetAllProfileLoading) {
//                       return const CircularProgressIndicator();
//                     } else if (state is GetAllProfileSuccess) {
//                       dataList = state.partner.data.profiles;
//                       datasource.value = dataList;
//                       print(datasource.toString());
//                       return Column(
//                         children: [
//                           datasource.value.isNotEmpty
//                               ? ValueListenableBuilder<List<ProfileElement>>(
//                                   valueListenable: datasource,
//                                   builder: (context, value, child) =>
//                                       ListView.builder(
//                                     physics: const BouncingScrollPhysics(),
//                                     shrinkWrap: true,
//                                     itemCount: value.length,
//                                     itemBuilder:
//                                         (BuildContext context, int index) {
//                                       return Padding(
//                                         padding: const EdgeInsets.symmetric(
//                                             horizontal: 10.0),
//                                         child: TopPartnerCardWidget(
//                                           width: width,
//                                           entity: value,
//                                           index: index,
//                                         ),
//                                       );
//                                     },
//                                   ),
//                                 )
//                               : const Text('nothing found')
//                         ],
//                       );
//                     }
//                     return const Text('data');
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }
