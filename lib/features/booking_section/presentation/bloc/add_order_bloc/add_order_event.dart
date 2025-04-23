part of 'add_order_bloc.dart';

sealed class AddOrderEvent extends Equatable {
  const AddOrderEvent();

  @override
  List<Object> get props => [];
}

class AddOrder extends AddOrderEvent {
  final AddOrderRequest addOrderRequest;

  const AddOrder({required this.addOrderRequest});

  @override
  List<Object> get props => [addOrderRequest];
}
