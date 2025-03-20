import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/notifications_page/message_tile_widget.dart';

class NotificationsBottomSheetWidget extends StatefulWidget {
  const NotificationsBottomSheetWidget({
    super.key,
  });

  @override
  State<NotificationsBottomSheetWidget> createState() =>
      _NotificationsBottomSheetWidgetState();
}

enum SingingCharacter { lafayette, jefferson, bilal }

class _NotificationsBottomSheetWidgetState
    extends State<NotificationsBottomSheetWidget>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height * 0.85,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: padding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sbox,
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Center(
                  child: Text(
                'Notifications',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18),
              )),
            ),
            sbox,
            TabBar(
              controller: tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              unselectedLabelColor: colorblack.withOpacity(0.5),
              labelColor: colorred,
              dividerColor: colorred,
              indicatorColor: colorred,
              tabs: const [
                Tab(
                  child: Text('Unread'),
                ),
                Tab(
                  child: Text('Read'),
                )
              ],
            ),
            Expanded(
              child: TabBarView(
                physics: const BouncingScrollPhysics(),
                controller: tabController,
                children: const [
                  Column(
                    children: [
                      MessageTileWidget(),
                      MessageTileWidget(),
                      MessageTileWidget(),
                      MessageTileWidget(),
                      MessageTileWidget(),
                      MessageTileWidget(),
                    ],
                  ),
                  Column(
                    children: [
                      MessageTileWidget(),
                      MessageTileWidget(),
                      MessageTileWidget(),
                      MessageTileWidget(),
                      MessageTileWidget(),
                      MessageTileWidget(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
