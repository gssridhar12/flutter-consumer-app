// import 'package:flutter/material.dart';
// import 'package:flutter_consumer_app/core/constant/constant.dart';
// import 'package:flutter_consumer_app/features/home_section/src/presentation/pages/become_partner/Individual.dart';
// import 'package:flutter_consumer_app/features/home_section/src/presentation/pages/become_partner/NextButton.dart';
// import 'package:flutter_consumer_app/features/home_section/src/presentation/widgets/AppbarWedget.dart';

// class BecomeApartnerApplyButtonPage extends StatefulWidget {
//   const BecomeApartnerApplyButtonPage({Key? key}) : super(key: key);

//   @override
//   State<BecomeApartnerApplyButtonPage> createState() => _RatingHomePageState();
// }

// class _RatingHomePageState extends State<BecomeApartnerApplyButtonPage> {
//   int selectedContainer = -1; // Initialize with an invalid index
//   final TextEditingController businessNameController = TextEditingController();

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
//         body: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           physics: const BouncingScrollPhysics(),
//           child: Padding(
//             padding: const EdgeInsets.only(left: 20, right: 45, top: 40),
//             child: Column(
//               children: [
//                 const Padding(
//                     padding: EdgeInsets.only(right: 50, left: 5),
//                     child: SizedBox(
//                       width: 343,
//                       child: Text(
//                         'Are you a business or an individual or a group of individuals?',
//                         style: TextStyle(
//                           color: Color(0xFFE22727),
//                           fontSize: 22,
//                           fontWeight: FontWeight.w500,
//                           height: 1.06,
//                         ),
//                       ),
//                     )),
//                 sbox20,
//                 sbox,
//                 Padding(
//                   padding: const EdgeInsets.only(left: 8, right: 0),
//                   child: buildContainerWithIcon(0, Icons.business, 'Business'),
//                 ),
//                 sbox20,
//                 Padding(
//                   padding: const EdgeInsets.only(left: 8, right: 0),
//                   child: buildContainerWithIcon(1, Icons.person, 'Individual'),
//                 ),
//                 sbox20,
//                 Padding(
//                   padding: const EdgeInsets.only(left: 8, right: 0),
//                   child: buildContainerWithIcon(
//                       3, Icons.group_off_rounded, 'Group of Individual'),
//                 ),
//                 sbox20,
//                 sbox20,
//                 sbox20,
//                 sbox20,
//                 sbox20,
//                 sbox20,
//                 sbox20,
//                 const SizedBox(
//                   height: 80,
//                 ),
//                 const SizedBox(
//                   height: 80,
//                 ),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 0),
//                       child: GestureDetector(
//                         onTap: () {
//                           Navigator.pop(context);
//                         },
//                         child: Container(
//                           child: const Row(
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
//                     Container(
//                       alignment: Alignment.center,
//                       width: 162,
//                       height: 47,
//                       padding: const EdgeInsets.only(
//                         top: 12,
//                         left: 54,
//                         right: 38.76,
//                         bottom: 12.76,
//                       ),
//                       clipBehavior: Clip.antiAlias,
//                       decoration: ShapeDecoration(
//                         gradient: selectedContainer == -1
//                             ? null
//                             : const LinearGradient(
//                                 begin: Alignment(1.00, -0.03),
//                                 end: Alignment(-1, 0.03),
//                                 colors: [Color(0xFFE22727), Color(0xFFFF8678)],
//                               ),
//                         color: selectedContainer == -1
//                             ? const Color(0xFFF8F8F8)
//                             : null,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(10.64),
//                         ),
//                         shadows: const [
//                           BoxShadow(
//                             color: Color(0x1E4A4C44),
//                             blurRadius: 21.28,
//                             offset: Offset(0, 7.09),
//                             spreadRadius: 1.77,
//                           ),
//                           BoxShadow(
//                             color: Color(0x054A4C44),
//                             blurRadius: 6.21,
//                             offset: Offset(0, 0),
//                             spreadRadius: 1.77,
//                           )
//                         ],
//                       ),
//                       child: GestureDetector(
//                         onTap: () {
//                           if (selectedContainer == 0) {
//                             // Navigate to BusinessPage
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => NextButtonPage(),
//                               ),
//                             );
//                           } else if (selectedContainer == 1) {
//                             // Navigate to IndividualPage
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => IndividualButtonPage(),
//                               ),
//                             );
//                           } else if (selectedContainer == 3) {
//                             // Navigate to IndividualPage
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => IndividualButtonPage(),
//                               ),
//                             );
//                           }
//                         },
//                         child: Row(
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(
//                               'Next',
//                               style: TextStyle(
//                                 color: selectedContainer == -1
//                                     ? Color(0xFFA1A1A1)
//                                     : Colors.white,
//                                 fontSize: 17.74,
//                                 fontWeight: FontWeight.w600,
//                                 height: 1.06,
//                                 letterSpacing: -0.50,
//                               ),
//                             ),
//                             // const Spacer(),
//                             Padding(
//                               padding: const EdgeInsets.only(left: 0, top: 0),
//                               child: Icon(
//                                 size: 25.74,
//                                 Icons.keyboard_arrow_right,
//                                 color: selectedContainer == -1
//                                     ? Color(0xFFA1A1A1)
//                                     : Colors.white,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     sbox20,
//                   ],
//                 ),
//                 sbox20,
//                 sbox20,
//               ],
//             ),
//           ),
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
//               padding: const EdgeInsets.only(left: 20, right: 15),
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
