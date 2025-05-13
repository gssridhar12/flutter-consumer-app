// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last, unused_field, sized_box_for_whitespace, library_private_types_in_public_api, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/pages/chat_screen_custom.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/AppbarWedget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/container_chip_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/About_widget/Scroll_image.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_partner_profile_image_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/icon_button_widget.dart';
import 'package:intl/intl.dart'; // Import intl package

class Portfolio_details extends StatefulWidget {
  const Portfolio_details({Key? key, required this.portfolio, required this.profile}) : super(key: key);
  final List<Portfolio> portfolio;
  final ProfileDetails profile;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Portfolio_details> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            AppBarWidgetPrimary(
              text: '${widget.profile.profileName} Portfolio',
            ),
            SizedBox(height: 20),
            HeadingTextWidget(
              text: widget.portfolio[0].projectHeadline ?? "",
              trailingButton: false,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Text(
                _formatCompletionDate(widget.portfolio[0].projectCompletionDate.toString()), // Updated line
                style: TextStyle(color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 400,
                child: PageView.builder(
                  itemCount: widget.portfolio.length,
                  physics: BouncingScrollPhysics(),
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemBuilder: (context, index) {
                    final mediaList = widget.portfolio[index].media!;
                    // Extract a list of URLs from the mediaList
                    final imageUrls = mediaList.map((media) => media.mediaType!).toList();
                    
                    // Filter out null descriptions
                    final description = mediaList.map((media) => media.description).whereType<String>().toList();
                    
                    return Padding(
                      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 5.0),
                      child: Scrollimage(
                        imageUrls: imageUrls, // Pass the list of URLs
                        descriptions: description, // Pass the filtered list of descriptions
                      ),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 20.0),
              child: Text(
                "Project Description",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 15.0),
              child: Text(
                "On July 25th, the singer program was held at the Grand Symphony Hall. The event featured an array of talented performers, captivating the audience with a mix of classical and contemporary music. Highlights included an enchanting solo by renowned soprano, Anna Stevens, and a powerful duet by Michael and Emily Grey. The evening also showcased a vibrant choir performance, adding a harmonious blend to the program. The musicians received standing ovations for their brilliant renditions. The atmosphere was electric, filled with the joy of music lovers. The program concluded with a grand finale, leaving attendees mesmerized.",
                style: TextStyle(height: 1.2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 30.0),
              child: Text(
                "Skills",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
           Padding(
             padding: const EdgeInsets.all(8.0),
             child: Wrap(
               spacing: 8.0, // Spacing between chips
               runSpacing: 4.0, // Spacing between rows
               children: widget.profile.skills!.map((skill) {
                 return ContainerChipWidget(
                   text: skill.toString(),
                 );
               }).toList(),
             ),
           ),

            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 30.0),
              child: Text(
                "External Links",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12.0, top: 10.0),
              child: Text(
                widget.portfolio[0].projectUrl!.toString(),
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18, color: Colors.red, decoration: TextDecoration.underline, decorationColor: Colors.red),
              ),
            ),
            sbox20,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(21),
                ),
                color: Colors.white,
                child: Column(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                          child: CustomPartnerProfileImageWidget(
                            height: 60,
                            width: 60,
                            color: Colors.yellow.shade700,
                            image: widget.profile.profileImage.toString(),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5),
                              Text(
                                widget.profile.profileName.toString(),
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(height: 5),
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.red, size: 16),
                                  SizedBox(width: 5),
                                  Text(
                                    "4.3",
                                    style: TextStyle(fontSize: 14, color: Colors.red),
                                  ),
                                  SizedBox(width: 5),
                                  Text(
                                    "(38)",
                                    style: TextStyle(fontSize: 14, color: Colors.black54),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: SizedBox(
                            width: 85,
                            child: IconButtonWidget(
                              buttonName: 'Chat',
                              onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatScreenCustom(partnerUuid:"widget.profile.profileUuid")));
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Contact Info",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 6.0),
                              child: Text(
                                "neha.roy@gmail.com",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400),
                              ),
                            ),
                            Text(
                              "+91 9988776655",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
            sbox20,
            sbox20
          ],
        ),
      ),
    );
  }

  String _formatCompletionDate(String date) {
    // Check if the date string is not empty
    if (date.isNotEmpty) {
      // Parse the date string into a DateTime object
      final parsedDate = DateTime.tryParse(date);
      if (parsedDate != null) {
        // Format the date to "MMM yyyy" (e.g., "Sep 2021")
        return DateFormat('MMM yyyy').format(parsedDate);
      }
    }
    return date; // Return original date if parsing fails or is empty
  }
}
