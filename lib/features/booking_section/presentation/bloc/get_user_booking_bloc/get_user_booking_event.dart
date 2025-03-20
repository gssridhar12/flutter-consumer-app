part of 'get_user_booking_bloc.dart';

sealed class GetUserBookingEvent extends Equatable {
  const GetUserBookingEvent();

  @override
  List<Object> get props => [];
}
class GetUserBooking extends GetUserBookingEvent {
  final String userId;

  const GetUserBooking({required this.userId});

  @override
  List<Object> get props => [userId];
}
