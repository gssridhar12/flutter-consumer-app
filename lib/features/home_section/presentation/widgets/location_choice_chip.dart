import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/images/images.dart';
import 'package:flutter_consumer_app/shared/widgets/custom_chip_widget.dart';

int tag = 1;
List<String> cityName = [
  'Ahamedbad',
  'Bengaluru',
  'Chandigarh',
  'Chennai',
  'Delhi',
  'Hyderabad',
  'Kolkata',
  'Mumbai',
  'Pune',
];
bool isSelected = true;

class LocationChoiceChip extends StatefulWidget {
  const LocationChoiceChip({super.key, required this.onSelect});

  final Function(String selected) onSelect;

  @override
  State<LocationChoiceChip> createState() => _LocationChoiceChipState();
}

class _LocationChoiceChipState extends State<LocationChoiceChip> {
  int? _value;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    // return ChipsChoice<int>.single(
    //   value: tag,
    //   onChanged: (val) => setState(() => tag = val),
    //   choiceItems: C2Choice.listFrom<int, String>(
    //     source: cityName,
    //     value: (i, v) => i,
    //     label: (i, v) => v,
    //   ),
    //   // verticalDirection: VerticalDirection.down,
    //   direction: Axis.vertical,
    //   choiceBuilder: (item, i) {
    //     return CustomChip(
    //       label: item.label,
    //       width: width * 0.25,
    //       height: width * 0.25,
    //       selected: item.selected,
    //       onSelect: item.select!,
    //     );
    //   },
    // );
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: CityImage.cities.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return CustomChip(
          label: cityName[index],
          isShadow: isSelected,
          width: width * 0.25,
          height: width * 0.25,
          color: colorred.withOpacity(0.2),
          selected: _value == index,
          fontSize: 12,
          onSelect: (isSelected) {
            setState(() {
              _value = isSelected
                  ? index
                  : null; // Store the index if selected, otherwise set to null
              widget.onSelect(cityName[_value!]);
            });
          },
          image: CityImage.cities[index],
        );
      },
    );
  }
}
