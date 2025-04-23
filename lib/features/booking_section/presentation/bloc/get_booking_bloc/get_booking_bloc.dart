import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/get_booking_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/usecases/get_booking_usecase.dart';

part 'get_booking_event.dart';
part 'get_booking_state.dart';

class GetBookingBloc extends Bloc<GetBookingEvent, GetBookingState> {
  final GetBookingUseCase getBookingUseCase;

  GetBookingBloc({required this.getBookingUseCase})
      : super(GetBookingInitial()) {
    on<GetBooking>((event, emit) async {
      emit(const GetBookingLoading());
      var auth =
          await getBookingUseCase.execute(bookingUuid: event.bookingUuid);
      auth.fold(
        (left) {
          emit(const GetBookingFailed());
        },
        (right) {
          if (right.successStatus == true) {
            emit(GetBookingSuccess(getBookingEntity: right));
          } else {
            emit(const GetBookingFailed());
          }
        },
      );
    });
  }
}
