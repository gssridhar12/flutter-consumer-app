//
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/AppbarWedget.dart';
// ignore: unused_import
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/home_appbar_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/story_view_page.dart';

class HomeSuccessStoryExpanded extends StatelessWidget {
  const HomeSuccessStoryExpanded({super.key});

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          // appBar: PreferredSize(
          //   preferredSize: const Size.fromHeight(70),
          //   child: HomeAppBarWidget(
          //     scaffoldKey: scaffoldKey,
          //     profileIcon:
          //         'https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png',
          //   ),
          // ),
          body: PageViewExample(),
        ),
      ),
    );
  }
}

class PageViewExample extends StatelessWidget {
  const PageViewExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();

    return PageView(
      children: <Widget>[
        Column(
          children: [
            const AppBarWidgetPrimary(
              text: 'Success stories_Near you’',
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10.0),
                    child: MegmoWidgetExpand(
                      text: '',
                    ),
                  );
                },
              ),
            ),
            // Additional text below the ListView.builder
            // const ChatWidgetPage(
            //   text: "solo singer / performer",
            // ),
          ],
        ),
      ],
    );
  }
}
