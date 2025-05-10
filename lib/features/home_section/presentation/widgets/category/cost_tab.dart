// ignore_for_file: sort_child_properties_last, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:developer';

import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/all_partner_bloc/all_partner_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/top_partner_widget/top_partner_widget.dart';

import '../../../domain/entities/response/all_partners_entity.dart';

class CostTab extends StatefulWidget {
  const CostTab({super.key});

  @override
  State<CostTab> createState() => _CostTabState();
}

class _CostTabState extends State<CostTab> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  double _minValue = 1500;
  double _maxValue = 135000;
  RangeValues _selectedRange = RangeValues(20000, 40000); // Initial selected range


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
                if (index == 0) {
                  datasource.value = dataList
                    ..sort((a, b) => a.profile.profileDetails.unlockCost!
                        .compareTo(
                            b.profile.profileDetails.unlockCost!.toInt()));
                } else if (index == 1) {
                  datasource.value = dataList
                    ..sort((a, b) => b.profile.profileDetails.unlockCost!
                        .compareTo(
                            a.profile.profileDetails.unlockCost!.toInt()));
                } else if (index == 2) {
                  datasource.value = dataList
                      .where((element) =>
                          element.profile.profileDetails.freshTalent == false)
                      .toList();
                  log(datasource.value.toList().toString());
                }
              },
              contentPadding: const EdgeInsets.symmetric(horizontal: 40),
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
                          'assets/photos/rupees_i.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      sbox,
                      const Text(
                        textAlign: TextAlign.center,
                        'Show price\n low to high',
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
                          'assets/photos/rupees_d.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                      sbox,
                      const Text(
                        textAlign: TextAlign.center,
                        'Show price\n high to low',
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
          
     
          RangeSlider(
            values: _selectedRange,
            min: _minValue,
            max: _maxValue,
            divisions: 100, // Adjust divisions as per required steps
            labels: RangeLabels(
              '₹${_selectedRange.start.round().toString()}',
              '₹${_selectedRange.end.round().toString()}',
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _selectedRange = values; // Update the selected range
              });
            },
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
          ),
          SizedBox(
            width: 200,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text("₹ 1500",style: TextStyle(color: Colors.black45),),
               Text("₹ 135000",style: TextStyle(color: Colors.black45),)
              
            ],),
          ),
       
          const Text(
            'Price Range',
            style: TextStyle(
              fontSize: 14,
              color: Colors.black54,
              fontWeight: FontWeight.w400
            
            ),
          ),
        ],
      ),
    
    )

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
                      debugPrint(datasource.toString());
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

// class CostTab extends StatefulWidget {
//   const CostTab({super.key});

//   @override
//   State<CostTab> createState() => _CostTabState();
// }

// class _CostTabState extends State<CostTab> with SingleTickerProviderStateMixin {
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
//         length: 3,
//         initialIndex: 1,
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
//                     ..sort((a, b) => a.profile.profileDetails.unlockCost!
//                         .compareTo(
//                             b.profile.profileDetails.unlockCost!.toInt()));
//                 } else if (index == 1) {
//                   datasource.value = dataList
//                     ..sort((a, b) => b.profile.profileDetails.unlockCost!
//                         .compareTo(
//                             a.profile.profileDetails.unlockCost!.toInt()));
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
//                           'assets/images/defaultimg.png',
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       sbox,
//                       const Text(
//                         textAlign: TextAlign.center,
//                         'Show price\n low to high',
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
//                           'assets/images/defaultimg.png',
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       sbox,
//                       const Text(
//                         textAlign: TextAlign.center,
//                         'Show price\n high to low',
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
//                           'assets/images/defaultimg.png',
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                       sbox,
//                       const Text(
//                         textAlign: TextAlign.center,
//                         'Show level 10 \npartners only',
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
