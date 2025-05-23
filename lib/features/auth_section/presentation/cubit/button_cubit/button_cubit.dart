import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/cubit/button_cubit/button_state.dart';

///This buttonCubit can used for showing state of the button [ButtonState]
class ButtonCubit extends Cubit<ButtonState> {
  ButtonCubit() : super(const ButtonValidated(isValidated: false));

  void validateTextfield(bool isValidated) {
    emit(ButtonValidated(isValidated: isValidated));
    debugPrint('data updated $isValidated');
  }

  void setLoading(ButtonStatus buttonStatus) {
    emit(state.copyWith(buttonStatus: buttonStatus));
  }
}
