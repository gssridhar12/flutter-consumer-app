abstract class CancelBookingState {}

class CancelBookingInitial extends CancelBookingState {}

class CancelBookingInProgress extends CancelBookingState {}

class CancelBookingSuccess extends CancelBookingState {
  final String message;

  CancelBookingSuccess({required this.message});
}

class CancelBookingFailure extends CancelBookingState {
  final String error;

  CancelBookingFailure({required this.error});
}
