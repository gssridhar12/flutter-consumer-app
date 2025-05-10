// import 'package:flutter/material.dart';
// import 'package:flutter_consumer_app/core/constant/constant.dart';
// import 'package:flutter_consumer_app/features/home_section/src/presentation/pages/become_partner/location.dart';
// import 'package:flutter_consumer_app/features/home_section/src/presentation/widgets/AppbarWedget.dart';


// class AgeButtonPage extends StatefulWidget {
//   const AgeButtonPage({Key? key}) : super(key: key);

//   @override
//   State<AgeButtonPage> createState() => _RatingHomePageState();
// }

// class _RatingHomePageState extends State<AgeButtonPage> {
//   int selectedContainer = -1; // Initialize with an invalid index

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
//             const SizedBox(
//               height: 20,
//             ),
//             Container(
//               width: 500,
//               height: 60,
//               decoration: const BoxDecoration(
//                 color: Color(0xFFF8F8F8),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Color.fromARGB(40, 218, 211, 211),
//                     blurRadius: 12,
//                     offset: Offset(2, 2),
//                     spreadRadius: 5,
//                   )
//                 ],
//               ),
//               child: const Center(
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 22, right: 20),
//                   child: Row(
//                     children: [
//                       SizedBox(
//                         width: 343,
//                         child: Text(
//                           'How long have you been doing this ?',
//                           style: TextStyle(
//                             color: Color(0xFFE22727),
//                             fontSize: 22,
//                             fontWeight: FontWeight.w500,
//                             height: 1.06,
//                           ),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ),

//             Expanded(
//               child: SingleChildScrollView(
//                 scrollDirection: Axis.vertical,
//                 physics: const BouncingScrollPhysics(),
//                 child: Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
//                   child: Column(
//                     children: [
//                       sbox,
//                       buildContainerWithIcon(
//                           0, Icons.business, 'This our first time'),
//                       sbox20,
//                       buildContainerWithIcon(
//                           1, Icons.person, 'Less than a year'),
//                       sbox20,
//                       buildContainerWithIcon(2, Icons.group, '1-2 years'),
//                       sbox20,
//                       buildContainerWithIcon(3, Icons.business, '2-4 years'),
//                       sbox20,
//                       buildContainerWithIcon(4, Icons.person, '4-6 years'),
//                       sbox20,
//                       buildContainerWithIcon(5, Icons.group, '6-8 years '),
//                       sbox20,
//                       buildContainerWithIcon(6, Icons.group, '8-12 years'),
//                       sbox20,
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
//               decoration: BoxDecoration(
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
//                     Padding(
//                       padding: const EdgeInsets.only(right: 20),
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (contex) =>
//                                       const LocationButtonPage()));
//                         },
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
//                             gradient: selectedContainer == -1
//                                 ? null
//                                 : const LinearGradient(
//                                     begin: Alignment(1.00, -0.03),
//                                     end: Alignment(-1, 0.03),
//                                     colors: [
//                                       Color(0xFFE22727),
//                                       Color(0xFFFF8678)
//                                     ],
//                                   ),
//                             color: selectedContainer == -1
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
//                                   color: selectedContainer == -1
//                                       ? Color(0xFFA1A1A1)
//                                       : Colors.white,
//                                   fontSize: 17.74,
//                                   fontWeight: FontWeight.w600,
//                                   height: 1.06,
//                                   letterSpacing: -0.40,
//                                 ),
//                               ),
//                               Spacer(),
//                               Icon(
//                                 Icons.keyboard_arrow_right,
//                                 color: selectedContainer == -1
//                                     ? Color(0xFFA1A1A1)
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
//           selectedContainer = index;
//         });
//       },
//       child: Container(
//         width: 350,
//         height: 71,
//         decoration: ShapeDecoration(
//           shape: RoundedRectangleBorder(
//             side: BorderSide(
//               width: 1,
//               color: selectedContainer == index
//                   ? const Color(0xFFE22727) // Set red color if selected
//                   : const Color(0x7F475A86),
//             ),
//             borderRadius: BorderRadius.circular(15),
//           ),
//         ),
//         child: Row(
//           children: [
//             Padding(
//               padding: const EdgeInsets.only(left: 22, right: 25),
//               child: Icon(icon,
//                   color: selectedContainer == index
//                       ? Color.fromARGB(
//                           126, 17, 17, 17) // Set red color if selected
//                       : Color.fromARGB(126, 17, 17, 17)),
//             ),
//             Text(
//               text,
//               style: TextStyle(
//                   fontWeight: FontWeight.w400,
//                   fontSize: 18,
//                   color: selectedContainer == index
//                       ? Color(0xFF5F5F5F) // Set red color if selected
//                       : Color(0xFF5F5F5F)),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   SizedBox get sbox20 => const SizedBox(height: 20);
// }
