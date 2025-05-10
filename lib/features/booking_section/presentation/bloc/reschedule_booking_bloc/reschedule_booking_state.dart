import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/reschedule_time_model.dart';

sealed class RescheduleBookingState extends Equatable {
  const RescheduleBookingState();

  @override
  List<Object> get props => [];
}

final class RescheduleBookingInitial extends RescheduleBookingState {}

class RescheduleBookingLoading extends RescheduleBookingState {
  const RescheduleBookingLoading();

  @override
  List<Object> get props => [];
}

class RescheduleBookingFailed extends RescheduleBookingState {
  const RescheduleBookingFailed();

  @override
  List<Object> get props => [];
}

class RescheduleBookingSuccess extends RescheduleBookingState {
  final RescheduleModel rescheduleModel;
  const RescheduleBookingSuccess({required this.rescheduleModel});

  @override
  List<Object> get props => [];
}
