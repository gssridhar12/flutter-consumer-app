// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/About_widget/Custom_card.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/About_widget/Story_gig.dart';

class Gigs_seeall_page extends StatelessWidget {
  const Gigs_seeall_page({super.key, required this.megmoGig, required this.profile});
  final List<MegmoGig> megmoGig;

  final ProfileDetails profile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios),
                ),
              ),
              SizedBox(
                width: 350,
                child:  HeadingTextWidget(
                  text:
                   '${profile.profileName}\'s Woofurs Gigs',
                  trailingButton: false,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "This is some of the gigs ${profile.profileName} has done through Woofurs to give you a better understanding of her experience",
              style: TextStyle(fontSize: 16, height: 1.2),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // Two cards in a row
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 10.0,
                childAspectRatio: 0.60, // Adjust the card height if needed
              ),
              itemCount: megmoGig.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => 
                       Storty_list (megmoGig: megmoGig,profile:profile,)
                      ),
                    );
                  },
                  child: CustomCard(
                    imagePath:  megmoGig[index].gigCover??"", 
                    title: megmoGig[index].media![index].description??"",
                    subtitle: 'Aug 2021',
                    staricon: Icons.star,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
