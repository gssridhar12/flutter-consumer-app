import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/text_field_widget.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_lead_request.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/become_partner_bloc/become_partner_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/home_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/AppbarWedget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';

import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_container_widget.dart';
import 'package:flutter_consumer_app/shared/widgets/radio_button.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:flutter_consumer_app/utils/snack_bar.dart';
import 'package:intl/intl.dart';

class BecomePartnerFormPage extends StatefulWidget {
  const BecomePartnerFormPage({super.key, this.fullname});
  final String? fullname;

  @override
  State<BecomePartnerFormPage> createState() => _BecomePartnerFormPageState();
}

class _BecomePartnerFormPageState extends State<BecomePartnerFormPage> {
  TextEditingController firstNameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();

  TextEditingController identityController = TextEditingController();

  TextEditingController emailController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController altranatePhoneNumberController =
      TextEditingController();

  TextEditingController countryController = TextEditingController();

  TextEditingController stateController = TextEditingController();

  TextEditingController cityController = TextEditingController();

  TextEditingController pincodeController = TextEditingController();

  TextEditingController educationController = TextEditingController();

  TextEditingController serviceOfferedController = TextEditingController();
  TextEditingController experienceController = TextEditingController();
  TextEditingController salutationController = TextEditingController();
  TextEditingController notesController = TextEditingController();

  List<String> gender = ["Male", "Female"];
  List<String> option = ["Yes", "No"];
  List<String> salutation = ["Mr.", "Mrs."];

  late DateTime dateTime = DateTime(0000);

  // TextEditingController cityController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBarWidgetPrimary(
            text: 'Great, lets get you on board.',
          ),
        ),
        body: BlocListener<BecomePartnerBloc, BecomePartnerState>(
          listener: (context, state) {
            if (state is AddLeadLoading) {
              SizedBox(
                height: width * 0.72,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            } else if (state is AddLeadFailed) {
              Utils.showSnackbar('Registration was Unsuccessfull');
              const Text('something went wrong');
            }
            if (state is AddLeadSuccess) {
              if (state.partner.successStatus == true) {
                Utils.showSnackbar('Registration Successfull');
                AppNavigation.pushNavigation(
                    context, const HomePage());
              }
            }
          },
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: padding20),
              child: Column(
                children: [
                  sbox20,
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: HeadingTextWidget(
                        text: 'Tell us about yourself',
                        trailingButton: false,
                        textColor: colorred),
                  ),
                  sbox20,
                  TextFieldWidget(
                    textEditingController: firstNameController,
                    labelText: 'First Name',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                    autofillHints: const [AutofillHints.name],
                    isSecondaryStyle: true,
                    icon: Icons.badge_outlined,
                  ),
                  sbox,
                  sbox,
                  TextFieldWidget(
                    textEditingController: lastNameController,
                    labelText: 'Last Name',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                    autofillHints: const [AutofillHints.name],
                    isSecondaryStyle: true,
                    icon: Icons.badge_outlined,
                  ),
                  sbox,
                  RadioWidget(
                    title: 'Salutation',
                    option: salutation,
                    onChanged: (value) {
                      salutationController.text = value;
                    },
                  ),
                  sbox,
                  Padding(
                    padding: const EdgeInsets.all(padding),
                    child: TextFieldWidget(
                      icon: Icons.calendar_month,
                      isSecondaryStyle: true,
                      labelText: 'Date of Birth',
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.datetime,
                      autofillHints: const [AutofillHints.birthdayDay],
                      textEditingController: dateController,
                      readOnly: true,
                      onTap: () async {
                        final DateTime? date = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(1980),
                            lastDate:
                                DateTime.now().add(const Duration(days: 365)));
                        String formattedDate =
                            DateFormat("yyyy-MM-dd").format(date!);
                        // ignore: unnecessary_null_comparison
                        if (formattedDate != null) {
                          dateController.text = formattedDate.toString();
                        } else {
                          return;
                        }
                      },
                    ),
                  ),
                  sbox,
                  RadioWidget(
                    title: 'Identity',
                    option: gender,
                    onChanged: (value) {
                      identityController.text = value;
                    },
                  ),
                  sbox20,
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: HeadingTextWidget(
                        text: 'Help us get in touch with you',
                        trailingButton: false,
                        textColor: colorred),
                  ),
                  sbox20,
                  TextFieldWidget(
                    textEditingController: emailController,
                    labelText: 'Email ID',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                    autofillHints: const [AutofillHints.name],
                    isSecondaryStyle: true,
                    icon: Icons.mail,
                  ),
                  sbox,
                  TextFieldWidget(
                    textEditingController: phoneNumberController,
                    labelText: 'Phone Number',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                    autofillHints: const [AutofillHints.name],
                    isSecondaryStyle: true,
                    icon: Icons.call,
                  ),
                  TextFieldWidget(
                    textEditingController: altranatePhoneNumberController,
                    labelText: 'Alternate Phone Number',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                    autofillHints: const [AutofillHints.name],
                    isSecondaryStyle: true,
                    icon: Icons.call,
                  ),
                  sbox20,
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: HeadingTextWidget(
                        text: 'Where are you from?',
                        trailingButton: false,
                        textColor: colorred),
                  ),
                  sbox20,
                  GestureDetector(
                    onTap: () async {},
                    child: const CustomContainerWidget(
                      height: 0.16,
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: padding),
                            child: Icon(
                              Icons.location_searching,
                              color: Colors.black38,
                            ),
                          ),
                          Text(
                            'Auto Detect my Location',
                            style: TextStyle(
                                color: Colors.black87,
                                decoration: TextDecoration.underline,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  ),
                  sbox20,
                  TextFieldWidget(
                    textEditingController: countryController,
                    labelText: 'Country',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                    autofillHints: const [AutofillHints.name],
                    isSecondaryStyle: true,
                  ),
                  sbox,
                  TextFieldWidget(
                    textEditingController: stateController,
                    labelText: 'State',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                    autofillHints: const [AutofillHints.name],
                    isSecondaryStyle: true,
                  ),
                  TextFieldWidget(
                    textEditingController: cityController,
                    labelText: 'City',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                    autofillHints: const [AutofillHints.name],
                    isSecondaryStyle: true,
                  ),
                  sbox,
                  TextFieldWidget(
                    textEditingController: pincodeController,
                    labelText: 'Pincode',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                    autofillHints: const [AutofillHints.name],
                    isSecondaryStyle: true,
                  ),
                  sbox20,
                  const Padding(
                    padding: EdgeInsets.only(left: 12),
                    child: HeadingTextWidget(
                        text: 'Professional Details',
                        trailingButton: false,
                        textColor: colorred),
                  ),
                  sbox,
                  TextFieldWidget(
                    textEditingController: educationController,
                    labelText: 'Education',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                    autofillHints: const [AutofillHints.name],
                    isSecondaryStyle: true,
                    icon: Icons.badge_outlined,
                  ),
                  sbox,
                  TextFieldWidget(
                    textEditingController: serviceOfferedController,
                    labelText: 'What service do you want to offer on Woofurs?',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                    autofillHints: const [AutofillHints.name],
                    isSecondaryStyle: true,
                    icon: Icons.badge_outlined,
                  ),
                  TextFieldWidget(
                    textEditingController: notesController,
                    labelText: 'Notes',
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.name,
                    autofillHints: const [AutofillHints.name],
                    isSecondaryStyle: true,
                    icon: Icons.badge_outlined,
                  ),
                  sbox,
                  RadioWidget(
                    title:
                        'Do you have prior professional experience in this service? ',
                    option: option,
                    onChanged: (value) {
                      identityController.text = value;
                    },
                  ),
                  sbox20,
                  sbox20,
                  ButtonWidget(
                    onPressed: () {
                      context.read<BecomePartnerBloc>().add(AddLeadEvent(
                          addLeadRequest: AddLeadRequest(
                              salutation: salutationController.text,
                              firstName: firstNameController.text,
                              lastName: lastNameController.text,
                              contactNumber: phoneNumberController.text,
                              alternateContactNumber:
                                  altranatePhoneNumberController.text,
                              dateOfBirth: dateTime,
                              gender: identityController.text,
                              emailAddress: emailController.text,
                              leadSource: 'app',
                              country: countryController.text,
                              state: stateController.text,
                              city: cityController.text,
                              pinCode: int.parse(pincodeController.text),
                              eduction: educationController.text,
                              serviceOffered: [serviceOfferedController.text],
                              professionalExperience:
                                  experienceController.text == 'true'
                                      ? true
                                      : false,
                              termsAndConditions: true,
                              leadStatus: 'not Interested',
                              leadStage: 'Introduction',
                              leadOwner: '',
                              leadAssignedTo: '',
                              notes: notesController.text)));
                    },
                    text: 'Done',
                    width: width,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
