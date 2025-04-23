import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/AppBarWidgetbold.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/widgets/BlackLuxPortfolioseeallWidget.dart';

class MyHomePagetile extends StatefulWidget {
  const MyHomePagetile({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePagetile> {
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
            padding: EdgeInsets.only(left: 12, right: 12),
            child: LuxBlackProfileSeeAllPagetile(),
          )),
    );
  }
}
