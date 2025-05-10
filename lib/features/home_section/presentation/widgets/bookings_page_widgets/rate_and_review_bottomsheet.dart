import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/cubit/button_cubit/button_cubit.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/cubit/button_cubit/button_state.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/widgets/button_widget.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_package_review_request.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/bookings_page_widgets/rating_slider.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/option_selection_widget.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/utils/extensions/padding_extension.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:flutter_consumer_app/utils/snack_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class RateAndReviewBottomSheet extends StatefulWidget {
  const RateAndReviewBottomSheet({super.key, required this.packageUuid});

  final String packageUuid;

  @override
  State<RateAndReviewBottomSheet> createState() =>
      _RateAndReviewBottomSheetState();
}

class _RateAndReviewBottomSheetState extends State<RateAndReviewBottomSheet> {
  final TextEditingController _controller = TextEditingController();

  final userId = localDb.getString('id');

  int maxLength = 250;
  bool option = false;
  final List<XFile> _images = [];

  Future<void> _pickImages() async {
    final ImagePicker picker = ImagePicker();
    final List<XFile> selectedImages = await picker.pickMultiImage();

    setState(() {
      if (_images.length + selectedImages.length > 5) {
        
        int availableSlots = 5 - _images.length;
        _images.addAll(selectedImages.take(availableSlots));
      } else {
        _images.addAll(selectedImages);
      }
    });
  }

  Widget _buildGridView() {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: _images.length < 5 ? _images.length + 1 : 5,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 4.0,
        mainAxisSpacing: 4.0,
      ),
      itemBuilder: (BuildContext context, int index) {
        if (index == _images.length && _images.length < 5) {
        
          return GestureDetector(
            onTap: _pickImages,
            child: Container(
              color: Colors.grey.shade300,
              child: const Center(
                child: Icon(
                  Icons.add,
                  size: 50,
                  color: Colors.grey,
                ),
              ),
            ),
          );
        }
        return Stack(
          children: [
            Image.file(
              File(_images[index].path),
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Positioned(
              top: 0,
              right: 0,
              child: IconButton(
                icon: const Icon(Icons.close, color: Colors.red),
                onPressed: () {
                  setState(() {
                    _images.removeAt(index);
                  });
                },
              ),
            ),
          ],
        );
      },
    );
  }

  double partnerReview = 0;
  double serviecAsDescribed = 0;
  double wouldRecomend = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 700.h,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              width: width,
              height: height * 0.07,
              decoration: const BoxDecoration(
                  color: colorgrey,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'How would you rate Neha’s service ?',
                    style: TextStyle(
                      fontSize: 18,
                      color: colorblack.withOpacity(0.7),
                    ),
                  ).paddingAll(10),
                  GestureDetector(
                      onTap: () {
                        AppNavigation.popNavigation(context);
                      },
                      child: const Icon(Icons.close).paddingAll(10))
                ],
              ),
            ),
            CustomRatingSlider(
              title: 'Partner communication',
              initialRating: 0,
              onRatingUpdate: (value) {
                setState(() {
                  partnerReview = value;
                });
              },
            ).paddingAll(10),
            CustomRatingSlider(
              title: 'Service as described',
              initialRating: 0,
              onRatingUpdate: (value) {
                setState(() {
                  serviecAsDescribed = value;
                });
              },
            ).paddingAll(10),
            CustomRatingSlider(
              title: 'Would Recommend',
              initialRating: 0,
              onRatingUpdate: (value) {
                setState(() {
                  wouldRecomend = value;
                });
              },
            ).paddingAll(10),
            Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Write a review',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ).paddingSymmetric(horizontal: 15, vertical: 10)),
            Container(
              width: width,
              height: height * 0.15,
              decoration: const BoxDecoration(color: colorwhite),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  TextField(
                    controller: _controller,
                    style: const TextStyle(height: 1),
                    maxLines:
                        null, // Set maxLines to null for multi-line support
                    expands:
                        true, // Allow the TextField to expand to fill available space
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    onChanged: (value) {
                      if (value.length > maxLength) {
                        _controller.text = value.substring(0, maxLength);
                        _controller.selection =
                            TextSelection.collapsed(offset: maxLength);
                      }
                      setState(() {});
                    },
                  ),
                  Container(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${_controller.text.length}/$maxLength',
                      style: const TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ).paddingAll(10),
            Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  'Add a media',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ).paddingSymmetric(horizontal: 15, vertical: 10)),
            GestureDetector(
              onTap: _images.isEmpty ? _pickImages : null,
              child: Container(
                alignment: Alignment.topCenter,
                width: width,
                height: _images.isNotEmpty ? height * 0.25 : height * 0.2,
                decoration: BoxDecoration(
                  border:
                      Border.all(style: BorderStyle.solid, color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: _images.isEmpty
                      ? CircleAvatar(
                          backgroundColor: Colors.grey.shade300,
                          radius: 20,
                          child: Icon(
                            Icons.add_a_photo,
                            color: Colors.grey.shade600,
                            size: 20,
                          ),
                        )
                      : SizedBox(
                          child: _buildGridView(),
                        ),
                ),
              ),
            ).paddingAll(10),
            OptionSelectionWidget(
              text: 'Register a complaint against the Partner?',
              optionNumber: option,
              onChanged: (check) {
                check = !check;
              },
            ),
            BlocListener<UserBloc, UserState>(
              listener: (context, state) {
                if (state is AddPackageReviewLoading) {
                  context.read<ButtonCubit>().setLoading(ButtonStatus.loading);
                } else if (state is AddPackageReviewFailed) {
                  context.read<ButtonCubit>().setLoading(ButtonStatus.error);
                } else {
                  context.read<ButtonCubit>().setLoading(ButtonStatus.idle);
                  Navigator.pop(context);

                  Utils.showSnackbar("Succesfully added review");
                }
              },
              child: BlocBuilder<ButtonCubit, ButtonState>(
                builder: (context, state) {
                  return ButtonWidget(
                    buttonStatus: state.buttonStatus,
                    text: 'Submit',
                    width: width,
                    onPressed: () {
                      context.read<UserBloc>().add(AddPackageReview(
                          AddPackageReviewRequest(
                              media: [],
                              communication: 0,
                              packageUuid: widget.packageUuid,
                              partnerLevel: 0,
                              recommended: wouldRecomend,
                              review: _controller.text,
                              serviceDescribed: serviecAsDescribed,
                              userUuid: userId,
                              source: "APP")));
                    },
                  );
                },
              ),
            ).paddingAll(10)
          ],
        ),
      ),
    );
  }
}
