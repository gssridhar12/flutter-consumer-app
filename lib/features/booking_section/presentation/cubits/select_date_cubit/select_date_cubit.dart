import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'select_date_state.dart';

class SelectDateCubit extends Cubit<SelectDateState> {
  SelectDateCubit() : super(SelectDateInitial(isCouponAdded: false));

   void selectDate({required bool isDateAdded, required DateTime date,required DateTime endDate}) {
    debugPrint('Select Date =>$date and isDateAdded=$isDateAdded,endDate=$endDate');
    emit(DateAdded(isDateAdded: isDateAdded, date: date, endDate: endDate ));

  }
 
}
