// ignore_for_file: avoid_print

import 'dart:developer';

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/all_partners_entity.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/all_partner_bloc/all_partner_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/top_partner_widget/top_partner_widget.dart';

class LevelTab extends StatefulWidget {
  const LevelTab({super.key});

  @override
  State<LevelTab> createState() => _LevelTabState();
}

class _LevelTabState extends State<LevelTab>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 6, vsync: this);

    super.initState();
  }

  List<ProfileElement> dataList = [];

  ValueNotifier<List<ProfileElement>> datasource =
      ValueNotifier<List<ProfileElement>>([]);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return DefaultTabController(
      length: 6,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: bggray,
          toolbarHeight: 0,
          automaticallyImplyLeading: false,
          bottom: ButtonsTabBar(
            onTap: (index) {
              List<ProfileElement> newDataList = List.from(dataList);
              if (index == 0) {
                newDataList.sort((a, b) =>
                    (b.profile.profileDetails.partnerLevel ?? 0)
                        .compareTo(a.profile.profileDetails.partnerLevel ?? 0));
              } else if (index == 1) {
                newDataList.sort((a, b) =>
                    (a.profile.profileDetails.partnerLevel ?? 0)
                        .compareTo(b.profile.profileDetails.partnerLevel ?? 0));
              } else if (index == 2) {
                newDataList = dataList
                    .where((element) =>
                        element.profile.profileDetails.partnerLevel == 10)
                    .toList();
              } else if (index == 3) {
                newDataList.sort((a, b) =>
                    (b.profile.profileDetails.partnerLevel ?? 0)
                        .compareTo(a.profile.profileDetails.partnerLevel ?? 0));

                newDataList = newDataList
                    .where((element) =>
                        element.profile.profileDetails.partnerLevel != null &&
                        element.profile.profileDetails.partnerLevel! >= 5 &&
                        element.profile.profileDetails.partnerLevel! <= 10)
                    .toList();
              } else if (index == 4) {
                newDataList.sort((a, b) =>
                    (b.profile.profileDetails.partnerLevel ?? 0)
                        .compareTo(a.profile.profileDetails.partnerLevel ?? 0));

                newDataList = newDataList
                    .where((element) =>
                        element.profile.profileDetails.partnerLevel != null &&
                        element.profile.profileDetails.partnerLevel! >= 1 &&
                        element.profile.profileDetails.partnerLevel! <= 5)
                    .toList();
              }
              datasource.value = newDataList;
              log(datasource.value.toList().toString());
            },
            contentPadding: const EdgeInsets.symmetric(horizontal: 40),
            buttonMargin:
                const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            height: 120,
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
                        'assets/photos/level_d.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    sbox,
                    const Text(
                      textAlign: TextAlign.center,
                      'Show highest\n to lowest',
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
                        'assets/photos/level_i.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    sbox,
                    const Text(
                      textAlign: TextAlign.center,
                      'Show lowest\n to highest',
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
                        'assets/photos/10.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    sbox,
                    const Text(
                      textAlign: TextAlign.center,
                      'Show level 10 \npartners only',
                      style: TextStyle(
                          color: colorblack,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
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
                      width: 100,
                      child: Image.asset(
                        'assets/photos/5-10.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    sbox,
                    const Text(
                      textAlign: TextAlign.center,
                      'Show level 5-10\n partners only',
                      style: TextStyle(
                          color: colorblack,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
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
                      width: 100,
                      child: Image.asset(
                        'assets/photos/1-5.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    sbox,
                    const Text(
                      textAlign: TextAlign.center,
                      'Show level 1-5\n partners only',
                      style: TextStyle(
                          color: colorblack,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
              const Tab(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      textAlign: TextAlign.center,
                      'Want to know more\n about partner levels\n and how they are\n allotted ?',
                      style: TextStyle(
                          color: colorblack,
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
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
                    return const Text('somehting workgn');
                  } else if (state is GetAllProfileLoading) {
                    return const CircularProgressIndicator();
                  } else if (state is GetAllProfileSuccess) {
                    dataList = state.partner.data.profiles;
                    datasource.value = dataList;
                    debugPrint(datasource.toString());
                    return Column(
                      children: [
                        datasource.value.isNotEmpty
                            ? ValueListenableBuilder<List<ProfileElement>>(
                                valueListenable: datasource,
                                builder: (context, value, _) =>
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
      ),
    );
  }
}


// import 'dart:developer';

// import 'package:buttons_tabbar/buttons_tabbar.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_consumer_app/core/colors/colors.dart';
// import 'package:flutter_consumer_app/core/constant/constant.dart';
// import 'package:flutter_consumer_app/features/home_section/domain/entities/response/all_partners_entity.dart';
// import 'package:flutter_consumer_app/features/home_section/presentation/bloc/all_partner_bloc/all_partner_bloc_bloc.dart';
// import 'package:flutter_consumer_app/features/home_section/presentation/widgets/top_partner_widget/top_partner_widget.dart';

// class LevelTab extends StatefulWidget {
//   const LevelTab({super.key});

//   @override
//   State<LevelTab> createState() => _LevelTabState();
// }

// class _LevelTabState extends State<LevelTab>
//     with SingleTickerProviderStateMixin {
//   late TabController _tabController;

//   @override
//   void initState() {
//     _tabController = TabController(length: 5, vsync: this);

//     super.initState();
//   }

//   List<ProfileElement> dataList = [];

//   ValueNotifier<List<ProfileElement>> datasource =
//       ValueNotifier<List<ProfileElement>>([]);

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;

//     return DefaultTabController(
//       length: 5,
//       initialIndex: 1,
//       child: Scaffold(
//         appBar: AppBar(
//           elevation: 0,
//           backgroundColor: bggray,
//           toolbarHeight: 0,
//           automaticallyImplyLeading: false,
//           bottom: ButtonsTabBar(
//             onTap: (index) {
//               List<ProfileElement> newDataList = List.from(dataList);
//               if (index == 0) {
//                 newDataList.sort((a, b) =>
//                     (b.profile.profileDetails.partnerLevel ?? 0)
//                         .compareTo(a.profile.profileDetails.partnerLevel ?? 0));
//               } else if (index == 1) {
//                 newDataList.sort((a, b) =>
//                     (a.profile.profileDetails.partnerLevel ?? 0)
//                         .compareTo(b.profile.profileDetails.partnerLevel ?? 0));
//               } else if (index == 2) {
//                 newDataList = dataList
//                     .where((element) =>
//                         element.profile.profileDetails.partnerLevel == 10)
//                     .toList();
//               } else if (index == 3) {
//                 newDataList.sort((a, b) =>
//                     (b.profile.profileDetails.partnerLevel ?? 0)
//                         .compareTo(a.profile.profileDetails.partnerLevel ?? 0));

//                 newDataList = newDataList
//                     .where((element) =>
//                         element.profile.profileDetails.partnerLevel != null &&
//                         element.profile.profileDetails.partnerLevel! >= 1 &&
//                         element.profile.profileDetails.partnerLevel! <= 5)
//                     .toList();
//               }

//               // Assign the new list to the ValueNotifier
//               datasource.value = newDataList;
//               log(datasource.value.toList().toString());
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
//                       textAlign: TextAlign.center,
//                       'Show highest\n to lowest',
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
//                       textAlign: TextAlign.center,
//                       'Show lowest\n to highest',
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
//                       textAlign: TextAlign.center,
//                       'Show level 10 \npartners only',
//                       style: TextStyle(
//                           color: colorblack,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w400),
//                     ),
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
//                       textAlign: TextAlign.center,
//                       'Show level 1-5\n partners only',
//                       style: TextStyle(
//                           color: colorblack,
//                           fontSize: 14,
//                           fontWeight: FontWeight.w400),
//                     ),
//                   ],
//                 ),
//               ),
//               const Tab(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Text(
//                       textAlign: TextAlign.center,
//                       'Want to know more\n about partner levels\n and how they are\n allotted ?',
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
//                     debugPrint(datasource.toString());
//                     return Column(
//                       children: [
//                         datasource.value.isNotEmpty
//                             ? ValueListenableBuilder<List<ProfileElement>>(
//                                 valueListenable: datasource,
//                                 builder: (context, value, _) =>
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
