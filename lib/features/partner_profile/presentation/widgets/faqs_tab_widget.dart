import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/become_partner/faq_tile.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_partner_profile_image_widget.dart';

class FaqsTabWidget extends StatelessWidget {
  const FaqsTabWidget({super.key, required this.faq});
  final List<Faq> faq;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              sbox20,
              const HeadingTextWidget(
                text: 'FAQs',
                trailingButton: false,
              ),
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: faq.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    children: [
                      QAItem(title: Text(faq[index].question ?? ""), children: [
                        Text(
                          faq[index].answer ?? "",
                        )
                      ]),
                      const Divider(),
                    ],
                  );
                },
              ),

              // const QAItem(
              //     title: Text('Is there a limit to how much I can earn ?'),
              //     children: [Text('What types of services can I offer')]),
              // const Divider(),
              // const QAItem(
              //     title: Text(
              //         'How much time should I expect to invest in offering my services ?'),
              //     children: [Text('What types of services can I offer')]),
              // const Divider(),
              // const QAItem(
              //     title: Text(
              //         "What's the best way to determine the pricing for my services ?"),
              //     children: [Text('What types of services can I offer')]),
              // const Divider(),
              // const QAItem(
              //     title: Text(
              //         'What payment methods are available for receiving earnings ? '),
              //     children: [Text('What types of services can I offer')]),
              const Divider(
                color: colorred,
                thickness: 1,
              ),
              sbox20,
              const HeadingTextWidget(
                text: 'People also viewed',
                trailingButton: false,
              ),
              sbox20,
              SizedBox(
                height: width * 0.5,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: Container(
                        width: width * 0.35,
                        height: width * 0.3,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: colorgrey),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            const CustomPartnerProfileImageWidget(
                                image:
                                    'https://megmoexplore.s3.ap-south-1.amazonaws.com/profile/images/ccb8e6a3-c8a9-40aa-9c82-755243e8ff0e.jpeg',
                                color: colorwhite),
                            sbox5,
                            const Text(
                              'Artist name',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            sbox5,
                            Text(
                              'Service Provided',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w300,
                                  color: colorblack.withOpacity(0.7)),
                            ),
                            sbox5,
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
    ]);
  }
}
