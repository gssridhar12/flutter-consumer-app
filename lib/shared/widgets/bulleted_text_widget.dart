// import 'package:flutter/material.dart';
// import 'package:flutter_consumer_app/core/constant/constant.dart';

// class BulletedTextWidget extends StatelessWidget {
//   const BulletedTextWidget({
//     super.key,
//     required this.width,
//     this.boldText,
//     required this.text,
//     this.fontSize = 16,
//   });

//   final double width;
//   final String? boldText;
//   final String text;
//   final int fontSize;

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Text(
//           bullet,
//           style: const TextStyle(fontSize: 22),
//         ),
//         Expanded(
//           child: Text.rich(
//             TextSpan(
//               children: [
//                 TextSpan(
//                   text: boldText != null ? '$boldText : ' : '',
//                   style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       fontSize: fontSize.toDouble()),
//                 ),
//                 TextSpan(
//                     text: text,
//                     style: TextStyle(
//                         fontSize: fontSize.toDouble(),
//                         overflow: TextOverflow.clip)),
//               ],
//             ),
//           ),
//         )
//       ],
//     );
//   }
// }


// ignore_for_file: unnecessary_string_interpolations, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart'; 

class BulletedTextWidget extends StatelessWidget {
  const BulletedTextWidget({
    super.key,
    required this.width,
    this.boldText,
    required this.text,
    this.fontSize = 16,
  });

  final double width;
  final String? boldText;
  final String text;
  final int fontSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      transform:
                                  Matrix4.translationValues(-23.0, 0.0, 0.0),
      transformAlignment: Alignment.centerRight,
                              padding: EdgeInsets.zero,
                              margin: EdgeInsets.zero,
                              alignment: Alignment
                                  .centerLeft, 
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
       mainAxisSize: MainAxisSize.min,
        children: [
       
          // Text(
          //   bullet,
          //   style: const TextStyle(fontSize: 22),
          // ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            //  if(boldText != null && boldText!.isNotEmpty) 
      //             Container(
      //               transform:
      //                             Matrix4.translationValues(-23.0, 0.0, 0.0),
      // transformAlignment: Alignment.centerRight,
      //                         padding: EdgeInsets.zero,
      //                         margin: EdgeInsets.zero,
      //                         alignment: Alignment
      //                             .centerLeft,
      //               child: Text(
      //                 '${bullet}       $boldText :',
      //                 textAlign: TextAlign.left,
      //                 style: TextStyle(
      //                     fontWeight: FontWeight.bold,
      //                     fontSize: fontSize.toDouble()),
      //               ),
      //             ),
               
                Container(
                    transform:
                                  Matrix4.translationValues(23.0, 0.0, 0.0),
      transformAlignment: Alignment.centerRight,
                              padding: EdgeInsets.zero,
                              margin: EdgeInsets.zero,
                              alignment: Alignment
                                  .centerLeft,

                  child: Html(
                    data: "${text}",
                    style: {
                     
                      "p" : 
                      Style(
                        fontSize: FontSize(fontSize.toDouble()),
                      ),
                      
                    },
                  ),
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}

