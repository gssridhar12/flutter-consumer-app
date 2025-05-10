import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../domain/entities/request/cancel_booking_request.dart';
import '../../../domain/usecases/cancel_booking_usecase.dart';
import 'cancel_booking_event.dart';
import 'cancel_booking_state.dart';

class CancelBookingBloc extends Bloc<CancelBookingEvent, CancelBookingState> {
  final CancelBookingUseCase cancelBookingUseCase;
  CancelBookingBloc({required this.cancelBookingUseCase})
      : super(CancelBookingInitial()) {
    on<CancelBookingRequested>((event, emit) async {
      emit(CancelBookingInProgress());
      final cancelBookingRequest = CancelBookingRequest(
        bookingUuid: event.bookingUuid,
        reason: event.reason,
        cancellationDate: DateTime.now().toUtc().toIso8601String(),
        cancelledBy: event.cancelledBy,
        fromApp: event.fromApp,
        cancellationReason: event.cancellationReason,
      );
      var result = await cancelBookingUseCase.execute(
          cancelBookingRequest: cancelBookingRequest);
      result.fold(
        (left) {
          emit(CancelBookingFailure(error: 'Something went wrong'));
        },
        (right) {
          if (right.successStatus == true) {
            emit(CancelBookingSuccess(
                message: 'Booking Cancelled Successfully'));
          } else {
            emit(CancelBookingFailure(error: 'Something went wrong'));
          }
        },
      );
    });
  }
}
