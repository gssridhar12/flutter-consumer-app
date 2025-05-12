import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/become_partner/become_partner_form.dart';

import 'package:flutter_consumer_app/features/home_section/presentation/widgets/become_partner/faq_tile.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/become_partner/happy_customer_left_image_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/become_partner/happy_customer_right_image_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/become_partner_widget.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';

class BecomeAPartner extends StatelessWidget {
  const BecomeAPartner({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    // final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Stack(children: [
              Image.asset('assets/images/becomepartner1.png'),
              Positioned(
                  left: 20,
                  top: 60,
                  child: GestureDetector(
                    onTap: () {
                      AppNavigation.popNavigation(context);
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            color: colorwhite.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(25)),
                        child: const Padding(
                          padding: EdgeInsets.all(5.0),
                          child: Icon(Icons.arrow_back_ios_new_outlined),
                        )),
                  )),
              Positioned(
                left: 40,
                right: 40,
                top: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text('Turn your talent into income',
                        style: TextStyle(
                            color: colorwhite,
                            fontSize: 25,
                            fontWeight: FontWeight.w600)),
                    sbox,
                    SizedBox(
                      width: width * 0.5,
                      child: const Text(
                          'You bring the skill. Well make earning easy',
                          style: TextStyle(
                              color: colorwhite,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                    ),
                    sbox,
                    ButtonWidget(
                        text: 'Become a Partner',
                        width: width * 0.6,
                        navigation: const BecomePartnerFormPage()),
                  ],
                ),
              ),
            ]),
            Stack(
              children: [
                Image.asset('assets/images/becomepartner2.png'),
                Positioned(
                  left: 40,
                  right: 40,
                  top: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      sbox,
                      const Text('A Gig is bought every',
                          style: TextStyle(
                              color: colorwhite,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                      const Text('25 sec',
                          style: TextStyle(
                              color: colorwhite,
                              fontSize: 25,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
                Positioned(
                  left: 40,
                  right: 40,
                  top: 110,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      sbox,
                      const Text('Transactions',
                          style: TextStyle(
                              color: colorwhite,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                      const Text('10 mil+',
                          style: TextStyle(
                              color: colorwhite,
                              fontSize: 25,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
                Positioned(
                  left: 40,
                  right: 40,
                  top: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      sbox,
                      const Text('Price range',
                          style: TextStyle(
                              color: colorwhite,
                              fontSize: 18,
                              fontWeight: FontWeight.w500)),
                      const Text('50 - 10,000',
                          style: TextStyle(
                              color: colorwhite,
                              fontSize: 25,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: 'How does it work',
                    style: TextStyle(
                      color: colorblack,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextSpan(
                    text: ' ?',
                    style: TextStyle(
                      color: Colors.red, // Set your red color here
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('01',
                    style: TextStyle(
                        color: colorred.withOpacity(0.2),
                        fontSize: 160,
                        fontWeight: FontWeight.w600)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.business_center_outlined, size: 18),
                        Padding(
                          padding: EdgeInsets.only(left: 5),
                          child: Text('Create a service package',
                              style: TextStyle(
                                  color: colorblack,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                    sbox,
                    SizedBox(
                      width: width * 0.55,
                      child: Text(
                          'Sign up for free, set up your profile and create packages of the services you want to offer.',
                          style: TextStyle(
                              color: colorblack.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Icon(Icons.business_center_outlined, size: 18),
                          Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text('Find gigs and clients',
                                style: TextStyle(
                                    color: colorblack,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500)),
                          ),
                        ],
                      ),
                      sbox,
                      SizedBox(
                        width: width * 0.48,
                        child: Text(
                            'Showcase your talent, get notified when you get an order and use our platform to discuss details with customers.',
                            style: TextStyle(
                                color: colorblack.withOpacity(0.5),
                                fontSize: 14,
                                fontWeight: FontWeight.w500)),
                      ),
                    ],
                  ),
                ),
                Text('02',
                    style: TextStyle(
                        color: colorred.withOpacity(0.2),
                        fontSize: 160,
                        fontWeight: FontWeight.w600)),
              ],
            ),
            Row(
              children: [
                Text('03',
                    style: TextStyle(
                        color: colorred.withOpacity(0.2),
                        fontSize: 160,
                        fontWeight: FontWeight.w600)),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.attach_money_outlined, size: 18),
                        SizedBox(
                          width: width * 0.5,
                          child: const Text('Convert your talent into income.',
                              style: TextStyle(
                                  overflow: TextOverflow.clip,
                                  color: colorblack,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500)),
                        ),
                      ],
                    ),
                    sbox,
                    SizedBox(
                      width: width * 0.55,
                      child: Text(
                          'Receive prompt and reliable payments. Your earnings are ready for withdrawal as soon as they are processed.',
                          style: TextStyle(
                              color: colorblack.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ],
            ),
            sbox20,
            ButtonWidget(
              text: 'Become a Partner',
              width: width * 0.6,
              borderRadius: (20),
              navigation: const BecomePartnerFormPage(),
            ),
            sbox20,
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: width * 0.6,
                  child: const Text('Join our growing Woofurs',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          overflow: TextOverflow.clip,
                          color: colorblack,
                          fontSize: 22,
                          fontWeight: FontWeight.w500)),
                ),
                SizedBox(
                  width: width * 0.6,
                  child: const Text('Community',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: colorred,
                          fontSize: 22,
                          fontWeight: FontWeight.w500)),
                ),
                sbox20,
                SizedBox(
                  width: width * 0.8,
                  child: Text(
                      'Join our thriving talent community to provide your professional services, connect with clients, and receive payments securely on Megmos trusted platform',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: colorblack.withOpacity(0.7),
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                ),
              ],
            ),
            sbox20,
            Stack(children: [
              SizedBox(
                height: width * 0.6,
                child: ClipRRect(
                    borderRadius:
                        const BorderRadius.all(Radius.elliptical(180, 10)),
                    child: Image.asset(
                      'assets/images/becomepartner4.png',
                      fit: BoxFit.cover,
                    )),
              ),
              Positioned(
                bottom: 10,
                left: 100,
                right: 100,
                child: SizedBox(
                  width: width * 0.3,
                  child: const Text('Hii i am a Masseuser',
                      style: TextStyle(
                          color: colorwhite,
                          fontSize: 22,
                          fontWeight: FontWeight.w500)),
                ),
              ),
            ]),
            sbox20,
            SizedBox(
              width: width * 0.6,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Whats Your',
                      style: TextStyle(
                          color: colorblack,
                          fontSize: 22,
                          fontWeight: FontWeight.w500)),
                  Text(' Skill ?',
                      style: TextStyle(
                          color: colorred,
                          fontSize: 22,
                          fontWeight: FontWeight.w500)),
                ],
              ),
            ),
            sbox20,
            ButtonWidget(
              text: 'Become a Partner',
              width: width * 0.6,
              borderRadius: (20),
              navigation: const BecomePartnerFormPage(),
            ),
            sbox20,
            sbox20,
            const Text('Happy customers',
                style: TextStyle(
                    color: colorblack,
                    fontSize: 22,
                    fontWeight: FontWeight.w500)),
            sbox20,
            HappyCustomerLeftImageWidget(
                width: width,
                image: 'assets/images/becomepartber23(1).png',
                title: '“Found the perfect gym trainer for myself on Woofurs.”',
                subtitle: 'Jacob Colesman, London'),
            HappyCustomerRightImageWidget(
                width: width,
                image: 'assets/images/becomepartber23(2).png',
                title:
                    '“Recently wedded, I found the best makeup artist for myself on Woofurs.”',
                subtitle: 'Celia John, Washington'),
            HappyCustomerLeftImageWidget(
                width: width,
                image: 'assets/images/becomepartber23(3).png',
                title:
                    '“Singing was always my passion, but school left no time. Found a great at-home vocal coach on Woofurs with flexible hours.”',
                subtitle: 'Riya Shetty, India'),
            HappyCustomerRightImageWidget(
                width: width,
                image: 'assets/images/becomepartber23(4).png',
                title:
                    '“I just adopted the cutest poodle, but work makes it difficult to train him. Easily found a professional dog trainer on Woofurs.”',
                subtitle: 'John Doe, Perth'),
            sbox20,
            sbox20,
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: width * 0.6,
                  child: const Text('Still have questions?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          overflow: TextOverflow.clip,
                          color: colorblack,
                          fontSize: 22,
                          fontWeight: FontWeight.w500)),
                ),
                const SizedBox(height: 5),
                SizedBox(
                  width: width * 0.6,
                  child: const Text('We got you!',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: colorred,
                          fontSize: 22,
                          fontWeight: FontWeight.w500)),
                ),
              ],
            ),
            sbox20,
            sbox,
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  QAItem(
                      title: Text('What types of services can I offer?'),
                      children: [
                        Text(
                          'What types of services can I offer',
                        )
                      ]),
                  QAItem(
                      title: Text('Is there a limit to how much I can earn ?'),
                      children: [Text('What types of services can I offer')]),
                  QAItem(
                      title: Text(
                          'How much time should I expect to invest in offering my services ?'),
                      children: [Text('What types of services can I offer')]),
                  QAItem(
                      title: Text(
                          "What's the best way to determine the pricing for my services ?"),
                      children: [Text('What types of services can I offer')]),
                  QAItem(
                      title: Text(
                          'What payment methods are available for receiving earnings ? '),
                      children: [Text('What types of services can I offer')]),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(padding),
              child: BecomePartnerWidget(width: width),
            ),
          ],
        ),
      ),
    );
  }
}
