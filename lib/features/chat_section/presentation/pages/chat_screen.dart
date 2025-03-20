// import 'package:flutter/material.dart';
// import 'package:chatview/chatview.dart';
// import 'package:flutter_consumer_app/core/colors/colors.dart';

// class ChatScreen extends StatefulWidget {
//   const ChatScreen({Key? key}) : super(key: key);

//   @override
//   State<ChatScreen> createState() => _ChatScreenState();
// }

// List<Message> messageList = [
//   Message(
//     id: '1',
//     message: "Hi",
//     createdAt: DateTime.now(),
//     sendBy: '2',
//   ),
//   Message(
//     id: '2',
//     message: "Hello",
//     createdAt: DateTime.now(),
//     sendBy: '1',
//   ),
// ];

// class _ChatScreenState extends State<ChatScreen> {
//   // AppTheme theme = LightTheme();
//   bool isDarkTheme = false;
//   final currentUser = ChatUser(
//     id: '1',
//     name: 'Neha Kumar',
//     profilePhoto:
//         'https://www.filmibeat.com/img/315x100x396/popcorn/profile_photos/shahrukh-khan-20190625140849-86.jpg',
//   );

//   final _chatController = ChatController(
//     initialMessageList: messageList,
//     scrollController: ScrollController(),
//     chatUsers: [
//       ChatUser(
//         id: '2',
//         name: 'Simform',
//         profilePhoto:
//             'https://www.filmibeat.com/img/315x100x396/popcorn/profile_photos/shahrukh-khan-20190625140849-86.jpg',
//       ),
//       ChatUser(
//         id: '3',
//         name: 'Jhon',
//         profilePhoto:
//             'https://www.filmibeat.com/img/315x100x396/popcorn/profile_photos/shahrukh-khan-20190625140849-86.jpg',
//       ),
//       ChatUser(
//         id: '4',
//         name: 'Mike',
//         profilePhoto:
//             'https://www.filmibeat.com/img/315x100x396/popcorn/profile_photos/shahrukh-khan-20190625140849-86.jpg',
//       ),
//       ChatUser(
//         id: '5',
//         name: 'Rich',
//         profilePhoto:
//             'https://www.filmibeat.com/img/315x100x396/popcorn/profile_photos/shahrukh-khan-20190625140849-86.jpg',
//       ),
//     ],
//   );

//   // void _showHideTypingIndicator() {
//   //   _chatController.setTypingIndicator = !_chatController.showTypingIndicator;
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: ChatView(
//         currentUser: currentUser,
//         chatController: _chatController,
//         onSendTap: _onSendTap,
//         featureActiveConfig: const FeatureActiveConfig(
//           lastSeenAgoBuilderVisibility: true,
//           receiptsBuilderVisibility: true,
//         ),
//         chatViewState: ChatViewState.hasMessages,
//         chatViewStateConfig: ChatViewStateConfiguration(
//           loadingWidgetConfig: const ChatViewStateWidgetConfiguration(
//             loadingIndicatorColor: colorred,
//           ),
//           onReloadButtonTap: () {},
//         ),
//         typeIndicatorConfig: const TypeIndicatorConfiguration(
//           flashingCircleBrightColor: colorred,
//           flashingCircleDarkColor: colorred,
//         ),
//         appBar: ChatViewAppBar(
//           elevation: 0,
//           backGroundColor: colorwhite,
//           profilePicture:
//               'https://www.filmibeat.com/img/315x100x396/popcorn/profile_photos/shahrukh-khan-20190625140849-86.jpg',
//           backArrowColor: colorblack,
//           chatTitle: currentUser.name,
//           chatTitleTextStyle: const TextStyle(
//             color: colorred,
//             fontWeight: FontWeight.bold,
//             fontSize: 18,
//             letterSpacing: 0.25,
//           ),
//           userStatus: "online",
//           userStatusTextStyle: const TextStyle(color: Colors.grey),
//           actions: [
//             IconButton(
//               onPressed: () {},
//               icon: const Icon(
//                 Icons.info_outline,
//                 color: colorred,
//               ),
//             ),
//             // IconButton(
//             //   tooltip: 'Toggle TypingIndicator',
//             //   onPressed: _showHideTypingIndicator,
//             //   icon: const Icon(
//             //     Icons.keyboard,
//             //     color: colorblack,
//             //   ),
//             // ),
//           ],
//         ),
//         chatBackgroundConfig: ChatBackgroundConfiguration(
//           messageTimeIconColor: colorblack,
//           messageTimeTextStyle: const TextStyle(color: colorblack),
//           defaultGroupSeparatorConfig: DefaultGroupSeparatorConfiguration(
//             textStyle: TextStyle(
//               color: colorblack.withOpacity(0.5),
//               fontSize: 17,
//             ),
//           ),
//           backgroundColor: bggray,
//         ),
//         sendMessageConfig: SendMessageConfiguration(
//           imagePickerIconsConfig: const ImagePickerIconsConfiguration(
//             cameraIconColor: colorred,
//             galleryIconColor: colorred,
//           ),
//           replyMessageColor: colorblack,
//           defaultSendButtonColor: colorred,
//           replyDialogColor: colorwhite,
//           replyTitleColor: colorblack,
//           textFieldBackgroundColor: colorwhite,
//           closeIconColor: colorred,
//           textFieldConfig: TextFieldConfiguration(
//             onMessageTyping: (status) {
//               /// Do with status
//               debugPrint(status.toString());
//             },
//             compositionThresholdTime: const Duration(seconds: 1),
//             textStyle: const TextStyle(color: colorblack),
//           ),
//           micIconColor: colorred,
//           voiceRecordingConfiguration: const VoiceRecordingConfiguration(
//             backgroundColor: colorwhite,
//             recorderIconColor: colorred,
//             waveStyle: WaveStyle(
//                 showMiddleLine: false,
//                 waveColor: colorred,
//                 extendWaveform: true,
//                 durationStyle: TextStyle(color: colorblack)),
//           ),
//         ),
//         chatBubbleConfig: ChatBubbleConfiguration(
//           outgoingChatBubbleConfig: ChatBubble(
//             linkPreviewConfig: const LinkPreviewConfiguration(
//               linkStyle: TextStyle(color: colorblack),
//               backgroundColor: bggray,
//               bodyStyle: TextStyle(),
//               titleStyle: TextStyle(),
//             ),
//             receiptsWidgetConfig:
//                 const ReceiptsWidgetConfig(showReceiptsIn: ShowReceiptsIn.all),
//             color: colorred.withOpacity(0.3),
//           ),
//           inComingChatBubbleConfig: ChatBubble(
//             linkPreviewConfig: const LinkPreviewConfiguration(
//               linkStyle: TextStyle(
//                 color: colorblack,
//                 decoration: TextDecoration.underline,
//               ),
//               backgroundColor: colorred,
//               bodyStyle: TextStyle(),
//               titleStyle: TextStyle(),
//             ),
//             textStyle: const TextStyle(color: colorblack),
//             onMessageRead: (message) {
//               /// send your message reciepts to the other client
//               debugPrint('Message Read');
//             },
//             senderNameTextStyle: const TextStyle(color: colorred),
//             color: colorwhite,
//           ),
//         ),
//         replyPopupConfig: const ReplyPopupConfiguration(
//           backgroundColor: colorwhite,
//           buttonTextStyle: TextStyle(color: colorred),
//           topBorderColor: colorred,
//         ),
//         reactionPopupConfig: ReactionPopupConfiguration(
//           shadow: BoxShadow(
//             color: isDarkTheme ? Colors.black54 : Colors.grey.shade400,
//             blurRadius: 20,
//           ),
//           backgroundColor: colorwhite,
//         ),
//         messageConfig: MessageConfiguration(
//           messageReactionConfig: MessageReactionConfiguration(
//             backgroundColor: colorwhite,
//             borderColor: colorgrey,
//             reactedUserCountTextStyle: const TextStyle(color: colorred),
//             reactionCountTextStyle: const TextStyle(color: colorred),
//             reactionsBottomSheetConfig: ReactionsBottomSheetConfiguration(
//               backgroundColor: colorgrey,
//               reactedUserTextStyle: const TextStyle(
//                 color: colorblack,
//               ),
//               reactionWidgetDecoration: BoxDecoration(
//                 color: colorred,
//                 boxShadow: [
//                   BoxShadow(
//                     color: isDarkTheme ? Colors.black12 : Colors.grey.shade200,
//                     offset: const Offset(0, 20),
//                     blurRadius: 40,
//                   )
//                 ],
//                 borderRadius: BorderRadius.circular(10),
//               ),
//             ),
//           ),
//           imageMessageConfig: ImageMessageConfiguration(
//             margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 15),
//             shareIconConfig: ShareIconConfiguration(
//               defaultIconBackgroundColor: bggray,
//               defaultIconColor: bggray,
//             ),
//           ),
//         ),
//         profileCircleConfig: const ProfileCircleConfiguration(
//           profileImageUrl:
//               'https://www.filmibeat.com/img/315x100x396/popcorn/profile_photos/shahrukh-khan-20190625140849-86.jpg',
//         ),
//         repliedMessageConfig: RepliedMessageConfiguration(
//           backgroundColor: colorwhite,
//           verticalBarColor: colorblack,
//           repliedMsgAutoScrollConfig: RepliedMsgAutoScrollConfig(
//             enableHighlightRepliedMsg: true,
//             highlightColor: Colors.pinkAccent.shade100,
//             highlightScale: 1.1,
//           ),
//           textStyle: const TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//             letterSpacing: 0.25,
//           ),
//           replyTitleTextStyle: const TextStyle(color: colorred),
//         ),
//         swipeToReplyConfig: const SwipeToReplyConfiguration(
//           animationDuration: Duration(milliseconds: 200),
//           replyIconColor: colorred,
//         ),
//       ),
//     );
//   }

//   void _onSendTap(
//     String message,
//     ReplyMessage replyMessage,
//     MessageType messageType,
//   ) {
//     final id = int.parse(messageList.last.id) + 1;
//     _chatController.addMessage(
//       Message(
//         id: id.toString(),
//         createdAt: DateTime.now(),
//         message: message,
//         sendBy: currentUser.id,
//         replyMessage: replyMessage,
//         messageType: messageType,
//       ),
//     );
//     Future.delayed(const Duration(milliseconds: 300), () {
//       _chatController.initialMessageList.last.setStatus =
//           MessageStatus.undelivered;
//     });
//     Future.delayed(const Duration(seconds: 1), () {
//       _chatController.initialMessageList.last.setStatus = MessageStatus.read;
//     });
//   }
// }
