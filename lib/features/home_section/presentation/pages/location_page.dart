import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/cubit/cubit/location_cubit.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/AppbarWedget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/heading_text_widget.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/location_choice_chip.dart';
import 'package:flutter_consumer_app/shared/widgets/colored_safearea.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_container_widget.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key, this.fullname});
  final String? fullname;

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  void initState() {
    context.read<LocationCubit>().getLocation();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ColoredSafeArea(
      color: bggray,
      child: Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBarWidgetPrimary(
            text: 'Location',
          ),
        ),
        body: BlocBuilder<LocationCubit, LocationState>(
          builder: (context, state) {
            if (state.isLoading) {
              const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.hasError) {
              const Text('Failed to fetch location');
            }
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: padding20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sbox20,
                    const HeadingTextWidget(
                      text: 'Current Location',
                      textColor: colorred,
                      trailingButton: false,
                    ),
                    sbox,
                    Row(
                      children: [
                        const Icon(Icons.location_on_outlined),
                        Text(
                          state.location,
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                    sbox20,
                    const HeadingTextWidget(
                      text: 'Change Location',
                      textColor: colorred,
                      trailingButton: false,
                    ),
                    sbox20,
                    CustomContainerWidget(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 14.0),
                        child: DropdownButton<String>(
                          underline: const SizedBox.shrink(),
                          hint: const Text('Select your City'),
                          items: cityName.map((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                          onChanged: (city) {
                            if (city != null) {
                              context
                                  .read<LocationCubit>()
                                  .updateLocation(city);
                            }
                          },
                        ),
                      ),
                    ),
                    sbox,
                    CustomContainerWidget(
                      onTap: () {
                        context.read<LocationCubit>().fetchLocationManually();
                      },
                      height: 0.16,
                      child: const Row(
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
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    sbox20,
                    const HeadingTextWidget(
                      text: 'Popular Cities',
                      textColor: colorred,
                      trailingButton: false,
                    ),
                    sbox,
                    LocationChoiceChip(
                      onSelect: (selected) {
                        context.read<LocationCubit>().updateLocation(selected);
                      },
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
