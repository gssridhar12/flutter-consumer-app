import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/utils/extensions/padding_extension.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingSlider extends StatefulWidget {
  final String title;
  final double initialRating;
  final ValueChanged<double> onRatingUpdate;
  final Color activeColor;
  final Color inactiveColor;
  final Color starColor;
  final Color textColor;

  const CustomRatingSlider({
    Key? key,
    required this.title,
    required this.initialRating,
    required this.onRatingUpdate,
    this.activeColor = Colors.red,
    this.inactiveColor = Colors.grey,
    this.starColor = Colors.red,
    this.textColor = Colors.black,
  }) : super(key: key);

  @override
  _CustomRatingSliderState createState() => _CustomRatingSliderState();
}

class _CustomRatingSliderState extends State<CustomRatingSlider> {
  late double _rating;

  @override
  void initState() {
    super.initState();
    _rating = widget.initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: colorwhite,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 8.0),
          Row(
            children: [
              Expanded(
                child: RatingBar.builder(
                  initialRating: _rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 10),
                  itemBuilder: (context, _) => Icon(
                    Icons.star_rounded,
                    color: widget.starColor,
                  ),
                  onRatingUpdate: (rating) {
                    setState(() {
                      _rating = rating;
                    });
                    widget.onRatingUpdate(rating);
                  },
                ),
              ),
              const SizedBox(width: 8.0),
            ],
          ),
          const SizedBox(height: 8.0),
          Text(
            widget.title,
            style: TextStyle(
              color: widget.textColor,
              fontSize: 14,
            ),
          ).paddingSymmetric(horizontal: 15, vertical: 5),
          const SizedBox(height: 8.0),
        ],
      ),
    );
  }
}
