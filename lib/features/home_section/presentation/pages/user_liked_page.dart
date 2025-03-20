import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/bloc/partner_like_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/bloc/partner_like_bloc_event.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/package_like_bloc/package_like_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/AppbarWedget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/user_liked/packages_tab_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/user_liked/profile_tab_widget.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';

class UserLikedPage extends StatefulWidget {
  const UserLikedPage({
    super.key,
  });

  @override
  State<UserLikedPage> createState() => _UserLikedPageState();
}

class _UserLikedPageState extends State<UserLikedPage> {
  int? _value = 0;
  final String userId = localDb.getString('id')!;

  List<String> choiceChip = ['Packages', 'Profiles', 'Media'];
  List<Widget> chipWidgets = [
    PackagesLikedTabWidget(),
    ProfileLikedTabWidget(),
    PackagesLikedTabWidget()
  ];

  

  @override
  void initState() {
    context.read<PackageLikeBloc>().add(GetPackageLike(userId: userId));
    context.read<PartnerLikeBloc>().add(GetPartnerLike(partnerUuid: userId));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;

    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBarWidgetPrimary(
            text: 'Liked',
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: padding20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Wrap(
                spacing: 5.0,
                children: List<Widget>.generate(
                  3,
                  (int index) {
                    return ChoiceChip(
                      selectedColor: colorwhite,
                      color: const WidgetStatePropertyAll(colorwhite),
                      backgroundColor: bggray,
                      label: Text(choiceChip[index],
                          style: TextStyle(
                              decoration: _value == index
                                  ? TextDecoration.underline
                                  : null,
                              color: _value == index
                                  ? colorred
                                  : colorblack.withOpacity(0.5))),
                      selected: _value == index,
                      onSelected: (bool selected) {
                        setState(() {
                          _value = selected ? index : _value;
                        });
                      },
                    );
                  },
                ).toList(),
              ),
              sbox20,
              // Column(
              //   children: [chipWidget[_value!]
              //   ],
              // )
              chipWidgets[_value!]
            ]),
          ),
        ),
      ),
    );
  }
}
