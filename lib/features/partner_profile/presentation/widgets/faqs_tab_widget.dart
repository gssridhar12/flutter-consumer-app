// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/become_partner/faq_tile.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_partner_profile_image_widget.dart';

class FaqsTabWidget extends StatefulWidget {
  final List<Faq> faq;

  FaqsTabWidget({super.key, required this.faq});

  @override
  State<FaqsTabWidget> createState() => _FaqsTabWidgetState();
}

class _FaqsTabWidgetState extends State<FaqsTabWidget> {
  final List<Map<String, String>> artists = [
    {
      "name": "Priya Sharma",
      "service": "Graphic Designer",
      "imageUrl": "https://c4.wallpaperflare.com/wallpaper/310/567/799/irina-popova-women-blue-eyes-hd-wallpaper-preview.jpg"
    },
    {
      "name": "Nandani ",
      "service": "Photographer",
      "imageUrl": "https://d38b044pevnwc9.cloudfront.net/cutout-nuxt/enhancer/3.jpg"
    },
    {
      "name": "Suman Singh",
      "service": "Web Developer",
      "imageUrl": "https://us.123rf.com/450wm/stefanolunardi/stefanolunardi1210/stefanolunardi121000035/15553596-young-woman-enjoying-a-rainy-and-windy-day-on-the-beach.jpg"
    },
    {
      "name": "Mushkaan ",
      "service": "Content Writer",
      "imageUrl": "https://wallpaper-mania.com/wp-content/uploads/2018/09/High_resolution_wallpaper_background_ID_77701449882.jpg"
    },
    {
      "name": "Punam Pathak",
      "service": "SEO Specialist",
      "imageUrl": "https://wallpapercave.com/wp/wp6806675.jpg"
    }
  ];

  int? _value = 0;
  List<String> choiceChip = ['Specific', 'Generic', 'Travel', 'See all'];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const HeadingTextWidget(
                  text: 'FAQs',
                  trailingButton: false,
                ),
                Row(
                  children: [
                    Wrap(
                      spacing: 5.0,
                      children: List<Widget>.generate(
                        choiceChip.length,
                        (int index) {
                          return ChoiceChip(
                            padding: const EdgeInsets.only(right: 10),
                            selectedColor: Colors.transparent,
                            backgroundColor: Colors.transparent,
                            label: Text(
                              choiceChip[index],
                              style: TextStyle(
                                decoration: _value == index
                                    ? TextDecoration.underline
                                    : null,
                                color: _value == index ? colorred : colorgrey,
                              ),
                            ),
                            selected: _value == index,
                            onSelected: (bool selected) {
                              if (selected) {
                                setState(() {
                                  _value = index; // Set the selected index
                                });
                              }
                            },
                          );
                        },
                      ).toList(),
                    ),
                  ],
                ),
                ClipRect(
                  child: Container(
                    padding: const EdgeInsets.all(16.0),
                    color: Colors.white,
                    child: _buildContent(_value),
                  ),
                ),
                const Divider(color: colorred, thickness: 1),
                const SizedBox(height: 20),
                const HeadingTextWidget(
                  text: 'People also viewed',
                  trailingButton: false,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: width * 0.5,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: artists.length,
                    itemBuilder: (BuildContext context, int index) {
                      final imageUrl = artists[index]["imageUrl"]!;
                      return Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Container(
                          width: width * 0.35,
                          height: width * 0.3,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: colorgrey,
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              CustomPartnerProfileImageWidget(
                                image: imageUrl,
                                color: colorwhite,
                              ),
                              const SizedBox(height: 5),
                              Text(
                                artists[index]["name"]!,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                artists[index]["service"]!,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: colorblack.withOpacity(0.7),
                                ),
                              ),
                              const SizedBox(height: 5),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildContent(int? index) {
    switch (index) {
      case 0:
        return _buildFaqList(widget.faq);
      case 1:
        // Apply filtering for case 1
        List<Faq> filteredFaqs = widget.faq.where((faq) {
          return faq.assignedTo!.contains("PROFILE");
        }).toList();
        return _buildFaqList(filteredFaqs);
      case 2:
        return _buildFaqList(widget.faq);
      case 3:
        return _buildFaqList(widget.faq);
      default:
        return Text("Please select a category.");
    }
  }

  Widget _buildFaqList(List<Faq> faqs) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: faqs.length,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          children: [
            QAItem(
              title: Text(
                (faqs[index].question ?? 'No question available'),
              ),
              children: [
                Text(
                  (faqs[index].answer ?? 'No answer available'),
                ),
              ],
            ),
            const Divider(),
          ],
        );
      },
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_consumer_app/core/colors/colors.dart';
// import 'package:flutter_consumer_app/core/constant/constant.dart';
// import 'package:flutter_consumer_app/features/home_section/presentation/widgets/become_partner/faq_tile.dart';
// import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
// import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
// import 'package:flutter_consumer_app/shared/widgets/custom_partner_profile_image_widget.dart';

// class FaqsTabWidget extends StatelessWidget {
//   const FaqsTabWidget({super.key, required this.faq});
//   final List<Faq> faq;

//   @override
//   Widget build(BuildContext context) {
//     final width = MediaQuery.of(context).size.width;

//     return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
//       SliverToBoxAdapter(
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 20.0),
//           child: Column(
//             children: [
//               sbox20,
//               const HeadingTextWidget(
//                 text: 'FAQs',
//                 trailingButton: false,
//               ),
//               ListView.builder(
//                 physics: const NeverScrollableScrollPhysics(),
//                 shrinkWrap: true,
//                 itemCount: faq.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Column(
//                     children: [
//                       QAItem(title: Text(faq[index].question ?? ""), children: [
//                         Text(
//                           faq[index].answer ?? "",
//                         )
//                       ]),
//                       const Divider(),
//                     ],
//                   );
//                 },
//               ),

//               // const QAItem(
//               //     title: Text('Is there a limit to how much I can earn ?'),
//               //     children: [Text('What types of services can I offer')]),
//               // const Divider(),
//               // const QAItem(
//               //     title: Text(
//               //         'How much time should I expect to invest in offering my services ?'),
//               //     children: [Text('What types of services can I offer')]),
//               // const Divider(),
//               // const QAItem(
//               //     title: Text(
//               //         "What's the best way to determine the pricing for my services ?"),
//               //     children: [Text('What types of services can I offer')]),
//               // const Divider(),
//               // const QAItem(
//               //     title: Text(
//               //         'What payment methods are available for receiving earnings ? '),
//               //     children: [Text('What types of services can I offer')]),
//               const Divider(
//                 color: colorred,
//                 thickness: 1,
//               ),
//               sbox20,
//               const HeadingTextWidget(
//                 text: 'People also viewed',
//                 trailingButton: false,
//               ),
//               sbox20,
//               SizedBox(
//                 height: width * 0.5,
//                 child: ListView.builder(
//                   physics: const NeverScrollableScrollPhysics(),
//                   scrollDirection: Axis.horizontal,
//                   shrinkWrap: true,
//                   itemCount: 5,
//                   itemBuilder: (BuildContext context, int index) {
//                     return Padding(
//                       padding: const EdgeInsets.only(right: 10.0),
//                       child: Container(
//                         width: width * 0.35,
//                         height: width * 0.3,
//                         decoration: BoxDecoration(
//                             borderRadius: BorderRadius.circular(10),
//                             color: colorgrey),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.end,
//                           children: [
//                             const CustomPartnerProfileImageWidget(
//                                 image:
//                                     'https://megmoexplore.s3.ap-south-1.amazonaws.com/profile/images/ccb8e6a3-c8a9-40aa-9c82-755243e8ff0e.jpeg',
//                                 color: colorwhite),
//                             sbox5,
//                             const Text(
//                               'Artist name',
//                               style: TextStyle(
//                                   fontSize: 18, fontWeight: FontWeight.w500),
//                             ),
//                             sbox5,
//                             Text(
//                               'Service Provided',
//                               style: TextStyle(
//                                   fontSize: 16,
//                                   fontWeight: FontWeight.w300,
//                                   color: colorblack.withOpacity(0.7)),
//                             ),
//                             sbox5,
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ]);
//   }
// }
