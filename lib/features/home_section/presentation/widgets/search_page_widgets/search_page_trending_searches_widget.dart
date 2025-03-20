import 'package:flutter/material.dart';

import 'package:flutter_consumer_app/features/home_section/presentation/widgets/search_page_widgets/search_page_chip_widget.dart';

class SearchPageTrendingSearchesWidget extends StatelessWidget {
  const SearchPageTrendingSearchesWidget({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return SearchPageChipWidget(width: width, text: 'lorem ipsum');
      },
    );
    // Column(
    //   children: [
    //     sbox,
    //     Row(
    //       children: [
    //         SearchPageChipWidget(width: width, text: 'lorem ipsum'),
    //         SearchPageChipWidget(width: width, text: 'lorem'),
    //         SearchPageChipWidget(width: width, text: 'lorem lorem'),
    //         SearchPageChipWidget(width: width, text: 'lorem'),
    //       ],
    //     ),
    //     sbox,
    //     Row(
    //       children: [
    //         SearchPageChipWidget(width: width, text: 'lorem'),
    //         SearchPageChipWidget(width: width, text: 'lorem ipsum'),
    //         SearchPageChipWidget(width: width, text: 'lorem lorem'),
    //         SearchPageChipWidget(width: width, text: 'lorem'),
    //       ],
    //     ),
    //   ],
    // );
  }
}
