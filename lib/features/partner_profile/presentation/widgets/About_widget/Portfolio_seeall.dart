// ignore_for_file: prefer_const_constructors, camel_case_types, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/About_widget/Portfolio_details.dart';

class PortfolioSeeall extends StatelessWidget {
  const PortfolioSeeall({super.key, required this.portfolio, required this.profile});
  final List<Portfolio> portfolio;
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
                width: 300,
                child:  HeadingTextWidget(
                  text:
                   '${profile.profileName}\'s Portfolio',
                  trailingButton: false,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "This is some of ${profile.profileName}’s work so that you can get a better understanding of their experience.",
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
              itemCount: portfolio.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>Portfolio_details(portfolio: portfolio, profile: profile,),
                      ),
                    );
                  },
                  child: Portfolio_card(
                    imagePath:  portfolio[index].projectCover!, 
                    title: portfolio[index].media![0].description!,
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

class Portfolio_card extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;
  final IconData? staricon;

  const Portfolio_card({
    required this.imagePath,
    required this.title,
    required this.subtitle,
    this.staricon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        //Color.fromARGB(255, 117, 112, 112),
        borderRadius: BorderRadius.circular(11),
      ),
      width: (MediaQuery.of(context).size.width / 2) - 25,
      height: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 235,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(11),
                topRight: Radius.circular(11),
              ),
              child: Image.network(
                imagePath,
                fit: BoxFit.cover,
               // width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                   
                    fontSize: 13,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 8.0,top: 5),
                      child: Text(
                        subtitle,
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                    if (staricon != null)
                      Row(
                        children: List.generate(
                            5,
                            (index) => Icon(staricon,
                                size: 12,
                                color: const Color.fromARGB(255, 218, 17, 17))),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

