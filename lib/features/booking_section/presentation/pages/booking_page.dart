// ignore_for_file: prefer_const_declarations

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/cancel_booking/cancel_booking_bloc.dart';
import '../bloc/cancel_booking/cancel_booking_event.dart';
import '../bloc/cancel_booking/cancel_booking_state.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CancelBookingBloc, CancelBookingState>(
      listener: (context, state) {
        if (state is CancelBookingSuccess) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.message)));
        } else if (state is CancelBookingFailure) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.error)));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Booking Details"),
          ),
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                final bookingUuid =
                    "28258808-a39b-45e3-9690-1639ecd69aed"; // Replace with your actual UUID

                final reason = 'Canceled';
                final cancellationReason =
                    "not interested"; // Your cancellation reason
                final cancellationDate = DateTime.now().toUtc();

                final cancelledBy = "User"; // Who is cancelling
                final fromApp = true; // Set this according to your logic

                context.read<CancelBookingBloc>().add(CancelBookingRequested(
                      bookingUuid: bookingUuid,
                      reason: reason,
                      cancellationReason: cancellationReason,
                      cancelledBy: cancelledBy,
                      fromApp: fromApp,
                      cancellationdate: cancellationDate,
                    ));
              },
              child: const Text("Cancel Booking"),
            ),
          ),
        );
      },
    );
  }
}
