import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/category_entity.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:sizer/sizer.dart';

class CategoryTileWidget extends StatelessWidget {
  const CategoryTileWidget({
    super.key,
    required this.width,
    this.category,
    this.onTap,
  });

  final double width;
  final ParentCategory? category;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap!(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomImage(
              borderRadius: BorderRadius.circular(30),
              imageUrl: category!.categoryIcon!,
              height: 6.h,
              width: 6.h),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            child: Text(
              category!.parentCategoryName ?? "",
              style: TextStyle(
                  fontSize: 12,
                  color: colorblack.withOpacity(0.5),
                  fontWeight: FontWeight.w400),
            ),
          )
        ],
      ),
    );
  }
}
