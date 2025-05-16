import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_user_entity.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/home_page_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    this.userEntity,
  });

  // final UserModel? userModel;
  final GetUserEntity? userEntity;


  @override
  Widget build(BuildContext context) {
    return const HomePageWidget();
  }
}
