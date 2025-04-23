import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/core/style/appstyles.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/entities/responce/get_user_messages_entity.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/bloc/chat_bloc/chat_bloc.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/widgets/chat_tile_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/search_field_widget.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/shared/widgets/secondary_appbar_widget.dart';
import 'package:sizer/sizer.dart';

class ChatHomePage extends StatefulWidget {
  const ChatHomePage({super.key});

  @override
  State<ChatHomePage> createState() => _ChatHomePageState();
}

class _ChatHomePageState extends State<ChatHomePage> {
  final userId = localDb.getString('id');
  final TextEditingController searchController = TextEditingController();
  GetUserMessageEntity? userMessageEntity;
  List<ClientMessage>? filteredChats;

  @override
  void initState() {
    BlocProvider.of<ChatBloc>(context).add(GetUserChats(userUuid: userId!));
    searchController.addListener(filterChats);

    super.initState();
  }

  final List<String> sortList = [
    "Drafts",
    "Starred",
    "Unread",
    "Archived",
    "Gold Partners",
    "Silver Partners",
    "Bronze Partners",
    "Sort by Partner level High to low",
    "Sort by Partner level low to High",
  ];

  @override
  void dispose() {
    searchController.removeListener(filterChats);
    searchController.dispose();
    super.dispose();
  }

  void filterChats() {
    setState(() {
      if (searchController.text.isEmpty) {
        filteredChats = userMessageEntity?.data?.clientMessages;
      } else {
        filteredChats = userMessageEntity?.data?.clientMessages
            ?.where((chat) => chat.profileName!
                .toLowerCase()
                .contains(searchController.text.toLowerCase()))
            .toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        backgroundColor: bggray,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBarWidgetSecondary(
            text: 'Chats',
            textcolor: colorblack,
            fontSize: 20,
            trailingIcon:
                const Icon(Icons.filter_list_outlined, color: colorred),
            trailingButtonOnTap: () {
              showModalBottomSheet(
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                context: context,
                builder: (context) {
                  return DraggableScrollableSheet(
                    expand: false,
                    initialChildSize: 0.7, // half screen on load
                    maxChildSize: 0.96, // full screen on scroll
                    minChildSize: 0.25,
                    builder: (context, scrollController) {
                      return Column(
                        children: [
                          const Padding(
                            padding: EdgeInsets.all(10.0),
                            child: HeadingTextWidget(
                              text: 'Filter Messages to',
                              trailingButton: false,
                            ),
                          ),
                          ListView.separated(
                            itemCount: sortList.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    sortList[index],
                                    style: AppStyles.black18regular,
                                  ),
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const Divider();
                            },
                          )
                        ],
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
        body: BlocBuilder<ChatBloc, ChatState>(
          builder: (context, state) {
            if (state is UserChatLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is UserChatFailed) {
              return Center(child: Text(state.message));
            } else if (state is UserChatLoaded) {
              userMessageEntity = state.userMessageEntity;
              filteredChats =
                  filteredChats ?? userMessageEntity?.data?.clientMessages;

              if (state.userMessageEntity.data != null) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      children: [
                        sbox20,
                        SearchFieldWidget(
                          controller: searchController,
                          isDense: false,
                          navigation: false,
                          width: 100.w,
                          text: 'Search by name, category or location',
                          height: 4.50.h,
                          prefixIcon: const Icon(Icons.search, size: 20),
                        ),
                        sbox20,
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: filteredChats!.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ChatTileWidget(
                              index: index,
                              chat: filteredChats![index],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                );
              } else {
                const Center(
                  child: Text('No Chat Available'),
                );
              }
            }
            return const Center(child: Text('Something wrong'));
          },
        ),
      ),
    );
  }
}
