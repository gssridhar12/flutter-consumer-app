import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/cubits/address_cubit/address_cubit.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/add_address_bottomsheet_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/bottom_sheet_title_widget.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_user_entity.dart';

import 'package:flutter_consumer_app/features/home_section/presentation/bloc/user_bloc/user_bloc.dart';

class SelectAddressBottomSheetWidget extends StatefulWidget {
  const SelectAddressBottomSheetWidget({
    super.key,
  });

  @override
  State<SelectAddressBottomSheetWidget> createState() =>
      _SelectAddressBottomSheetWidgetState();
}

class _SelectAddressBottomSheetWidgetState
    extends State<SelectAddressBottomSheetWidget> {
  int? selectedRadio = 0;
  UserAddress? selectedAddress;
  GetUserEntity? userdata;
  bool addressesAdded = false;

  final List<UserAddress> address = [];

  @override
  void initState() {
    if (!addressesAdded) {
      BlocProvider.of<UserBloc>(context).add(const GetUser());
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height * 0.85,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: padding,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            sbox20,
            const BottomSheetIconandTitleWidget(
              icon: Icons.location_on_outlined,
              title: 'Where should Neha arrive?',
            ),
            sbox20,
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: padding, vertical: 0),
              child: Text(
                'Saved addresses',
                style: TextStyle(
                  fontSize: 18,
                  color: colorblack.withOpacity(0.7),
                ),
              ),
            ),
            const Divider(),
            BlocListener<UserBloc, UserState>(
              listener: (context, state) {
                if (state is GetUserSuccess && !addressesAdded) {
                  setState(() {
                    userdata = state.user;
                    address.add(state.user.data!.userAddress!);
                    addressesAdded = true;
                    selectedAddress = address[selectedRadio!];
                    log(state.user.data!.userAddress.toString());
                  });
                }
              },
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: address.length,
                itemBuilder: (BuildContext buildContext, int index) {
                  return ListTile(
                    contentPadding: const EdgeInsets.all(0),
                    leading: Radio(
                      activeColor: colorred,
                      value: index,
                      groupValue: selectedRadio,
                      onChanged: (int? value) {
                        setState(
                          () {
                            selectedRadio = value;
                            selectedAddress = address[index];
                            print(selectedAddress!.addressLine1);
                          },
                        );
                      },
                    ),
                    title: Text(
                      address[index].addressType ?? "",
                    ),
                    subtitle: Text(
                      '${address[index].addressLine1},${address[index].addressLine2}${address[index].city},${address[index].pinCode}',
                    ),
                    trailing: const Icon(Icons.more_vert),
                  );
                },
              ),
            ),
            const Divider(),
            const Divider(),
            GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  isDismissible: false,
                  enableDrag: false,
                  isScrollControlled: true,
                  shape: const RoundedRectangleBorder(
                      side: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  context: context,
                  builder: (context) {
                    return Padding(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context).viewInsets.bottom),
                      child: AddAddressBottomSheetWidget(userdata: userdata!),
                    );
                  },
                ).then((value) {
                  if (value != null) {
                    setState(() {
                      address.add(value);
                    });
                  }
                });
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: padding, vertical: padding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.add,
                      size: 20,
                      color: colorred,
                    ),
                    Text(
                      'Add another address',
                      style: TextStyle(
                          fontSize: 18,
                          color: colorred,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ButtonWidget(
                text: 'Add Date & Time',
                width: width,
                onPressed: () {
                  context.read<AddressCubit>().selectAddress(
                      coupon: selectedAddress!, isAddressAdded: true);
                  Navigator.pop(context, selectedAddress);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
