part of 'add_booking_bloc.dart';

sealed class AddBookingState extends Equatable {
  const AddBookingState();

  @override
  List<Object> get props => [];
}

final class AddBookingInitial extends AddBookingState {}

class AddBookingFailed extends AddBookingState {
  const AddBookingFailed();

  @override
  List<Object> get props => [];
}

class AddBookingSuccess extends AddBookingState {
  final AddBookingEntity bookingEntity;
  const AddBookingSuccess({required this.bookingEntity});

  @override
  List<Object> get props => [];
}

class AddBookingLoading extends AddBookingState {
  const AddBookingLoading();

  @override
  List<Object> get props => [];
}
