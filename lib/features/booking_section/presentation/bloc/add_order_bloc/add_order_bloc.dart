import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/request/add_order_request.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/usecases/add_order_usecase.dart';

part 'add_order_event.dart';
part 'add_order_state.dart';

class AddOrderBloc extends Bloc<AddOrderEvent, AddOrderState> {
  final AddOrderUseCase addOrderUseCase;
  AddOrderBloc({required this.addOrderUseCase}) : super(AddOrderInitial()) {
    on<AddOrder>((event, emit) async {
      emit(const AddOrderLoading());
      var auth =
          await addOrderUseCase.execute(addOrderRequest: event.addOrderRequest);
      auth.fold(
        (left) {
          emit(const AddOrderFailed());
        },
        (right) {
          if (right.successStatus == true) {
            emit(const AddOrderSuccess());
          } else {
            emit(const AddOrderFailed());
          }
        },
      );
    });
  }
}
