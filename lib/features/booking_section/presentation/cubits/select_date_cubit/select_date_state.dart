part of 'select_date_cubit.dart';

sealed class SelectDateState extends Equatable {
  const SelectDateState();

  @override
  List<Object> get props => [];
}

final class SelectDateInitial extends SelectDateState {
  final bool isCouponAdded;

  SelectDateInitial({required this.isCouponAdded});

    @override
  List<Object> get props => [isCouponAdded];

}
class DateAdded extends SelectDateState {
  final bool isDateAdded;
  final DateTime date;  
  final DateTime endDate;


  const DateAdded({required this.date, required this.isDateAdded,required this.endDate});
  @override
  List<Object> get props => [isDateAdded,date,endDate];
}
