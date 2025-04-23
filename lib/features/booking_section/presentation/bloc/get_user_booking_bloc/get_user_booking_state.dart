part of 'get_user_booking_bloc.dart';

sealed class GetUserBookingState extends Equatable {
  const GetUserBookingState();

  @override
  List<Object> get props => [];
}

final class GetUserBookingInitial extends GetUserBookingState {}

class GetUserBookingFailed extends GetUserBookingState {
  const GetUserBookingFailed();

  @override
  List<Object> get props => [];
}

class GetUserBookingSuccess extends GetUserBookingState {
  final GetUserBookingEntity getUserBookingEntity;
  const GetUserBookingSuccess({required this.getUserBookingEntity});

  @override
  List<Object> get props => [];
}

class GetUserBookingLoading extends GetUserBookingState {
  const GetUserBookingLoading();

  @override
  List<Object> get props => [];
}
