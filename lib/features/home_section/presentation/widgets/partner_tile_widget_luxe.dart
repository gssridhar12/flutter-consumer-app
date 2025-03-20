import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/pages/three_options.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';
import 'package:sizer/sizer.dart';

class PartnerTileLuxeWidget extends StatelessWidget {
  const PartnerTileLuxeWidget({
    super.key,
    required this.isGuestUser,
    this.onTap,
    this.partnerEntity,
    required this.index,
  });
  final bool isGuestUser;
  final dynamic partnerEntity;
  final void Function()? onTap;
  final int index;

  @override
  Widget build(BuildContext context) {
    final profile = partnerEntity!.data.profiles[index].profile.profileDetails;
    // log(profile.toString());
    return GestureDetector(
      onTap: () {
        onTap!();
      },
      child: Padding(
        padding: const EdgeInsets.only(right: padding - 5),
        child: SizedBox(
          // height: width * 0.5,
          width: 35.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient:
                        const LinearGradient(colors: [colorred, colorpink]),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: AspectRatio(
                        aspectRatio: 3 / 4,
                        child: CustomImage(
                          imageUrl: profile.profileCover,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: padding - 3,
                        left: 5,
                      ),
                      child: Text(
                        profile.profileName,
                        style: TextStyle(
                            fontSize: 12,
                            color: colorblack.withOpacity(0.5),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: padding - 3, left: 5, bottom: 5),
                      child: Text(
                        profile.profileHeadline,
                        style: const TextStyle(
                            fontSize: 12,
                            color: colorblack,
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: padding),
                child: !isGuestUser
                    ? GradientText(
                        'LUXE partner',
                        style: const TextStyle(
                          fontSize: 16,
                        ),
                        colors: const [colorred, colorpink],
                      )
                    : InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ThreeOptionsPage(),
                            ),
                          );
                        },
                        child: GradientText(
                          'View Price',
                          style: const TextStyle(
                            fontSize: 11.0,
                          ),
                          colors: const [colorred, colorpink],
                        ),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
