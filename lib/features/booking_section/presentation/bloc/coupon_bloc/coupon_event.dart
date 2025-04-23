part of 'coupon_bloc.dart';

sealed class CouponEvent extends Equatable {
  const CouponEvent();

  @override
  List<Object> get props => [];
}

class GetCoupon extends CouponEvent {
  final String packageUuid;

  const GetCoupon({required this.packageUuid});

  @override
  List<Object> get props => [packageUuid];
}
