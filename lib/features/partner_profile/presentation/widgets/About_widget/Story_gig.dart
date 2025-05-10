// ignore_for_file: prefer_const_constructors, camel_case_types, must_be_immutable, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/AppbarWedget.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/About_widget/megmo_gigs_reel.dart';

class Storty_list extends StatefulWidget {
Storty_list({
    Key? key, required this.megmoGig, required this.profile,
  }) : super(key: key);
  
  final List<MegmoGig> megmoGig;
  final ProfileDetails profile;
//  List<String> imageurl = [
//     "https://cdn.pixabay.com/photo/2023/03/12/18/26/girl-7847557_640.jpg",
//     "https://media.istockphoto.com/id/1188276282/photo/beautiful-woman-dancing-in-the-forest.jpg?s=612x612&w=0&k=20&c=Zp1LHLhRi3lP3EPj8yWPFNC2SEPqebPWziPIuIR3PHY=",
//     "https://media.istockphoto.com/id/1188276267/photo/beautiful-woman-dancing-in-the-forest.jpg?s=612x612&w=0&k=20&c=x7uihkDxt1i7jBUVKbj856rwKBxLVAzz0OW6fQBpSjA="
//   ];
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<Storty_list> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            children: [
               AppBarWidgetPrimary(
            text: '${widget.profile.profileName} Megmo Gigs',
          ),
              Expanded(
                child: ListView.builder(
                  itemCount: widget.megmoGig.length,
            
                  itemBuilder: (context, index) {
                    return SizedBox(
                      height: 800,
                      child: MegmoGigsReel1(megmoGig: widget.megmoGig,profile: widget.profile,)); 
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
