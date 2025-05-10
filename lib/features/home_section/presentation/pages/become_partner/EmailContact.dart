// import 'package:flutter/material.dart';
// import 'package:flutter_consumer_app/core/colors/colors.dart';
// import 'package:flutter_consumer_app/features/home_section/src/presentation/pages/become_partner/BecomSuccess.dart';
// import 'package:flutter_consumer_app/features/home_section/src/presentation/widgets/AppbarWedget.dart';


// class EmailContactButtonPage extends StatefulWidget {
//   const EmailContactButtonPage({Key? key}) : super(key: key);

//   @override
//   State<EmailContactButtonPage> createState() => _RatingHomePageState();
// }

// class _RatingHomePageState extends State<EmailContactButtonPage> {
//   int selectedContainer = -1; // Initialize with an invalid index
//   final TextEditingController businessNameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController contactController = TextEditingController();
//   bool isTextFieldFocused = false;
//   bool hasText = false; // Added variable to track text in TextField

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
//         body: Form(
//           child: Column(
//             children: [
//               Expanded(
//                 child: SingleChildScrollView(
//                   scrollDirection: Axis.vertical,
//                   physics: const BouncingScrollPhysics(),
//                   child: Padding(
//                     padding:
//                         const EdgeInsets.only(left: 20, right: 20, top: 25),
//                     child: Column(
//                       children: [
//                         const Padding(
//                           padding: EdgeInsets.only(right: 60, left: 0),
//                           child: Text(
//                             'Help us get in touch with you',
//                             style: TextStyle(
//                               color: Color(0xFFE22727),
//                               fontSize: 22,
//                               fontWeight: FontWeight.w500,
//                               height: 1.06,
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 5, right: 20),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               sbox20,
//                               sbox20,
//                               const Row(
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(left: 10),
//                                     child: Icon(
//                                       Icons.email,
//                                       color: Color(0xFF808080),
//                                     ),
//                                   ),
//                                   SizedBox(width: 8), // Add padding
//                                   Text(
//                                     'Email ID',
//                                     style: TextStyle(
//                                       color: Color(0xFF808080),
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w400,
//                                       height: 0,
//                                     ),
//                                   )
//                                 ],
//                               ),
//                               buildContainer(0),
//                               sbox20,
//                               sbox20,
//                               const Row(
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.only(left: 10),
//                                     child: Icon(
//                                       Icons.phone,
//                                       color: Color(0xFF808080),
//                                     ),
//                                   ),
//                                   SizedBox(width: 8), // Add padding
//                                   Text(
//                                     'Contact',
//                                     style: TextStyle(
//                                       color: Color(0xFF808080),
//                                       fontSize: 12,
//                                       fontWeight: FontWeight.w400,
//                                       height: 0,
//                                     ),
//                                   )
//                                 ],
//                               ),
//                               buildContainer(1),
//                             ],
//                           ),
//                         ),
//                         sbox20,
//                         // Add Email and Contact input fields
//                       ],
//                     ),
//                   ),
//                 ),
//               ),

//               // Static red color container at the bottom
//               Container(
//                 width: 395,
//                 height: 104,
//                 decoration: const BoxDecoration(
//                   color: Color(0xFFF8F8F8),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Color(0x0C220505),
//                       blurRadius: 12,
//                       offset: Offset(2, 2),
//                       spreadRadius: 5,
//                     ),
//                   ],
//                 ),
//                 child: Center(
//                   child: Row(
//                     children: [
//                       Padding(
//                         padding: EdgeInsets.only(left: 5),
//                         child: GestureDetector(
//                           onTap: () {
//                             Navigator.pop(context);
//                           },
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
//                       const Spacer(),
//                       Padding(
//                         padding: const EdgeInsets.only(right: 20),
//                         child: GestureDetector(
//                           onTap: () {
//                             Navigator.of(context).push(MaterialPageRoute(
//                                 builder: (BuildContext context) {
//                               return const BecomeSuccessButtonPage();
//                             }));
//                           },
//                           child: Container(
//                             width: 162,
//                             height: 47,
//                             padding: const EdgeInsets.only(
//                               top: 12,
//                               left: 54,
//                               right: 38.76,
//                               bottom: 12.76,
//                             ),
//                             clipBehavior: Clip.antiAlias,
//                             decoration: ShapeDecoration(
//                               gradient: selectedContainer == -1 && !hasText
//                                   ? null
//                                   : const LinearGradient(
//                                       begin: Alignment(1.00, -0.03),
//                                       end: Alignment(-1, 0.03),
//                                       colors: [
//                                         Color(0xFFE22727),
//                                         Color(0xFFFF8678)
//                                       ],
//                                     ),
//                               color: selectedContainer == -1 && !hasText
//                                   ? const Color(0xFFF8F8F8)
//                                   : null,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(10.64),
//                               ),
//                               shadows: const [
//                                 BoxShadow(
//                                   color: Color(0x1E4A4C44),
//                                   blurRadius: 21.28,
//                                   offset: Offset(0, 7.09),
//                                   spreadRadius: 1.77,
//                                 ),
//                                 BoxShadow(
//                                   color: Color(0x054A4C44),
//                                   blurRadius: 6.21,
//                                   offset: Offset(0, 0),
//                                   spreadRadius: 1.77,
//                                 )
//                               ],
//                             ),
//                             child: Row(
//                               children: [
//                                 Text(
//                                   'Next',
//                                   style: TextStyle(
//                                     color: selectedContainer == -1 && !hasText
//                                         ? const Color(0xFFA1A1A1)
//                                         : Colors.white,
//                                     fontSize: 17.74,
//                                     fontWeight: FontWeight.w600,
//                                     height: 1.16,
//                                     letterSpacing: -0.40,
//                                   ),
//                                 ),
//                                 const Spacer(),
//                                 Icon(
//                                   Icons.keyboard_arrow_right,
//                                   color: selectedContainer == -1 && !hasText
//                                       ? const Color(0xFFA1A1A1)
//                                       : colorwhite,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
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
//           controller: index == 0 ? emailController : contactController,
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
//             color: colorblack,
//             fontSize: 18,
//             fontWeight: FontWeight.w400,
//             height: 1.06,
//           ),
//           textCapitalization: TextCapitalization.words,
//           onChanged: (value) {
//             setState(() {
//               hasText = value.isNotEmpty;
//             });
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
