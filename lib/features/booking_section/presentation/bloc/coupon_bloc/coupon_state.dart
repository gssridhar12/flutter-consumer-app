part of 'coupon_bloc.dart';

sealed class CouponState extends Equatable {
  const CouponState();
  
  @override
  List<Object> get props => [];
}

final class CouponInitial extends CouponState {}

class GetCouponSuccess extends CouponState {
  final CouponEntity getCouponEntity;
  const GetCouponSuccess({required this.getCouponEntity});

  @override
  List<Object> get props => [];
}

class GetCouponLoading extends CouponState {
  const GetCouponLoading();

  @override
  List<Object> get props => [];
}
class GetCouponFailed extends CouponState {
  const GetCouponFailed();

  @override
  List<Object> get props => [];
}
