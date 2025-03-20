import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/text_field_widget.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/update_user_request.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/services/location_services.dart';
import 'package:flutter_consumer_app/shared/validation/textfield_validation.dart';
import 'package:flutter_consumer_app/utils/snack_bar.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../home_section/domain/entities/response/get_user_entity.dart';

class AddAddressBottomSheetWidget extends StatefulWidget {
  const AddAddressBottomSheetWidget({
    super.key, required this.userdata,
  });
  final GetUserEntity  userdata;

  @override
  State<AddAddressBottomSheetWidget> createState() =>
      _AddAddressBottomSheetWidgetState();
}

class _AddAddressBottomSheetWidgetState
    extends State<AddAddressBottomSheetWidget> {
  final formKey = GlobalKey<FormState>();
    final userId = localDb.getString('id');

  late GoogleMapController mapController;
  late LatLng userLocation = const LatLng(-4.325, 15.322222);

  final addressline1 = TextEditingController();
  final addressline2 = TextEditingController();
  final pincode = TextEditingController();
  final cityController = TextEditingController();
  final stateController = TextEditingController();
  final landmarkController = TextEditingController();
  final saveAsController = TextEditingController();

  UserAddress address = UserAddress(
      addressLine1: '',
      addressLine2: '',
      addressType: '',
      city: '',
      landmark: '',
      pinCode: 0,
      state: '');

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  void initState() {
    determinePosition().then((value) {
      userLocation = LatLng(value.latitude, value.longitude);
      mapController.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: userLocation, zoom: 14),
      ));
    }).catchError((error) {
      print(error);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: height * 0.85,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.35,
              width: width,
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18)),
                child: Stack(
                  children: [
                    GoogleMap(
                      mapType: MapType.normal,
                      myLocationButtonEnabled: true,
                      myLocationEnabled: true,
                      zoomGesturesEnabled: true,
                      buildingsEnabled: true,
                      cameraTargetBounds: CameraTargetBounds.unbounded,
                      compassEnabled: true,
                      indoorViewEnabled: false,
                      mapToolbarEnabled: true,
                      zoomControlsEnabled: true,
                      minMaxZoomPreference: MinMaxZoomPreference.unbounded,
                      rotateGesturesEnabled: true,
                      scrollGesturesEnabled: true,
                      tiltGesturesEnabled: false,
                      trafficEnabled: false,
                      onCameraMove: (CameraPosition newPosition) {
                        if (userLocation != newPosition) {
                          userLocation = newPosition.target;
                        }
                        print(userLocation);
                      },
                      onCameraIdle: () {
                        getAddressFromLatLong(userLocation).then((value) async {
                          setState(() {
                            address = UserAddress(
                                addressLine1: value.name!,
                                addressLine2:
                                    '${value.locality!} ${value.subLocality!},${value.administrativeArea!}, ${value.postalCode!}, ${value.country!}',
                                landmark: '',
                                addressType: '',
                                city: value.administrativeArea!,
                                pinCode: int.parse(value.postalCode!),
                                state: value.country!);
                          });
                          // await mapController.animateCamera(
                          //   CameraUpdate.newCameraPosition(
                          //     CameraPosition(target: userLocation, zoom: 14),
                          //   ),
                          // );
                          addressline1.text = value.street!;
                          addressline2.text = ' ${value.subLocality!}';
                          pincode.text = value.postalCode!;
                          cityController.text = value.administrativeArea!;
                          stateController.text = value.administrativeArea!;
                          pincode.text = value.postalCode!;
                        }).onError((error, stackTrace) {
                          log(error.toString());
                        });
                      },
                      onMapCreated: _onMapCreated,
                      initialCameraPosition: CameraPosition(
                        target: userLocation,
                        zoom: 14,
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'assets/images/pick_location.png',
                        height: 30,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            sbox,
            Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              key: formKey,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: padding20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(address.addressLine1??"",
                              style: const TextStyle(fontSize: 18)),
                          sbox,
                          Text(
                            address.addressLine2??"",
                            style: TextStyle(
                              fontSize: 14,
                              color: colorblack.withOpacity(0.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    sbox20,
                    TextFieldWidget(
                        labelText: 'Address Line 1',
                        validator: (p0) {
                          if (TextfieldValidation.isEmpty(p0)) {
                            return 'Enter a valid Input';
                          }
                          return null;
                        },
                        textEditingController: addressline1,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.streetAddress,
                        autofillHints: const [AutofillHints.addressCity]),
                    sbox20,

                    TextFieldWidget(
                        labelText: 'Address Line 2',
                        validator: (p0) {
                          if (TextfieldValidation.isEmpty(p0)) {
                            return 'Enter a valid Input';
                          }
                          return null;
                        },
                        textEditingController: addressline2,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.streetAddress,
                        autofillHints: const [AutofillHints.addressCity]),
                    sbox20,

                    TextFieldWidget(
                        labelText: 'City',
                        validator: (p0) {
                          if (TextfieldValidation.isEmpty(p0)) {
                            return 'Enter a valid Input';
                          }
                          return null;
                        },
                        textEditingController: cityController,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.streetAddress,
                        autofillHints: const [AutofillHints.addressCity]),
                    sbox20,

                    TextFieldWidget(
                        labelText: 'Pincode',
                        validator: (p0) {
                          if (TextfieldValidation.isEmpty(p0)) {
                            return 'Enter a valid Input';
                          }
                          return null;
                        },
                        textEditingController: pincode,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.streetAddress,
                        autofillHints: const [AutofillHints.addressCity]),
                    sbox20,

                    TextFieldWidget(
                        labelText: 'State',
                        validator: (p0) {
                          if (TextfieldValidation.isEmpty(p0)) {
                            return 'Enter a valid Input';
                          }
                          return null;
                        },
                        textEditingController: stateController,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.streetAddress,
                        autofillHints: const [AutofillHints.addressCity]),

                    sbox,
                    TextFieldWidget(
                        labelText: 'Landmark (Optional)',
                        textEditingController: landmarkController,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.streetAddress,
                        autofillHints: const [AutofillHints.addressCity]),
                    sbox,
                    TextFieldWidget(
                        labelText: 'Save as',
                        hintText: 'Eg home, work, Event Location etc',
                        validator: (p0) {
                          if (TextfieldValidation.isEmpty(p0)) {
                            return 'Enter a valid Input';
                          }
                          return null;
                        },
                        textEditingController: saveAsController,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.streetAddress,
                        autofillHints: const [AutofillHints.addressCity]),
                    // const Spacer(),
                    sbox,
                    BlocListener<UserBloc, UserState>(
                      listener: (context, state) {
                        if (state is UpdateUserSuccess) {
                          Utils.showSnackbar('Address Added Successfully');
                        } else if (state is UpdateUserFailed) {
                          Utils.showSnackbar('Address Added Failed');
                        }
                      },
                      child: ButtonWidget(
                        formKey: formKey,
                        text: 'Save and Add Date & Time',
                        width: width,
                        onPressed: () {
                          BlocProvider.of<UserBloc>(context).add(UpdateUser(
                              UpdateUserRequest(
                                  userUuid: userId??'',
                                  updatedOn: DateTime.now(),
                                  email: widget.userdata.data!.email??"",
                                  firstName: widget.userdata.data!.firstName??"",
                                  fullName: widget.userdata.data!.fullName??"",
                                  gender: widget.userdata.data!.gender??"",
                                  lastName: widget.userdata.data!.lastName??"",
                                  mobileNumber: widget.userdata.data!.mobileNumber??"",
                                  password: widget.userdata.data!.password??"",
                                  patronLevel: widget.userdata.data!.patronLevel??0,
                                  profileImage: widget.userdata.data!.profileImage??"",
                                  fcmToken: widget.userdata.data!.fcmToken,
                                  dateOfBirth:widget.userdata.data!.dateOfBirth,
                                  createdOn: widget.userdata.data!.createdOn,
                                  addressUser: AddressUser(
                                      addressType: saveAsController.text,
                                      addressLine1: addressline1.text,
                                      addressLine2: addressline2.text,
                                      city: cityController.text,
                                      state: stateController.text,
                                      landmark: landmarkController.text,
                                      pinCode: int.parse(pincode.text)))));
                          Navigator.pop(
                              context,
                              UserAddress(
                                  addressType: saveAsController.text,
                                  addressLine1: addressline1.text,
                                  addressLine2: addressline2.text,
                                  city: cityController.text,
                                  state: stateController.text,
                                  landmark: landmarkController.text,
                                  pinCode: int.parse(pincode.text)));
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
