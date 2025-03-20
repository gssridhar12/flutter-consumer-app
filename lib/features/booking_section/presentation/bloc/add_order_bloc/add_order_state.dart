part of 'add_order_bloc.dart';

sealed class AddOrderState extends Equatable {
  const AddOrderState();

  @override
  List<Object> get props => [];
}

final class AddOrderInitial extends AddOrderState {}

class AddOrderFailed extends AddOrderState {
  const AddOrderFailed();

  @override
  List<Object> get props => [];
}

class AddOrderSuccess extends AddOrderState {
  const AddOrderSuccess();

  @override
  List<Object> get props => [];
}

class AddOrderLoading extends AddOrderState {
  const AddOrderLoading();

  @override
  List<Object> get props => [];
}
