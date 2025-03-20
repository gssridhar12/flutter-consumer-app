import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/entities/response/coupon_entity.dart';

part 'coupon_state.dart';

class CouponCubit extends Cubit<CouponCubitState> {
  CouponCubit() : super(const CouponCubitInitial(isCouponAdded: false));

  int totalAmount = 0;

  void selectCoupon(
      {required bool isSelected,
      required PackageCoupon coupon,
      required int packageAmount}) {
    emit(CouponAdded(
        isCouponAdded: isSelected,
        coupon: coupon,
        totalAmount: packageAmount -= coupon.fixedAmount!.toInt()));
  }
}
