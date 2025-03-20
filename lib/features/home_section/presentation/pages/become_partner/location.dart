// import 'package:flutter/material.dart';
// import 'package:flutter_consumer_app/core/colors/colors.dart';
// import 'package:flutter_consumer_app/core/constant/constant.dart';
// import 'package:flutter_consumer_app/features/home_section/src/presentation/widgets/AppbarWedget.dart';

// import 'EmailContact.dart';

// class LocationButtonPage extends StatefulWidget {
//   const LocationButtonPage({Key? key}) : super(key: key);

//   @override
//   State<LocationButtonPage> createState() => _RatingHomePageState();
// }

// class _RatingHomePageState extends State<LocationButtonPage> {
//   List<int> selectedContainers = [];

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: const PreferredSize(
//           preferredSize: Size.fromHeight(70),
//           child: AppBarWidgetPrimary(
//             text: 'Tell us about yourself',
//           ),
//         ),
//         body: Column(
//           children: [
//             Expanded(
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.vertical,
//                 physics: const BouncingScrollPhysics(),
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 30, top: 25),
//                   child: Column(
//                     children: [
//                       const Padding(
//                         padding: EdgeInsets.only(right: 20, left: 5),
//                         child: SizedBox(
//                           width: 343,
//                           child: Text(
//                             'Select the cities where you can provide the previous mentioned services',
//                             style: TextStyle(
//                               color: colorred,
//                               fontSize: 22,
//                               fontWeight: FontWeight.w500,
//                               height: 1.06,
//                             ),
//                           ),
//                         ),
//                       ),
//                       sbox20,
//                       sbox,
//                       buildContainerWithIcon(0, Icons.business, 'Mumbai'),
//                       sbox20,
//                       buildContainerWithIcon(1, Icons.person, 'Delhi'),
//                       sbox20,
//                       buildContainerWithIcon(2, Icons.group, 'Bangalore'),
//                       sbox20,
//                       buildContainerWithIcon(3, Icons.business, 'Pune'),
//                       sbox20,
//                       buildContainerWithIcon(4, Icons.person, 'Hyderabad'),
//                       sbox20,
//                       buildContainerWithIcon(5, Icons.group, 'Chennai'),
//                       sbox20,
//                       buildContainerWithIcon(6, Icons.group, 'UP'),
//                       sbox20,
//                       sbox20,
//                       sbox20,
//                       sbox20,
//                       sbox20,
//                       sbox20,
//                       sbox20,
//                       const SizedBox(
//                         height: 80,
//                       ),
//                       const SizedBox(
//                         height: 80,
//                       ),
//                       sbox20,
//                     ],
//                   ),
//                 ),
//               ),
//             ),

//             // Static red color container at the bottom
//             Container(
//               width: 395,
//               height: 104,
//               decoration: const BoxDecoration(
//                 color: Color(0xFFF8F8F8),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color(0x0C220505),
//                     blurRadius: 12,
//                     offset: Offset(2, 2),
//                     spreadRadius: 5,
//                   )
//                 ],
//               ),
//               child: Center(
//                 child: Row(
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.only(left: 5),
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                         child: Container(
//                           child: Row(
//                             children: [
//                               Icon(
//                                 Icons.keyboard_arrow_left,
//                                 size: 30.74,
//                                 color: Color(0xFFA1A1A1),
//                               ),
//                               Text(
//                                 'Back',
//                                 style: TextStyle(
//                                   color: Color(0xFFA1A1A1),
//                                   fontSize: 17.74,
//                                   fontWeight: FontWeight.w600,
//                                   height: 1.06,
//                                   letterSpacing: -0.40,
//                                 ),
//                               )
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                     const Spacer(),
//                     GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) =>
//                                 const EmailContactButtonPage(),
//                           ),
//                         );
//                       },
//                       child: Padding(
//                         padding: const EdgeInsets.only(right: 25),
//                         child: Container(
//                           width: 162,
//                           height: 47,
//                           padding: const EdgeInsets.only(
//                             top: 12,
//                             left: 54,
//                             right: 38.76,
//                             bottom: 12.76,
//                           ),
//                           clipBehavior: Clip.antiAlias,
//                           decoration: ShapeDecoration(
//                             gradient: selectedContainers.isEmpty
//                                 ? null
//                                 : const LinearGradient(
//                                     begin: Alignment(1.00, -0.03),
//                                     end: Alignment(-1, 0.03),
//                                     colors: [
//                                       Color(0xFFE22727),
//                                       Color(0xFFFF8678)
//                                     ],
//                                   ),
//                             color: selectedContainers.isEmpty
//                                 ? const Color(0xFFF8F8F8)
//                                 : null,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(10.64),
//                             ),
//                             shadows: const [
//                               BoxShadow(
//                                 color: Color(0x1E4A4C44),
//                                 blurRadius: 21.28,
//                                 offset: Offset(0, 7.09),
//                                 spreadRadius: 1.77,
//                               ),
//                               BoxShadow(
//                                 color: Color(0x054A4C44),
//                                 blurRadius: 6.21,
//                                 offset: Offset(0, 0),
//                                 spreadRadius: 1.77,
//                               )
//                             ],
//                           ),
//                           child: Row(
//                             children: [
//                               Text(
//                                 'Next',
//                                 style: TextStyle(
//                                   color: selectedContainers.isEmpty
//                                       ? Color(0xFFA1A1A1)
//                                       : Colors.white,
//                                   fontSize: 17.74,
//                                   fontWeight: FontWeight.w600,
//                                   height: 1.06,
//                                   letterSpacing: -0.40,
//                                 ),
//                               ),
//                               const Spacer(),
//                               Icon(
//                                 Icons.keyboard_arrow_right,
//                                 color: selectedContainers.isEmpty
//                                     ? const Color(0xFFA1A1A1)
//                                     : Colors.white,
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget buildContainerWithIcon(int index, IconData icon, String text) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           if (selectedContainers.contains(index)) {
//             selectedContainers.remove(index);
//           } else {
//             selectedContainers.add(index);
//           }
//         });
//       },
//       child: Container(
//         width: 350,
//         height: 71,
//         decoration: ShapeDecoration(
//           shape: RoundedRectangleBorder(
//             side: BorderSide(
//               width: 1,
//               color: selectedContainers.contains(index)
//                   ? const Color(0xFFE22727) // Set red color if selected
//                   : const Color(0x7F475A86),
//             ),
//             borderRadius: BorderRadius.circular(15),
//           ),
//         ),
//         child: Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 20, right: 15),
//               child: Icon(
//                 icon,
//                 color: selectedContainers.contains(index)
//                     ? const Color(0xFF5F5F5F) // Set red color if selected
//                     : const Color(0xFF5F5F5F),
//               ),
//             ),
//             Text(
//               text,
//               style: TextStyle(
//                 fontWeight: FontWeight.w400,
//                 fontSize: 18,
//                 color: selectedContainers.contains(index)
//                     ? const Color(0xFF5F5F5F) // Set red color if selected
//                     : const Color(0xFF5F5F5F),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   SizedBox get sbox20 => const SizedBox(height: 20);
// }
