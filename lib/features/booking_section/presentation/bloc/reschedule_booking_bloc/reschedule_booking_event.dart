import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/request/reschedule_booking_request.dart';

sealed class RescheduleBookingEvent extends Equatable {
  const RescheduleBookingEvent();
  @override
  List<Object> get props => [];
}

class RescheduleBooking extends RescheduleBookingEvent {
  final RescheduleBookingRequest rescheduleBookingRequest;
  const RescheduleBooking({required this.rescheduleBookingRequest});

  @override
  List<Object> get props => [rescheduleBookingRequest];
}
