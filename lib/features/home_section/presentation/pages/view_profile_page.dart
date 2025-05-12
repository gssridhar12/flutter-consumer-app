import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/text_field_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/edit_profile_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/AppbarWedget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_initicon/flutter_initicon.dart';

class ViewProfilePage extends StatefulWidget {
  const ViewProfilePage({
    super.key,
  });

  @override
  State<ViewProfilePage> createState() => _ViewProfilePageState();
}

class _ViewProfilePageState extends State<ViewProfilePage> {
  @override
  void initState() {
    // context.read<HomeBloc>().add(const GetUserDetails());
    BlocProvider.of<UserBloc>(context).add(const GetUser());

    super.initState();
  }

  final String userId = localDb.getString('id')!;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBarWidgetPrimary(
            text: 'View Profile',
          ),
        ),
        body: BlocConsumer<UserBloc, UserState>(
          listener: (context, state) {},
          builder: (context, state) {
            if (state is GetUserLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is GetUserFailed) {
              // Utils.showSnackbar('Login Failed');'
              SchedulerBinding.instance.addPostFrameCallback(
                (_) {
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('something Wrong')));
                },
              );
              // return const Text('Login failed');
            } else if (state is GetUserSuccess) {
              log('succes event recived');
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: padding20),
                child: SingleChildScrollView(
                  physics: const NeverScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      sbox20,
                      Container(
                        width: width,
                        height: width * 0.2,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 5,
                                spreadRadius: 1,
                                color: colorblack.withOpacity(0.1),
                              ),
                            ],
                            borderRadius: BorderRadius.circular(12),
                            color: colorwhite),
                        child: Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: padding),
                          child: Row(
                            children: [
                              Initicon(
                                size: width * 0.15,
                                text: state.user.data!.fullName ?? "",
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: padding),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      state.user.data!.fullName ?? "",
                                      style: const TextStyle(
                                          fontSize: 22,
                                          color: colorblack,
                                          fontWeight: FontWeight.w700),
                                    ),
                                    sbox5,
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ViewProfilePage(),
                                          ),
                                        );
                                      },
                                      child: Text(
                                        "Patron Level ${state.user.data!.patronLevel.toString()}",
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            fontSize: 16,
                                            color: colorblack.withOpacity(0.5),
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Spacer(),
                            ],
                          ),
                        ),
                      ),
                      sbox20,
                      HeadingTextWidget(
                        text:
                            '${state.user.data!.fullName ?? ""}’s Confirmed Information',
                        trailingButton: false,
                        textColor: colorred,
                      ),
                      sbox20,
                      TextFieldWidget(
                        icon: Icons.abc,
                        isEnabled: false,
                        isSecondaryStyle: true,
                        labelText: 'Name',
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.name,
                        autofillHints: const [AutofillHints.name],
                        initialValue: state.user.data!.fullName ?? "",
                      ),
                      sbox20,
                      state.user.data!.mobileNumber == null
                          ? TextFieldWidget(
                              icon: Icons.email_outlined,
                              isEnabled: false,
                              isSecondaryStyle: true,
                              labelText: 'Email',
                              textInputAction: TextInputAction.next,
                              textInputType: TextInputType.name,
                              autofillHints: const [AutofillHints.name],
                              initialValue: state.user.data!.email ?? "",
                            )
                          : TextFieldWidget(
                              icon: Icons.phone_android_outlined,
                              isEnabled: false,
                              isSecondaryStyle: true,
                              labelText: 'Phone Number',
                              textInputAction: TextInputAction.next,
                              textInputType: TextInputType.number,
                              autofillHints: const [AutofillHints.name],
                              initialValue: state.user.data!.mobileNumber ?? "",
                            ),
                      const Divider(),
                      sbox,
                      const HeadingTextWidget(
                        text: 'It’s time to create your profile',
                        trailingButton: false,
                        textColor: colorred,
                      ),
                      sbox,
                      Text(
                        'Your Woofurs profile is an important part of every booking, Create yours to help us serve you better.',
                        style: TextStyle(
                            fontSize: 15,
                            color: colorblack.withOpacity(0.5),
                            fontWeight: FontWeight.w400),
                      ),
                      sbox20,
                      ButtonWidget(
                        text: 'Create Profile',
                        width: width,
                        navigation: EditProfilePage(userModel: state.user),
                      ),
                    ],
                  ),
                ),
              );
            }
            return const Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text('adsfdafs'),
            );
          },
        ),
      ),
    );
  }
}
