import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/responce/get_user_messages_entity.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/pages/chat_screen_custom.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_partner_profile_image_widget.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:intl/intl.dart';

class ChatTileWidget extends StatelessWidget {
  const ChatTileWidget({
    super.key,
    required this.chat,
    required this.index,
  });
  final ClientMessage chat;
  final int index;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppNavigation.pushNavigation(
            context, ChatScreenCustom(partnerUuid: chat.partnerUuid!));
      },
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomPartnerProfileImageWidget(
                height: 50,
                width: 50,
                image: chat.profileImage ?? '',
                color: colorred),
            // Container(
            //   width: 20,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(20),
            //       color: colorwhite),
            //   child: const Center(
            //       child: Text(
            //     'level 8',
            //     style: TextStyle(fontSize: 10),
            //   )),
            // )
          ],
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Divider(thickness: 1),
            Row(
              children: [
                Text(
                  chat.profileName ?? '',
                  style: const TextStyle(
                      fontSize: 17, fontWeight: FontWeight.w500),
                ),
                const Spacer(),
                Text(
                  DateFormat('jmv').format(chat.chatMessage![0].timestamp!),
                  style: TextStyle(
                      fontSize: 17, color: colorblack.withOpacity(0.5)),
                ),
              ],
            ),
            Row(
              children: [
                // Text(
                //   chat.parentServiceOffered != null
                //       ? chat.parentServiceOffered![0]
                //       : "",
                //   style: const TextStyle(fontSize: 13),
                // ),
                const Spacer(),
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: colorwhite),
                  child: const Center(
                      child: Text(
                    '1',
                    style: TextStyle(fontSize: 13),
                  )),
                )
              ],
            ),
          ],
        ),
        subtitle: Text(chat.chatMessage![0].message ?? ''),
      ),
    );
  }
}
