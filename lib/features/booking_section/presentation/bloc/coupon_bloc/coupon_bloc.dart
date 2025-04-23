import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/coupon_entity.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/usecases/get_coupon_usecase.dart';

part 'coupon_event.dart';
part 'coupon_state.dart';

class CouponBloc extends Bloc<CouponEvent, CouponState> {
  final GetCouponUseCase useCase;
  CouponBloc(this.useCase) : super(CouponInitial()) {
    on<GetCoupon>((event, emit) async {
      emit(const GetCouponLoading());
      var auth = await useCase.execute(packageUuid: event.packageUuid);
      auth.fold(
        (left) {
          emit(const GetCouponFailed());
        },
        (right) {
          if (right.successStatus == true) {
            emit(GetCouponSuccess(getCouponEntity: right));
          } else {
            emit(const GetCouponFailed());
          }
        },
      );
    });
  }
}
