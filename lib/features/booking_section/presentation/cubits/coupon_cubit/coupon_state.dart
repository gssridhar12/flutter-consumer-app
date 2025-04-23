part of 'coupon_cubit.dart';

sealed class CouponCubitState extends Equatable {
  const CouponCubitState();

  @override
  List<Object> get props => [];
}

final class CouponCubitInitial extends CouponCubitState {
  final bool isCouponAdded;

  const CouponCubitInitial({required this.isCouponAdded});

  @override
  List<Object> get props => [isCouponAdded];
}

class CouponAdded extends CouponCubitState {
  final bool isCouponAdded;
  final PackageCoupon coupon;
  final int totalAmount;

  const CouponAdded(
      {required this.totalAmount,
      required this.coupon,
      required this.isCouponAdded});
  @override
  List<Object> get props => [isCouponAdded, coupon];
}
