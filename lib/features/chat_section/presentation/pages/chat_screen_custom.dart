import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/core/icons/app_icons_icons.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/request/sent_message_request.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/responce/get_user_messages_entity.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/bloc/chat_bloc/chat_bloc.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/widgets/chat_bubble.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/widgets/chat_option_tile_widget.dart';
import 'package:flutter_consumer_app/features/chat_section/services/firebase_messaging_services.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/pages/partner_profile_animated.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:sizer/sizer.dart';

import '../widgets/show_dialog_function.dart';

class ChatScreenCustom extends StatefulWidget {
  const ChatScreenCustom(
      {super.key, required this.partnerUuid, this.showPopUp = false});

  final String partnerUuid;
  final bool showPopUp;
  @override
  State<ChatScreenCustom> createState() => _ChatScreenCustomState();
}

class _ChatScreenCustomState extends State<ChatScreenCustom> {
  bool isTyping = false;
  final String? userId = localDb.getString('id') ?? "";

  late final ScrollController scrollController;

  final TextEditingController messageController = TextEditingController();

  List<ChatMessage> messages = [];

  FirebaseMessagingService firebase = FirebaseMessagingService();

  String fcmToken = "";

  Future<void> getToken() async {
    fcmToken = await firebase.getDeviceToken();
  }

  @override
  void initState() {
    scrollController = ScrollController();
    BlocProvider.of<ChatBloc>(context).add(GetUserChats(userUuid: userId!));
    getToken();

    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showPopup();
    });
  }

  void _showPopup() {
    if (widget.showPopUp) {
      showTermsAndConditionsDialog(context);

      Future.delayed(const Duration(seconds: 5), () {
        Navigator.of(context).pop();
      });
    }
  }

  void scrollToBottom() {
    final bottomOffset = scrollController.position.maxScrollExtent;
    scrollController.animateTo(
      bottomOffset,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  Future<void> sendMessage(
      String text, String userUuid, String partnerUuid) async {
    if (text.isNotEmpty) {
      setState(() {
        isTyping = false;
      });

      BlocProvider.of<ChatBloc>(context).add(
        SentMessage(
          fcmToken,
          request: SentMessageRequest(
            userUuid: userUuid,
            clientMessagesRequest: [
              ClientMessagesRequest(
                partnerUuid: partnerUuid,
                chatStatus: 'OPEN',
                chatMessageRequest: [
                  ChatMessageRequest(
                      message: text,
                      sender: 'user',
                      timestamp: DateTime.now(),
                      status: 'unseen')
                ],
              ),
            ],
          ),
        ),
      );
      messageController.clear();
    }
  }

  List<ChatMessage>? getPartnerMessages(
      GetUserMessageEntity userMessageEntity, String partnerUuid) {
    if (userMessageEntity.data == null ||
        userMessageEntity.data!.clientMessages == null) {
      return null; // No data or no client messages available
    }

    for (ClientMessage clientMessage
        in userMessageEntity.data!.clientMessages!) {
      if (clientMessage.partnerUuid == partnerUuid) {
        return clientMessage.chatMessage;
      }
    }

    return null; // No matching partnerUuid found
  }

  ClientMessage? getClientMessage(
      GetUserMessageEntity userMessageEntity, String partnerUuid) {
    if (userMessageEntity.data == null ||
        userMessageEntity.data!.clientMessages == null) {
      return null; // No data or no client messages available
    }

    for (ClientMessage clientMessage
        in userMessageEntity.data!.clientMessages!) {
      if (clientMessage.partnerUuid == partnerUuid) {
        return clientMessage;
      }
    }

    return null; // No matching partnerUuid found
  }

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      color: colorwhite,
      child: Scaffold(
        backgroundColor: bggray,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: BlocBuilder<ChatBloc, ChatState>(
            builder: (context, state) {
              if (state is UserChatLoading) {
                return const SizedBox.shrink();
              }
              if (state is UserChatLoaded) {
                final partnerData = getClientMessage(
                    state.userMessageEntity, widget.partnerUuid);
                return AppBar(
                  leadingWidth: 90,
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12.0),
                          child: Icon(AppIcons.back, color: colorblack),
                        ),
                      ),
                      CustomImage(
                          borderRadius: BorderRadius.circular(30),
                          imageUrl: partnerData?.profileImage ?? '',
                          height: 40,
                          width: 40),
                    ],
                  ),
                  backgroundColor: colorwhite,
                  elevation: 0,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        partnerData?.profileName ?? 'No Name',
                        style: const TextStyle(
                            color: colorblack,
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                      sbox5,
                      partnerData != null &&
                              partnerData.parentServiceOffered != null
                          ? Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: partnerData.parentServiceOffered!
                                  .map((service) {
                                return Text(
                                  service,
                                  style: const TextStyle(
                                    color: colorblack,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                );
                              }).toList(),
                            )
                          : const SizedBox.shrink()
                    ],
                  ),
                  actions: [
                    InkWell(
                      onTap: () {
                        AppNavigation.pushNavigation(context,
                            PartnerProfileAnimated(uuid: widget.partnerUuid));
                      },
                      child: const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Icon(
                          AppIcons.error_circle,
                          color: colorred,
                          size: 24,
                        ),
                      ),
                    )
                  ],
                );
              }
              return const SizedBox.shrink();
            },
          ),
        ),
        body: BlocConsumer<ChatBloc, ChatState>(
          listener: (context, state) {
            if (state is SentMessageSuccess) {
              context.read<ChatBloc>().add(GetUserChats(userUuid: userId!));
            } else if (state is SentMessageLoading) {
              const Material(child: CircularProgressIndicator());
            }
            if (state is UserChatLoaded) {
              setState(() {
                messages = getPartnerMessages(
                        state.userMessageEntity, widget.partnerUuid) ??
                    [];
              });

              WidgetsBinding.instance.addPostFrameCallback((_) {
                scrollToBottom();
              });
            }
          },
          builder: (context, state) {
            if (state is UserChatLoading) {
              return const Material(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else if (state is UserChatFailed) {
              return const Center(
                child: Text('Failed Loading Chat'),
              );
            }
            return Stack(
              children: [
                Positioned(
                  right: 0,
                  left: 0,
                  bottom: 0,
                  child: Container(
                    height: 10.h,
                    decoration: const BoxDecoration(
                        color: colorwhite,
                        borderRadius: BorderRadiusDirectional.vertical(
                            bottom: Radius.circular(10),
                            top: Radius.circular(20))),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              constraints: BoxConstraints(
                                maxHeight: 52.h,
                                maxWidth: 95.w,
                              ),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              builder: (context) {
                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: 95.w,
                                      height: 38.h,
                                      decoration: BoxDecoration(
                                        color: colorgrey,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Column(
                                        children: [
                                          sbox,
                                          const ChatOptionTIleWidget(
                                              icon: Icons.payment,
                                              title: 'Payment'),
                                          const ChatOptionTIleWidget(
                                              icon: Icons.camera_alt_outlined,
                                              title: 'Camera'),
                                          const ChatOptionTIleWidget(
                                              icon: Icons.image_outlined,
                                              title: 'Photo & Video Library'),
                                          const ChatOptionTIleWidget(
                                              icon: Icons.location_on_outlined,
                                              title: 'Location'),
                                          const ChatOptionTIleWidget(
                                              icon: Icons
                                                  .document_scanner_outlined,
                                              title: 'Document'),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: 95.w,
                                      height: 9.h,
                                      decoration: BoxDecoration(
                                        color: colorgrey,
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Column(
                                        children: [
                                          sbox,
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5.0),
                                            child: Container(
                                              height: 6.h,
                                              width: 85.w,
                                              decoration: BoxDecoration(
                                                color: colorwhite,
                                                borderRadius:
                                                    BorderRadius.circular(35),
                                              ),
                                              child: const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    'Cancel',
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.0),
                            child: Icon(
                              Icons.add_box_outlined,
                              color: colorred,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: bggray,
                                borderRadius: BorderRadius.circular(25)),
                            child: TextFormField(
                              onChanged: (value) {
                                setState(() {
                                  isTyping = value.isNotEmpty;
                                });
                              },
                              controller: messageController,
                              decoration: const InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                        isTyping != true
                            ? const Row(
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.currency_rupee_outlined,
                                      color: colorred,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      AppIcons.add_a_photo,
                                      color: colorred,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.mic_none_sharp,
                                      color: colorred,
                                    ),
                                  ),
                                ],
                              )
                            : GestureDetector(
                                onTap: () {
                                  sendMessage(messageController.text, userId!,
                                      widget.partnerUuid);
                                  BlocProvider.of<ChatBloc>(context).add(
                                      GetUserChats(
                                          userUuid: widget.partnerUuid));
                                  log('sending message to ${widget.partnerUuid}');
                                },
                                child: const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 15.0),
                                  child: Icon(
                                    Icons.keyboard_double_arrow_right_rounded,
                                    color: colorred,
                                  ),
                                ),
                              ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  bottom: 100,
                  left: 10,
                  right: 10,
                  child: ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: messages.length,
                    controller: scrollController,
                    itemBuilder: (context, index) {
                      return ChatBubbledd(
                        message: messages[index],
                      );
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
