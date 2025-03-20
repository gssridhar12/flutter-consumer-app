import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/request/add_booking_request.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/add_booking_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/usecases/add_booking_usecase.dart';

part 'add_booking_event.dart';
part 'add_booking_state.dart';

class AddBookingBloc extends Bloc<AddBookingEvent, AddBookingState> {
  final AddBookingUseCase addBookingUseCase;

  AddBookingBloc(this.addBookingUseCase) : super(AddBookingInitial()) {
    on<AddBooking>((event, emit) async {
      emit(const AddBookingLoading());
      var auth = await addBookingUseCase.execute(
          addBookingRequest: event.addBookingRequest);
      auth.fold(
        (left) {
          emit(const AddBookingFailed());
        },
        (right) {
          if (right.successStatus == true) {
            emit(AddBookingSuccess(bookingEntity: right));
          } else {
            emit(const AddBookingFailed());
          }
        },
      );
    });
  }
}
