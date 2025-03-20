import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/bottom_sheet_title_widget.dart';

class ServiceAgreementBottomSheetWidget extends StatefulWidget {
  const ServiceAgreementBottomSheetWidget({super.key});

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
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding),
            child: Column(
              children: [
                sbox20,
                const BottomSheetIconandTitleWidget(
                    title: 'Agreement - Solo Acoutist Set',
                    icon: Icons.handshake_outlined),
                Padding(
                  padding: const EdgeInsets.all(padding),
                  child: Text(
                      'This Agreement (the "Agreement") is entered into as of [Date], between [Client Name] (the "Client") and [Singer Name] (the "Singer") for the provision of a solo acoustic set performance at the specified venue (the "Event"1. Performance Details:Date of Performance: [Date]Duration of Performance: 2 hours (approximately)Venue Address: [Venue Address]Performance Time: [Start Time] to [End Time]2. Performance Fee:The Client agrees to pay the Singer a total performance fee of [Amount], which includes the services outlined below and any agreed-upon additional expenses. A non-refundable deposit of [Deposit Amount] is required upon signing this Agreement to secure the Singers availability for the Event.3. Transport and Accommodation:The Client is responsible for providing suitable transportation for the Singer to and from the Event venue. If the venue is located outside of [City/Region], the Client shall provide reasonable accommodation for the Singer for the night of the performance.4. Equipment:The Singer shall provide all necessary acoustic musical instruments and equipment for the performance, including but not limited to the following:Acoustic guitarMicrophoneAmplification systemCables and accessories5. Sound System:The Client shall ensure that the Event venue is equipped with a suitable sound system that meets the Singers technical requirements. The Client shall also provide a qualified sound technician to operate the sound system during the performance.6. Inclusions:The Solo Acoustic Set Package includes the following:A captivating 2-hour live solo acoustic performance by the Singer.A diverse selection of acoustic renditions of classic hits and contemporary favorites.Personalized song choices based on the Clients preferences.Interactions and engagement with the audience to create an intimate and memorable experience.7. Exclusions:The following items and services are excluded from this Agreement and shall be the sole responsibility of the Client:Travel expenses beyond [City/Region].Accommodation expenses (if applicable).Meals and refreshments for the Singer and accompanying staff.Additional musicians or band members.8. Technical Requirements:The Client agrees to provide access to the Event venue at least [X] hours before the performance start time for soundcheck and setup. The Singer shall have the right to inspect the sound system and equipment to ensure optimal performance quality.9. Event Regulations and Permits:The Client shall be responsible for obtaining any necessary permits, licenses, or approvals required for the Event, including but not limited to music licensing, venue permits, and any local regulations or restrictions.10. Cancellation Policy:In the event of cancellation by the Client, the non-refundable deposit shall be forfeited. If the cancellation occurs within [X] days of the Event date, the Client agrees to pay the Singer the full performance fee as compensation for the reserved date.11. Indemnification:The Client shall indemnify and hold the Singer harmless from any claims, damages, liabilities, or expenses arising from the Clients failure to comply with any applicable laws, regulations, or licenses related to the Event12. Governing Law and JurisdictionThis Agreement shall be governed by and construed in accordance with the laws of [State/Country]. Any disputes arising out of this Agreement shall be subject to the exclusive jurisdiction of the courts in [City/Region]By signing below, the Client and Singer agree to the terms and conditions outlined in this Agreement and confirm their understanding and acceptance of its provisi',
                      style: TextStyle(color: colorblack.withOpacity(0.7))),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 20,
          left: 20,
          child: Container(
            width: width,
            height: height * 0.21,
            decoration: const BoxDecoration(color: colorwhite),
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
                          const MaterialStatePropertyAll<Color>(colorwhite),
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
                    isAgreed != false ? Navigator.pop(context, isAgreed) : null;
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
      ]),
    );
  }
}
