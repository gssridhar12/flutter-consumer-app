import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/pages/three_options.dart';
import 'package:flutter_consumer_app/shared/widgets/cached_image.dart';
import 'package:sizer/sizer.dart';

class PartnerTileWidget extends StatelessWidget {
  const PartnerTileWidget({
    super.key,
    required this.isGuestUser,
    this.onTap,
    this.partnerEntity,
    required this.index,
  });
  final bool isGuestUser;
  final dynamic partnerEntity;
  // final TopPartnerEntity? partnerEntity;
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
                padding: const EdgeInsets.only(top: padding - 3),
                child: Text(
                  profile.profileName,
                  style: TextStyle(
                      fontSize: 12,
                      color: colorblack.withOpacity(0.5),
                      fontWeight: FontWeight.w400),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: padding - 3),
                child: Text(
                  profile.profileHeadline,
                  style: const TextStyle(
                      fontSize: 12,
                      color: colorblack,
                      overflow: TextOverflow.ellipsis,
                      fontWeight: FontWeight.w600),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: padding),
                child: !isGuestUser
                    ? Row(
                        children: [
                          Text(
                            '₹ ${profile.unlockCost} ',
                            style: const TextStyle(
                                fontSize: 16,
                                color: colorblack,
                                fontWeight: FontWeight.w400),
                          ),
                          Expanded(
                            child: Text(
                              'onwards',
                              style: TextStyle(
                                  fontSize: 12,
                                  overflow: TextOverflow.ellipsis,
                                  color: colorblack.withOpacity(0.5),
                                  fontWeight: FontWeight.w400),
                            ),
                          ),
                        ],
                      )
                    : InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ThreeOptionsPage(),
                              ));
                        },
                        child: Text(
                          'ViewPrice',
                          style: TextStyle(
                              fontSize: 16,
                              color: colorblack.withOpacity(0.7),
                              decoration: TextDecoration.underline),
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
