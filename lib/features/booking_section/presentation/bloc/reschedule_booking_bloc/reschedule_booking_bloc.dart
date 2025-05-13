import 'package:bloc/bloc.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/usecases/reschedule_booking_usecase.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/reschedule_booking_bloc/reschedule_booking_event.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/reschedule_booking_bloc/reschedule_booking_state.dart';

class RescheduleBookingBloc
    extends Bloc<RescheduleBookingEvent, RescheduleBookingState> {
  final RescheduleBookingUseCase rescheduleBookingUseCase;

  RescheduleBookingBloc({required this.rescheduleBookingUseCase})
      : super(RescheduleBookingInitial()) {
    on<RescheduleBooking>((event, emit) async {
      emit(const RescheduleBookingLoading());
      var auth = await rescheduleBookingUseCase.execute(
          rescheduleBookingRequest: event.rescheduleBookingRequest);
      auth.fold(
        (left) {
          emit(const RescheduleBookingFailed());
        },
        (right) {
          if (right.successStatus == true) {
            emit(RescheduleBookingSuccess(rescheduleModel: right));
          } else {
            emit(const RescheduleBookingFailed());
          }
        },
      );
    });
  }
}
