part of 'add_booking_bloc.dart';

sealed class AddBookingEvent extends Equatable {
  const AddBookingEvent();

  @override
  List<Object> get props => [];
}

class AddBooking extends AddBookingEvent {
  final AddBookingRequest addBookingRequest;

  const AddBooking({required this.addBookingRequest});

  @override
  List<Object> get props => [addBookingRequest];
}
