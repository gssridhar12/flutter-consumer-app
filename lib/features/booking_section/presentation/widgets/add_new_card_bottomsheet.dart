import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/text_field_widget.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/widgets/bottom_sheet_title_widget.dart';

class AddNewCardBottomsheet extends StatelessWidget {
  const AddNewCardBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: height * 0.4,
      child: Stack(
        children: [
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: padding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sbox20,
                  const BottomSheetIconandTitleWidget(
                      title: 'Add new card', icon: Icons.credit_card_outlined),
                  sbox,
                  const Padding(
                    padding: EdgeInsets.all(padding),
                    child: TextFieldWidget(
                        labelText: '',
                        suffixIcon: Icons.credit_card_outlined,
                        hintText: 'Card number',
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.number,
                        autofillHints: [AutofillHints.creditCardNumber]),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: width * 0.47,
                        child: const Padding(
                          padding: EdgeInsets.all(padding),
                          child: TextFieldWidget(
                              labelText: '',
                              hintText: 'MM/YY',
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.number,
                              autofillHints: [AutofillHints.creditCardNumber]),
                        ),
                      ),
                      SizedBox(
                        width: width * 0.47,
                        child: const Padding(
                          padding: EdgeInsets.all(padding),
                          child: TextFieldWidget(
                              labelText: '',
                              hintText: 'CVV',
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.number,
                              autofillHints: [AutofillHints.creditCardNumber]),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: true,
                        onChanged: (value) {},
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 0),
                        child: Text('Save card details securely.'),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 20,
            left: 20,
            child: Container(
              margin: const EdgeInsets.all(10),
              width: width,
              decoration: const BoxDecoration(color: colorwhite),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Rs 12,900',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                  ButtonWidget(
                    text: 'Save and proceed',
                    color: colorred,
                    buttonColor: colorwhite,
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
