import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/AppBarWidgetbold.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/BlackMegmoSeeALlWidget.dart';



class MyMegmoSeeAllPagetile extends StatefulWidget {
  const MyMegmoSeeAllPagetile({
    Key? key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyMegmoSeeAllPagetile> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: AppBarWidgetPrimarybold(
            text: "Neha's Portfolio",
          ),
        ),

        body: Padding(
          padding: EdgeInsets.only(right: 10, left: 10),
          child: LuxBlackMegmoSeeAllPagetile(
            title: '',
          ),
        ),
//         body: Column(
      ),
    );
  }
}
