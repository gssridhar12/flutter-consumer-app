
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';

void showTermsAndConditionsDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor:
            Colors.transparent, // Make the dialog fully transparent
        elevation: 0, // Remove the shadow
        content: Container(
          width: 331,
          height: 423,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 300,
                height: 48,
                decoration: const BoxDecoration(
                  color: Color(
                      0x19E22727), // Assuming this is the color with transparency
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                ),
                child: GestureDetector(
                  // onTap: _showTermsAndConditionsDialog,//open this popup screen
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                        const Text(
                          'Terms of contact',
                          style: TextStyle(
                            color: Color(0xFFE22727),
                            fontSize: 18,
                            fontFamily: 'Josefin Sans',
                            fontWeight: FontWeight.w500,
                            height: 1.20,
                          ),
                        ),
                        const SizedBox(width: 80), // Added SizedBox for spacing
                        GestureDetector(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Image.asset('assets/images/close.png')),
                      ],
                    ),
                  ),
                ),
              ),
              sbox,
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 286,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text:
                                    'To ensure your security and uphold our user agreement, we strongly recommend that you exclusively contact and process payments through Woofurs. Our Payment Protection guarantees a secure transaction experience.\n\nPaying or contacting professionals outside of Woofurs is in direct violation of our user agreement. We will not be held accountable for services availed outside of the Woofurs platform.\n\nTo proceed, please acknowledge that you have read and understand Megmos policies by ticking the box below:\n\n',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.7),
                                  fontSize: 14,
                                  fontFamily: 'Josefin Sans',
                                  fontWeight: FontWeight.w400,
                                  height: 1.12,
                                ),
                              ),
                              WidgetSpan(
                                child: GestureDetector(
                                  // onTap: () {
                                  //   // Navigator.of(context).pop();
                                  //   _toggleCheckmark;
                                  // },

                                  onTap: () {
                                    Navigator.of(context).pop();
                                    // _toggleCheckmark();
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 10.0),
                                    width: 19,
                                    height: 19,
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.red),
                                    ),
                                    // child: showCheckmark
                                    //     ? Icon(
                                    //         Icons.check,
                                    //         color: Colors.green,
                                    //       )
                                    //     : null,
                                  ),
                                ),
                              ),
                              const TextSpan(
                                text: 'I understand Megmos policies.\n',
                                style: TextStyle(
                                  color: Color(0xFFFF0000),
                                  fontSize: 14,
                                  fontFamily: 'Josefin Sans',
                                  fontWeight: FontWeight.w400,
                                  height: 1.12,
                                ),
                              ),
                              TextSpan(
                                text: '\n',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.7),
                                  fontSize: 14,
                                  fontFamily: 'Josefin Sans',
                                  fontWeight: FontWeight.w400,
                                  height: 1.12,
                                ),
                              ),
                              TextSpan(
                                text:
                                    'Thank you for choosing Woofurs. Your safety is our priority.',
                                style: TextStyle(
                                  color: Colors.black.withOpacity(0.7),
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                  fontFamily: 'Josefin Sans',
                                  fontWeight: FontWeight.w400,
                                  height: 1.12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),

        // actions: <Widget>[
        //   TextButton(
        //     onPressed: () {
        //       Navigator.of(context).pop();
        //     },
        //     child: Text("Agree"),
        //   ),
        // ],
      );
    },
  );
}
