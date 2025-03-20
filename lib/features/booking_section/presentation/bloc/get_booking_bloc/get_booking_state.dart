part of 'get_booking_bloc.dart';

sealed class GetBookingState extends Equatable {
  const GetBookingState();

  @override
  List<Object> get props => [];
}

final class GetBookingInitial extends GetBookingState {}

class GetBookingFailed extends GetBookingState {
  const GetBookingFailed();

  @override
  List<Object> get props => [];
}

class GetBookingSuccess extends GetBookingState {
  final GetBookingEntity getBookingEntity;
  const GetBookingSuccess({required this.getBookingEntity});

  @override
  List<Object> get props => [];
}

class GetBookingLoading extends GetBookingState {
  const GetBookingLoading();

  @override
  List<Object> get props => [];
}
