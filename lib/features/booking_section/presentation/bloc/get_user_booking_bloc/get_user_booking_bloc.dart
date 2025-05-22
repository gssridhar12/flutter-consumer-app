import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/get_user_booking_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/usecases/get_user_booking_usecase.dart';

part 'get_user_booking_event.dart';
part 'get_user_booking_state.dart';

class GetUserBookingBloc
    extends Bloc<GetUserBookingEvent, GetUserBookingState> {
  final GetUserBookingUseCase useCase;
  GetUserBookingBloc(this.useCase) : super(GetUserBookingInitial()) {
    on<GetUserBooking>((event, emit) async {
      emit(const GetUserBookingLoading());
      var auth = await useCase.execute(userId: event.userId);
      auth.fold(
        (left) {
          emit(const GetUserBookingFailed());
        },
        (right) {
          // if (right.successStatus == true) {
          emit(GetUserBookingSuccess(getUserBookingEntity: right));
          // } else {
            // emit(const GetUserBookingFailed());
          // }
        },
      );
    });
  }
}
