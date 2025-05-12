// import 'package:flutter/material.dart';
// import 'package:flutter_consumer_app/core/colors/colors.dart';
// import 'package:flutter_consumer_app/core/constant/constant.dart';
// import 'package:flutter_consumer_app/features/home_section/src/presentation/pages/become_partner/FormBecomeButton.dart';
// import 'package:flutter_consumer_app/features/home_section/src/presentation/widgets/AppbarWedget.dart';


// class BecomeApartnerButtonPage extends StatefulWidget {
//   const BecomeApartnerButtonPage({Key? key}) : super(key: key);

//   @override
//   State<BecomeApartnerButtonPage> createState() => _RatingHomePageState();
// }

// class _RatingHomePageState extends State<BecomeApartnerButtonPage> {
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: const PreferredSize(
//           preferredSize: Size.fromHeight(70),
//           child: AppBarWidgetPrimary(
//             text: '',
//           ),
//         ),
//         body: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           physics: const BouncingScrollPhysics(),
//           child: Column(
//             children: [
//               sbox,
//               const Padding(
//                 padding: EdgeInsets.only(right: 20, left: 25),
//                 child: Text.rich(
//                   TextSpan(
//                     children: [
//                       TextSpan(
//                         text: 'Ready to ',
//                         style: TextStyle(
//                           color: colorblack,
//                           fontSize: 32,
//                           fontWeight: FontWeight.w500,
//                           height: 1.04,
//                           letterSpacing: -0.32,
//                         ),
//                       ),
//                       TextSpan(
//                         text: 'start earning',
//                         style: TextStyle(
//                           color: Color(0xFFE22727),
//                           fontSize: 32,
//                           fontWeight: FontWeight.w500,
//                           height: 1.04,
//                           letterSpacing: -0.32,
//                         ),
//                       ),
//                       TextSpan(
//                         text: ' through Woofurs?',
//                         style: TextStyle(
//                           color: colorblack,
//                           fontSize: 32,
//                           fontWeight: FontWeight.w500,
//                           height: 1.04,
//                           letterSpacing: -0.32,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               sbox20,
//               sbox,
//               const Padding(
//                 padding: EdgeInsets.only(left: 0, right: 90),
//                 child: Text(
//                   "Here's the step-by-step guide:",
//                   style: TextStyle(
//                     color: Colors.black87,
//                     fontSize: 20,
//                     fontWeight: FontWeight.w500,
//                     height: 0.12,
//                     letterSpacing: -0.20,
//                   ),
//                 ),
//               ),
//               sbox20,
//               sbox,
//               // Existing code...

//               // Existing code...
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     FractionalTranslation(
//                       translation: const Offset(
//                           -0.2, 0.1), // Adjust the offset as needed
//                       child: Transform(
//                         alignment: Alignment.center,
//                         transform:
//                             Matrix4.rotationX(0.1) * Matrix4.rotationY(-0.10),
//                         child: Padding(
//                           padding: const EdgeInsets.only(right: 0, left: 3),
//                           child: Container(
//                             child: const SizedBox(
//                               width: 136.62,
//                               height: 123.86,
//                               child: Text(
//                                 '01',
//                                 style: TextStyle(
//                                   color: Color(0x33E22727),
//                                   fontSize: 114.92,
//                                   fontWeight: FontWeight.w500,
//                                   height:
//                                       0.0, // Set a non-zero value for height
//                                   letterSpacing: -1.15,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(left: 0, right: 15),
//                           child: Icon(Icons.business_center_outlined, size: 30),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 0, right: 200),
//                           child: SizedBox(
//                             width: 192,
//                             child: Opacity(
//                               opacity: 0.80,
//                               child: Text(
//                                 'Wait for 24 to 48 working days for response.',
//                                 style: TextStyle(
//                                   color: Colors.black87,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                   height: 1,
//                                   letterSpacing: -0.9,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),

//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     FractionalTranslation(
//                       translation: const Offset(
//                           -0.2, 0.1), // Adjust the offset as needed
//                       child: Transform(
//                         alignment: Alignment.center,
//                         transform:
//                             Matrix4.rotationX(0.1) * Matrix4.rotationY(-0.10),
//                         child: Padding(
//                           padding: const EdgeInsets.only(right: 0, left: 3),
//                           child: Container(
//                             child: const SizedBox(
//                               width: 136.62,
//                               height: 123.86,
//                               child: Text(
//                                 '02',
//                                 style: TextStyle(
//                                   color: Color(0x33E22727),
//                                   fontSize: 114.92,
//                                   fontWeight: FontWeight.w500,
//                                   height:
//                                       0.0, // Set a non-zero value for height
//                                   letterSpacing: -1.15,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(left: 0, right: 15),
//                           child: Icon(Icons.business_center_outlined, size: 30),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 0, right: 200),
//                           child: SizedBox(
//                             width: 192,
//                             child: Opacity(
//                               opacity: 0.80,
//                               child: Text(
//                                 'Wait for 24 to 48 working days for response.',
//                                 style: TextStyle(
//                                   color: Colors.black87,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                   height: 1,
//                                   letterSpacing: -0.9,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//               SingleChildScrollView(
//                 scrollDirection: Axis.horizontal,
//                 child: Row(
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     FractionalTranslation(
//                       translation: const Offset(
//                           -0.2, 0.1), // Adjust the offset as needed
//                       child: Transform(
//                         alignment: Alignment.center,
//                         transform:
//                             Matrix4.rotationX(0.1) * Matrix4.rotationY(-0.10),
//                         child: Padding(
//                           padding: const EdgeInsets.only(right: 0, left: 3),
//                           child: Container(
//                             child: const SizedBox(
//                               width: 136.62,
//                               height: 123.86,
//                               child: Text(
//                                 '03',
//                                 style: TextStyle(
//                                   color: Color(0x33E22727),
//                                   fontSize: 114.92,
//                                   fontWeight: FontWeight.w500,
//                                   height:
//                                       0.0, // Set a non-zero value for height
//                                   letterSpacing: -1.15,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     ),
//                     const Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(left: 0, right: 15),
//                           child: Icon(Icons.business_center_outlined, size: 30),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(left: 0, right: 200),
//                           child: SizedBox(
//                             width: 192,
//                             child: Opacity(
//                               opacity: 0.80,
//                               child: Text(
//                                 'Wait for 24 to 48 working days for response.',
//                                 style: TextStyle(
//                                   color: Colors.black87,
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w500,
//                                   height: 1,
//                                   letterSpacing: -0.9,
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
// // Remaining code...

// // Remaining code...

//               sbox20,
//               sbox20,
//               sbox20,
//               sbox20,
//               sbox20,
//               GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                           builder: (contex) =>
//                               const BecomeApartnerApplyButtonPage()));
//                 },
//                 child: Container(
//                   width: 223.47,
//                   height: 44.53,
//                   alignment: Alignment.center,
//                   padding: const EdgeInsets.symmetric(
//                       horizontal: 16.21, vertical: 9.26),
//                   clipBehavior: Clip.antiAlias,
//                   decoration: ShapeDecoration(
//                     gradient: const LinearGradient(
//                       begin: Alignment(1.00, -0.03),
//                       end: Alignment(-1, 0.03),
//                       colors: [Color(0xFFE22727), Color(0xFFFF8678)],
//                     ),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(13.89),
//                     ),
//                     shadows: const [
//                       BoxShadow(
//                         color: Color(0x1E4A4C44),
//                         blurRadius: 27.79,
//                         offset: Offset(0, 9.26),
//                         spreadRadius: 2.32,
//                       ),
//                       BoxShadow(
//                         color: Color(0x054A4C44),
//                         blurRadius: 8.11,
//                         offset: Offset(0, 0),
//                         spreadRadius: 2.32,
//                       )
//                     ],
//                   ),
//                   child: const Column(
//                     mainAxisSize: MainAxisSize.min,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Text(
//                         'Apply Now',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 17.37,
//                           fontWeight: FontWeight.w600,
//                           height: 1.08,
//                           letterSpacing: -0.39,
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
// }
