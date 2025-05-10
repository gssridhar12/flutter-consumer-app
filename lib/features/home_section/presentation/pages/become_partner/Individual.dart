// import 'package:flutter/material.dart';
// import 'package:flutter_consumer_app/core/constant/constant.dart';
// import 'package:flutter_consumer_app/features/home_section/src/presentation/pages/become_partner/NextSecPage.dart';
// import 'package:flutter_consumer_app/features/home_section/src/presentation/widgets/AppbarWedget.dart';


// class IndividualButtonPage extends StatefulWidget {
//   const IndividualButtonPage({Key? key}) : super(key: key);

//   @override
//   State<IndividualButtonPage> createState() => _RatingHomePageState();
// }

// class _RatingHomePageState extends State<IndividualButtonPage> {
//   int selectedContainer = -1; // Initialize with an invalid index
//   final TextEditingController businessNameController = TextEditingController();
//   bool isTextFieldFocused = false;

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
//             padding: const EdgeInsets.only(left: 0, right: 50, top: 25),
//             child: Column(
//               children: [
//                 sbox,
//                 const Padding(
//                   padding: EdgeInsets.only(right: 90, left: 5),
//                   child: Text(
//                     "What's your name? ...... ",
//                     style: TextStyle(
//                       color: Color(0xFFE22727),
//                       fontSize: 22,
//                       fontWeight: FontWeight.w500,
//                       height: 1.06,
//                     ),
//                   ),
//                 ),
//                 sbox20,
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       buildContainer(0),
//                     ],
//                   ),
//                 ),
//                 sbox,
//                 sbox20,
//                 sbox,
//                 sbox20,
//                 sbox,
//                 sbox20,
//                 sbox,
//                 sbox20,
//                 sbox20,
//                 Padding(
//                   padding: const EdgeInsets.only(left: 20, right: 0, top: 430),
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(left: 0),
//                         child: GestureDetector(
//                           onTap: () {
//                             Navigator.pop(context);
//                           },
//                           child: Container(
//                             child: Row(
//                               children: [
//                                 Icon(
//                                   Icons.keyboard_arrow_left,
//                                   size: 30.74,
//                                   color: Color(0xFFA1A1A1),
//                                 ),
//                                 Text(
//                                   'Back',
//                                   style: TextStyle(
//                                     color: Color(0xFFA1A1A1),
//                                     fontSize: 17.74,
//                                     fontWeight: FontWeight.w600,
//                                     height: 1.06,
//                                     letterSpacing: -0.40,
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       Spacer(),
//                       GestureDetector(
//                         onTap: () {
//                           if (businessNameController.text.isNotEmpty) {
//                             // Handle Next button tap with text
//                           } else {
//                             // Handle Next button tap without text
//                           }
//                           ;
//                           Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                   builder: (context) => NextSecButtonPage()));
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
//                           decoration: BoxDecoration(
//                             gradient: businessNameController.text.isNotEmpty
//                                 ? const LinearGradient(
//                                     begin: Alignment(1.00, -0.03),
//                                     end: Alignment(-1, 0.03),
//                                     colors: [
//                                       Color(0xFFE22727),
//                                       Color(0xFFFF8678),
//                                     ],
//                                   )
//                                 : null,
//                             color: businessNameController.text.isNotEmpty
//                                 ? null
//                                 : const Color(0xFFF8F8F8),
//                             borderRadius: BorderRadius.circular(10.64),
//                             boxShadow: const [
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
//                               ),
//                             ],
//                           ),
//                           child: Row(
//                             children: [
//                               Text(
//                                 'Next',
//                                 style: TextStyle(
//                                   color: businessNameController.text.isNotEmpty
//                                       ? Colors.white
//                                       : const Color(0xFFA1A1A1),
//                                   fontSize: 17.74,
//                                   fontWeight: FontWeight.w600,
//                                   height: 1.06,
//                                   letterSpacing: -0.40,
//                                 ),
//                               ),
//                               Spacer(),
//                               Icon(
//                                 Icons.keyboard_arrow_right,
//                                 color: businessNameController.text.isNotEmpty
//                                     ? Colors.white
//                                     : const Color(0xFFA1A1A1),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 sbox20,
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget buildContainer(int index) {
//     return GestureDetector(
//       onTap: () {
//         setState(() {
//           selectedContainer = index;
//         });
//       },
//       child: Padding(
//         padding: const EdgeInsets.symmetric(horizontal: 10),
//         child: TextField(
//           controller: businessNameController,
//           decoration: InputDecoration(
//             hintText: '',
//             hintStyle: TextStyle(
//               color: selectedContainer == index
//                   ? const Color(0x7F475A86)
//                   : const Color(0x7F475A86),
//             ),
//             enabledBorder: UnderlineInputBorder(
//               borderSide: BorderSide(
//                 color: selectedContainer == index
//                     ? const Color(0xFFE22727)
//                     : const Color(0x7F475A86),
//               ),
//             ),
//             focusedBorder: UnderlineInputBorder(
//               borderSide: BorderSide(
//                 color: selectedContainer == index
//                     ? const Color(0xFFE22727)
//                     : const Color(0x7F475A86),
//               ),
//             ),
//           ),
//           style: const TextStyle(
//             color: Color(0xFF7A7A7A),
//             fontSize: 18,
//             fontWeight: FontWeight.w400,
//             height: 1.06,
//           ),
//           textCapitalization: TextCapitalization.words,
//           onChanged: (value) {
//             // Handle text changes
//           },
//           onTap: () {
//             setState(() {
//               isTextFieldFocused = true;
//             });
//           },
//           onSubmitted: (value) {
//             setState(() {
//               isTextFieldFocused = false;
//             });
//           },
//         ),
//       ),
//     );
//   }

//   SizedBox get sbox20 => const SizedBox(height: 20);
// }
