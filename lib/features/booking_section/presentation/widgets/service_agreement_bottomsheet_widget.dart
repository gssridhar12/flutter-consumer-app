import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/bottom_sheet_title_widget.dart';
//import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class ServiceAgreementBottomSheetWidget extends StatefulWidget {
  const ServiceAgreementBottomSheetWidget(
      {super.key, required this.Agreementurl});
  final String Agreementurl;

  @override
  State<ServiceAgreementBottomSheetWidget> createState() =>
      _ServiceAgreementBottomSheetWidgetState();
}

class _ServiceAgreementBottomSheetWidgetState
    extends State<ServiceAgreementBottomSheetWidget> {
  bool isAgreed = false;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.85,
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding),
          child: Column(
            children: [
              sbox20,
              const BottomSheetIconandTitleWidget(
                  title: 'Agreement - Solo Acoutist Set',
                  icon: Icons.handshake_outlined),
              //  Expanded(
              //    child: SfPdfViewer.network(
              //      'https://www.antennahouse.com/hubfs/xsl-fo-sample/pdf/basic-link-1.pdf',
              //    ),
              //  ),
            ],
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          left: 0,
          child: Container(
            width: width,
            height: height * 0.21,
            decoration: const BoxDecoration(color: colorwhite),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width * 0.7,
                        child: const Text(
                          'I have throughly read the agreement before giving my consent',
                          style: TextStyle(overflow: TextOverflow.clip),
                        ),
                      ),
                      Switch(
                        // This bool value toggles the switch.
                        value: isAgreed,
                        // overlayColor: MaterialStatePropertyAll<Color> MaterialStatePropertyAll(color),
                        // trackColor: widget.trackColor,
                        thumbColor:
                            const WidgetStatePropertyAll<Color>(colorwhite),
                        onChanged: (bool value) {
                          // This is called when the user toggles the switch.
                          setState(
                            () {
                              isAgreed = value;
                            },
                          );
                        },
                      ),
                    ],
                  ),
                  ButtonWidget(
                    text: 'Save and Add Date & Time',
                    width: width,
                    onPressed: () {
                      isAgreed != false
                          ? Navigator.pop(context, isAgreed)
                          : null;
                    },
                  ),
                  ButtonWidget(
                    text: 'I still have questions',
                    width: width,
                    color: colorgrey,
                    buttonColor: colorblack,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
