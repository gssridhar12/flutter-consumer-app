part of 'address_cubit.dart';

sealed class AddressCubitState extends Equatable {
  const AddressCubitState();

  @override
  List<Object> get props => [];
}

final class AddressInitial extends AddressCubitState {
  final bool isAddressAdded;

 const AddressInitial({required this.isAddressAdded});
}

class AddressAdded extends AddressCubitState {
  final bool isAddressAdded;
  final UserAddress address;

  const AddressAdded({required this.address, required this.isAddressAdded});
  @override
  List<Object> get props => [isAddressAdded, address];
}
