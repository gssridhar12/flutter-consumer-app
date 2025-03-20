import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/bloc/auth_bloc.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/pages/three_options.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/home_page.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';

class AuthValidationPage extends StatefulWidget {
  const AuthValidationPage({super.key});

  @override
  State<AuthValidationPage> createState() => _AuthValidationPageState();
}

class _AuthValidationPageState extends State<AuthValidationPage> {
  @override
  void initState() {
    context.read<AuthBloc>().add(CheckLoginStatus());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BlocListener<AuthBloc, AuthBlocState>(
        listener: (context, state) {
          if (state is UserNotLogedIn) {
            AppNavigation.pushRepacementNavigation(
                context, const ThreeOptionsPage());
          } else if (state is UserLogedIn) {
            AppNavigation.pushRepacementNavigation(context, const HomePage());
          }
        },
        child: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
