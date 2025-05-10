part of 'get_booking_bloc.dart';

sealed class GetBookingEvent extends Equatable {
  const GetBookingEvent();

  @override
  List<Object> get props => [];
}
class GetBooking extends GetBookingEvent {
  final String bookingUuid;

  const GetBooking({required this.bookingUuid});

  @override
  List<Object> get props => [bookingUuid];
}
