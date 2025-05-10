import 'package:equatable/equatable.dart';

sealed class CancelBookingEvent extends Equatable {
  const CancelBookingEvent();
  @override
  List<Object> get props => [];
}

class CancelBookingRequested extends CancelBookingEvent {
  final String bookingUuid;
  final String reason;
  final DateTime cancellationdate;
  final String cancellationReason;
  final String cancelledBy;
  final bool fromApp;

  const CancelBookingRequested({
    required this.bookingUuid,
    required this.reason,
    required this.cancellationdate,
    required this.cancellationReason,
    required this.cancelledBy,
    required this.fromApp,
  });

  @override
  List<Object> get props => [
        bookingUuid,
        reason,
        cancellationdate,
        cancellationReason,
        cancelledBy,
        fromApp
      ];
}
