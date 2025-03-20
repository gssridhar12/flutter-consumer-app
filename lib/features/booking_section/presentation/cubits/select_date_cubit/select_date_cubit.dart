import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'select_date_state.dart';

class SelectDateCubit extends Cubit<SelectDateState> {
  SelectDateCubit() : super(SelectDateInitial(isCouponAdded: false));

   void selectDate({required bool isDateAdded, required DateTime date}) {
    emit(DateAdded(isDateAdded: isDateAdded, date: date));
  }
}
