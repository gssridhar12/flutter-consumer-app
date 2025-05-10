import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/AppbarWedget.dart';


class RatingHomePage extends StatefulWidget {
  const RatingHomePage({Key? key}) : super(key: key);

  @override
  State<RatingHomePage> createState() => _RatingHomePageState();
}

class _RatingHomePageState extends State<RatingHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBarWidgetPrimary(
            text: 'My Ratings',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            left: 19,
            right: 19,
            top: 20,
          ),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // HomePageCardWidget(width: width),
                sbox20,
                Container(
                    width: 400,
                    height: 167,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      shadows: const [
                        BoxShadow(
                          color: Color(0x0C220505),
                          blurRadius: 12,
                          offset: Offset(2, 2),
                          spreadRadius: 5,
                        )
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 10),
                          child: Row(
                            children: [
                              Center(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 0, bottom: 12),
                                  child: Container(
                                    width: 42,
                                    height: 42,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      gradient: const LinearGradient(
                                        colors: [
                                          Color.fromARGB(255, 185, 185, 184),
                                          Color.fromARGB(255, 129, 123, 123),
                                        ],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                    ),
                                    child: Center(
                                      child: Container(
                                        width: 35,
                                        height: 35,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          // color: Colors.white,
                                        ),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          child: Image.asset(
                                            'assets/images/actor.png', // Your image asset path
                                            width: 35,
                                            height: 35,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(top: 0),
                                      child: Text(
                                        'Alex John, Model',
                                        style: TextStyle(
                                            color: colorblack, fontSize: 16),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          '29 Mar',
                                          style: TextStyle(
                                            color: colorblack.withOpacity(0.7),
                                            fontSize: 16,
                                          ),
                                        ),
                                        const SizedBox(
                                            width:
                                                4), // Adjust the spacing as needed
                                        CircleAvatar(
                                          radius: 2,
                                          backgroundColor:
                                              colorblack.withOpacity(0.7),
                                        ),
                                        const SizedBox(
                                            width:
                                                4), // Adjust the spacing as needed
                                        Text(
                                          '2:00 PM',
                                          style: TextStyle(
                                            color: colorblack.withOpacity(0.7),
                                            fontSize: 16,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 7,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 0, right: 60),
                                      child: Text(
                                        '₹ 39400',
                                        style: TextStyle(
                                            overflow: TextOverflow.clip,
                                            color: colorblack.withOpacity(0.7),
                                            fontSize: 16),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              SizedBox(
                                height: 42, // Set the desired height
                                width: 115, // Set the desired width
                                child: OutlinedButton.icon(
                                  style: ButtonStyle(
                                    shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(21.0),
                                      ),
                                    ),
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            colorred),
                                  ),
                                  onPressed: () {
                                    // Your button action here
                                  },
                                  icon: const Icon(
                                    Icons.replay,
                                    color: colorred,
                                  ),
                                  label: const Text(
                                    'Rebook',
                                    style: TextStyle(
                                      color: colorred,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        sbox,
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Your Rating ',
                                style: TextStyle(
                                    overflow: TextOverflow.clip,
                                    color: colorblack.withOpacity(0.7),
                                    fontSize: 16),
                              ),
                              sbox,
                              Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: Text(
                                  'Your Review',
                                  style: TextStyle(
                                      overflow: TextOverflow.clip,
                                      color: colorblack.withOpacity(0.7),
                                      fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                        sbox,
                        Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      color: colorred,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: colorred,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: colorred,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: colorred,
                                    ),
                                  ],
                                ),
                                sbox,
                                Padding(
                                  padding: const EdgeInsets.only(left: 20),
                                  child: SizedBox(
                                    width: 210,
                                    child: Text(
                                      'Very talented and professional. My go to model for photoshoots.',
                                      style: TextStyle(
                                        color: Colors.black
                                            .withOpacity(0.800000011920929),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        height: 1.08,
                                      ),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
