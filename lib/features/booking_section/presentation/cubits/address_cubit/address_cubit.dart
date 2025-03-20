import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_user_entity.dart';

part 'address_state.dart';

class AddressCubit extends Cubit<AddressCubitState> {
  AddressCubit() : super(const AddressInitial(isAddressAdded: false));

  void selectAddress(
      {required bool isAddressAdded, required UserAddress coupon}) {
    emit(AddressAdded(isAddressAdded: isAddressAdded, address: coupon));
  }
}
