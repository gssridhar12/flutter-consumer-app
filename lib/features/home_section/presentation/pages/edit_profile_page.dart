import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/text_field_widget.dart';
import 'package:flutter_consumer_app/features/chat_section/services/firebase_messaging_services.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/update_user_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_user_entity.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/home_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/shared/services/location_services.dart';
import 'package:flutter_consumer_app/shared/validation/textfield_validation.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_container_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/radio_button.dart';
import 'package:flutter_consumer_app/shared/widgets/secondary_appbar_widget.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:flutter_consumer_app/utils/snack_bar.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:sizer/sizer.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({
    super.key,
    required this.userModel,
  });

  final GetUserEntity? userModel;

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  late final GlobalKey<FormState> _formKey;
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final birthdayController = TextEditingController();
  final genderController = TextEditingController();
  final addressPincodeController = TextEditingController();
  final addressLine1Controller = TextEditingController();
  final addressLine2Controller = TextEditingController();
  final addressLandmarkontroller = TextEditingController();
  final addressTownCityController = TextEditingController();
  final addressStateController = TextEditingController();

  final FirebaseMessagingService firebase = FirebaseMessagingService();
  String? fcmToken;
  late DateTime dob;

  @override
  void initState() {
    getToken();

    _formKey = GlobalKey<FormState>();

    firstNameController.text = widget.userModel!.data!.firstName ?? "";
    lastNameController.text = widget.userModel!.data!.lastName ?? "";
    emailController.text = widget.userModel!.data!.email ?? "";
    phoneNumberController.text =
        widget.userModel!.data!.mobileNumber ?? "".toString();
    birthdayController.text = widget.userModel!.data!.dateOfBirth != null
        ? DateFormat('dd/MM/yyyy').format(widget.userModel!.data!.dateOfBirth!)
        : "";
    genderController.text = widget.userModel!.data!.gender ?? "";

    addressPincodeController.text =
        widget.userModel!.data!.userAddress?.pinCode?.toString() ?? "";
    addressLine1Controller.text =
        widget.userModel!.data?.userAddress?.addressLine1 ?? "";
    addressLine2Controller.text =
        widget.userModel!.data?.userAddress?.addressLine2 ?? "";
    addressLandmarkontroller.text =
        widget.userModel!.data?.userAddress?.landmark ?? "";
    addressTownCityController.text =
        widget.userModel!.data?.userAddress?.city ?? "";
    addressStateController.text =
        widget.userModel!.data?.userAddress?.state ?? "";

    dob = widget.userModel!.data!.dateOfBirth!;

    super.initState();
  }

  Future<void> getToken() async {
    String? newToken = await firebase.getDeviceToken();
    setState(() {
      fcmToken = newToken;
    });
  }

  File? _image;
  final picker = ImagePicker();
  Future getImageFromGallery() async {
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    setState(
      () {
        if (pickedFile != null) {
          _image = File(pickedFile.path);
        }
      },
    );
  }

  final String userId = localDb.getString('id')!;

  List<String> gender = ["Male", "Female"];

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final width = MediaQuery.of(context).size.width;

    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        backgroundColor: bggray,
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBarWidgetSecondary(
            text: 'Edit Profile',
          ),
        ),
        body: Form(
          // autovalidateMode: AutovalidateMode.onUserInteraction,
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: padding20),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 18.h,
                        width: 18.h,
                        child: CircleAvatar(
                          backgroundImage: (_image == null
                              ? const AssetImage('assets/images/defaultimg.png')
                              : FileImage(_image!)) as ImageProvider,
                          radius: 50,
                        ),
                      ),
                      Positioned(
                        top: 120,
                        right: 35,
                        left: 35,
                        bottom: 0,
                        child: InkWell(
                          onTap: () async {
                            await getImageFromGallery();
                          },
                          child: Container(
                            width: 10.h,
                            height: 10.h,
                            decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 5,
                                    spreadRadius: 1,
                                    color: colorblack.withOpacity(0.1),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(12),
                                color: colorwhite),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.camera_alt_outlined,
                                  size: 16,
                                  color: colorred,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 4.0),
                                  child: Text(
                                    'Add',
                                    style: TextStyle(color: colorred),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  sbox,
                  CustomContainerWidget(
                    // height: 0.4,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(padding),
                          child: TextFieldWidget(
                            icon: Icons.abc,
                            isSecondaryStyle: true,
                            labelText: 'Email ID',
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.name,
                            autofillHints: const [AutofillHints.email],
                            textEditingController: emailController,
                            isEnabled: widget.userModel!.data!.email!.isNotEmpty
                                ? false
                                : true,
                            validator: (email) {
                              if (!TextfieldValidation.isEmail(email!)) {
                                return 'Enter a valid email';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(padding),
                          child: TextFieldWidget(
                            icon: Icons.phone,
                            onEditingComplete: () =>
                                FocusScope.of(context).nextFocus(),
                            isSecondaryStyle: true,
                            labelText: 'Phone number',
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.number,
                            autofillHints: const [
                              AutofillHints.telephoneNumber
                            ],
                            textEditingController: phoneNumberController,
                            isEnabled:
                                // ignore: unnecessary_null_comparison
                                widget.userModel!.data!.mobileNumber != null
                                    ? false
                                    : true,
                            // initialValue: 'Kia_sen@gmail.com',
                            validator: (phoneNumber) {
                              if (!TextfieldValidation.isPhone(phoneNumber!)) {
                                return 'Enter a valid number';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  sbox20,
                  const HeadingTextWidget(
                      text: 'Personal Details',
                      textColor: colorred,
                      trailingButton: false),
                  sbox20,
                  CustomContainerWidget(
                    // height: 0.8,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(padding),
                          child: TextFieldWidget(
                            icon: Icons.abc,
                            isSecondaryStyle: true,
                            labelText: 'First Name',
                            onEditingComplete: () =>
                                FocusScope.of(context).nextFocus(),
                            textInputAction: TextInputAction.next,
                            textInputType: TextInputType.name,
                            autofillHints: const [AutofillHints.givenName],
                            textEditingController: firstNameController,
                            validator: (value) {
                              if (TextfieldValidation.isEmpty(value)) {
                                return 'Field must not be Empty';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(padding),
                          child: TextFieldWidget(
                            icon: Icons.abc,
                            isSecondaryStyle: true,
                            onEditingComplete: () =>
                                FocusScope.of(context).unfocus(),
                            labelText: 'Last Name',
                            textInputAction: TextInputAction.next,
                            textInputType: TextInputType.name,
                            autofillHints: const [AutofillHints.familyName],
                            textEditingController: lastNameController,
                            validator: (value) {
                              if (TextfieldValidation.isEmpty(value)) {
                                return 'Field must not be Empty';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(padding),
                          child: TextFieldWidget(
                            icon: Icons.calendar_month,
                            isSecondaryStyle: true,
                            onEditingComplete: () =>
                                FocusScope.of(context).nextFocus(),
                            labelText: 'Birthdate (optional)',
                            textInputAction: TextInputAction.next,
                            textInputType: TextInputType.datetime,
                            autofillHints: const [AutofillHints.birthdayDay],
                            textEditingController: birthdayController,
                            readOnly: true,
                            onTap: () async {
                              final DateTime? date = await showDatePicker(
                                  context: context,
                                  initialDate: DateTime.now(),
                                  firstDate: DateTime(2000),
                                  lastDate: DateTime.now()
                                      .add(const Duration(days: 365)));

                              dob = date!;
                              String formattedDate =
                                  DateFormat("yyyy-MM-dd").format(date);
                              // ignore: unnecessary_null_comparison
                              if (formattedDate != null) {
                                birthdayController.text =
                                    formattedDate.toString();
                              } else {
                                return;
                              }
                            },
                          ),
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.all(padding),
                        //   child: TextFieldWidget(
                        //     icon: Icons.person_2_outlined,
                        //     isSecondaryStyle: true,
                        //     labelText: 'Identity',
                        //     onEditingComplete: () =>
                        //         FocusScope.of(context).nextFocus(),
                        //     textInputAction: TextInputAction.next,
                        //     textInputType: TextInputType.name,
                        //     autofillHints: const [AutofillHints.gender],
                        //     textEditingController: genderController,
                        //     validator: (value) {
                        //       if (TextfieldValidation.isEmpty(value)) {
                        //         return 'Field must not be Empty';
                        //       }
                        //       return null;
                        //     },
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: RadioWidget(
                            selectedOption:
                                widget.userModel?.data?.gender ?? "",
                            title: 'Gender',
                            option: gender,
                            onChanged: (value) {
                              genderController.text = value;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  sbox20,
                  const HeadingTextWidget(
                      text: 'Address (optional)',
                      textColor: colorred,
                      trailingButton: false),
                  sbox20,
                  // FutureBuilder(
                  //   future: getUserLocation(),
                  //   builder: (BuildContext context, AsyncSnapshot snapshot) {
                  //     if (snapshot.hasData) {
                  InkWell(
                    onTap: () {
                      getUserLocation().then((value) {
                        addressPincodeController.text = value.postalCode!;
                        addressLine2Controller.text = value.street!;
                        addressTownCityController.text = value.locality!;
                        addressStateController.text = value.administrativeArea!;
                      });
                    },
                    child: const CustomContainerWidget(
                      height: 0.16,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: padding),
                            child: Icon(
                              Icons.location_searching,
                              color: colorred,
                            ),
                          ),
                          Text(
                            'Auto Detect my Location',
                            style: TextStyle(
                                color: colorred,
                                decoration: TextDecoration.underline,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  //     } else if (snapshot.connectionState ==
                  //         ConnectionState.waiting) {
                  //       return const Center(
                  //         child: CircularProgressIndicator(),
                  //       );
                  //     } else {
                  //       Utils.showSnackbar('Location Fetching Failed');
                  //     }
                  //     return const Text('data');
                  //   },
                  // ),
                  // BlocConsumer<LocationBloc, LocationState>(
                  //   builder: (context, state) {
                  //     if (state is GetUserLocationLoading) {
                  //       const Center(child: CircularProgressIndicator());
                  //     }
                  //     return InkWell(
                  //       onTap: () async {
                  //         print('button clicked');
                  //         context
                  //             .read<LocationBloc>()
                  //             .add(const GetUserGeoLocation());
                  //       },
                  //       child: const CustomContainerWidget(
                  //         height: 0.16,
                  //         child: Row(
                  //           children: [
                  //             Padding(
                  //               padding:
                  //                   EdgeInsets.symmetric(horizontal: padding),
                  //               child: Icon(
                  //                 Icons.location_searching,
                  //                 color: colorred,
                  //               ),
                  //             ),
                  //             Text(
                  //               'Auto Detect my Location',
                  //               style: TextStyle(
                  //                   color: colorred,
                  //                   decoration: TextDecoration.underline,
                  //                   fontSize: 16),
                  //             ),
                  //           ],
                  //         ),
                  //       ),
                  //     );
                  //   },
                  //   listener: (context1, state) {
                  //     print('bloc called');
                  //     if (state is GetUserLocationFailed) {
                  //       // Utils.showSnackbar('Login Failed');'

                  //       ScaffoldMessenger.of(context1).showSnackBar(
                  //         const SnackBar(
                  //           content: Text('Location Fetching Failed'),
                  //         ),
                  //       );

                  //       // return const Text('Login failed');
                  //     } else if (state is GetUserLocationSuccess) {
                  //       addressPincodeController.text =
                  //           state.placemark.postalCode!;
                  //       addressLine2Controller.text = state.placemark.street!;
                  //       addressTownCityController.text =
                  //           state.placemark.locality!;
                  //       addressStateController.text =
                  //           state.placemark.administrativeArea!;
                  //     }
                  //   },
                  // ),
                  sbox,
                  CustomContainerWidget(
                    // height: 1.08,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(padding),
                          child: TextFieldWidget(
                            isSecondaryStyle: true,
                            labelText: 'Area Pin code',
                            onEditingComplete: () =>
                                FocusScope.of(context).nextFocus(),
                            textInputAction: TextInputAction.next,
                            textInputType: TextInputType.number,
                            autofillHints: const [AutofillHints.postalAddress],
                            textEditingController: addressPincodeController,
                            validator: (input) {
                              if (!TextfieldValidation.isPincode(input!)) {
                                return 'Enter a valid Pincode';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(padding),
                          child: TextFieldWidget(
                            isSecondaryStyle: true,
                            labelText: 'Address Line 1',
                            onEditingComplete: () =>
                                FocusScope.of(context).nextFocus(),
                            textInputAction: TextInputAction.next,
                            textInputType: TextInputType.streetAddress,
                            autofillHints: const [
                              AutofillHints.streetAddressLine1
                            ],
                            textEditingController: addressLine1Controller,
                            hintText: 'House name,Flat No.',
                            validator: (value) {
                              if (TextfieldValidation.isEmpty(value)) {
                                return 'Field must not be Empty';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(padding),
                          child: TextFieldWidget(
                            isSecondaryStyle: true,
                            labelText: 'Address Line 2',
                            textInputAction: TextInputAction.next,
                            onEditingComplete: () =>
                                FocusScope.of(context).nextFocus(),
                            textInputType: TextInputType.streetAddress,
                            autofillHints: const [
                              AutofillHints.streetAddressLine2
                            ],
                            textEditingController: addressLine2Controller,
                            hintText: 'Street name',
                            validator: (value) {
                              if (TextfieldValidation.isEmpty(value)) {
                                return 'Field must not be Empty';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(padding),
                          child: TextFieldWidget(
                            onEditingComplete: () =>
                                FocusScope.of(context).nextFocus(),
                            isSecondaryStyle: true,
                            labelText: 'Landmark',
                            textInputAction: TextInputAction.next,
                            textInputType: TextInputType.name,
                            autofillHints: const [AutofillHints.name],
                            textEditingController: addressLandmarkontroller,
                            validator: (value) {
                              if (TextfieldValidation.isEmpty(value)) {
                                return 'Field must not be Empty';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(padding),
                          child: TextFieldWidget(
                            isSecondaryStyle: true,
                            labelText: 'Town/City',
                            onEditingComplete: () =>
                                FocusScope.of(context).nextFocus(),
                            textInputAction: TextInputAction.next,
                            textInputType: TextInputType.streetAddress,
                            autofillHints: const [
                              AutofillHints.location,
                              AutofillHints.sublocality
                            ],
                            textEditingController: addressTownCityController,
                            validator: (value) {
                              if (TextfieldValidation.isEmpty(value)) {
                                return 'Field must not be Empty';
                              }
                              return null;
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(padding),
                          child: TextFieldWidget(
                            isSecondaryStyle: true,
                            labelText: 'State',
                            onEditingComplete: () =>
                                FocusScope.of(context).unfocus(),
                            textInputAction: TextInputAction.next,
                            textInputType: TextInputType.streetAddress,
                            autofillHints: const [AutofillHints.countryName],
                            textEditingController: addressStateController,
                            validator: (value) {
                              if (TextfieldValidation.isEmpty(value)) {
                                return 'Field must not be Empty';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  sbox,
                  BlocListener<UserBloc, UserState>(
                    listener: (context, state) {
                      // if (state is UploadProfileImageLoading) {
                      //   // Handle loading state
                      // } else if (state is UploadProfileImageFailed) {
                      //   Utils.showSnackbar('Profile Updation Failed');
                      // } else if (state is UploadProfileImageSuccess) {
                      //   Utils.showSnackbar('Profile Updation Success');
                      //   Navigator.pushAndRemoveUntil(
                      //     context,
                      //     MaterialPageRoute(
                      //       builder: (context) =>
                      //           const HomePage(isGuestUser: false),
                      //     ),
                      //     (route) => false,
                      //   );
                      // } else
                      if (state is UpdateUserSuccess) {
                        // SchedulerBinding.instance.addPostFrameCallback((_) {
                        //   Utils.showSnackbar('User Data Updated');
                        // });
                        Utils.showSnackbar('User Data Updated');
                        AppNavigation.pushRepacementNavigation(
                          context,
                          const HomePage(),
                        );
                      } else if (state is UpdateUserFailed) {
                        SchedulerBinding.instance.addPostFrameCallback((_) {
                          Utils.showSnackbar('User Data Failed');
                        });
                      }
                      if (state is UpdateUserLoading) {
                        const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                    child: ButtonWidget(
                      formKey: _formKey,
                      text: 'Done',
                      width: 100.h,
                      onPressed: () {
                        context.read<UserBloc>().add(
                              UpdateUser(
                                UpdateUserRequest(
                                  userUuid: userId,
                                  fcmToken: [fcmToken!],
                                  fullName:
                                      widget.userModel?.data?.fullName ?? "",
                                  firstName: firstNameController.text,
                                  lastName: lastNameController.text,
                                  email: emailController.text,
                                  mobileNumber: phoneNumberController.text,
                                  dateOfBirth: dob,
                                  updatedOn: DateTime.now(),
                                  gender: genderController.text,
                                  addressUser: AddressUser(
                                    addressType: 'Home',
                                    addressLine1: addressLine1Controller.text,
                                    addressLine2: addressLine2Controller.text,
                                    city: addressTownCityController.text,
                                    state: addressStateController.text,
                                    landmark: addressLandmarkontroller.text,
                                    pinCode: int.parse(
                                        addressPincodeController.text),
                                  ),
                                ),
                              ),
                            );
                      },
                    ),
                  ),
                  sbox
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//  userId: localDb.getString('id')!,
//                               firstName: firstNameController.text,
//                               lastName: lastNameController.text,
//                               email: emailController.text,
//                               mobileNumber: phoneNumberController.text,
//                               date_of_birth: birthdayController.text,
//                               gender: genderController.text,
//                               address_line1: addressLine1Controller.text,
//                               address_line2: addressLine2Controller.text,
//                               city: addressTownCityController.text,
//                               state: addressStateController.text,
//                               pin_code:
//                                   int.parse(addressPincodeController.text),
//                               landmark: addressLandmarkontroller.text,