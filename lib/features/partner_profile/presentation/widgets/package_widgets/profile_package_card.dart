import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'profile_package_details_card.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/get_bucket_entity.dart';
import '../../../../packages_section/presentation/bloc/package_details_bloc/package_details_bloc.dart';

class ProfilePackageCardWidget extends StatelessWidget {
  const ProfilePackageCardWidget({
    super.key,
    required this.isGeuestUser,
    required this.package,
    required this.Ratereview,
    required this.index,
    this.onTap,
  });

  final bool isGeuestUser;
  final SelectedPackage package;
  final PackageReviewAvg Ratereview;
  final int index;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final getIt = GetIt.instance;
    return GestureDetector(
      onTap: onTap,
      child: BlocProvider(
        create: (context) => getIt<PackageDetailsBloc>()
          ..add(GetPackageDetails(package.packageUuid.toString())),
        child: BlocBuilder<PackageDetailsBloc, PackageDetailsState>(
          builder: (context, state) {
            if (state is GetPackageDetailsLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is GetPackageDetailsSuccess) {
              final packageDetails = state.packageDetails.data!.packageDetails;
              debugPrint('hgfhgghfhfhg--');
              return ProfilePackageDetailsCard(
                Ratereview: Ratereview,
                package: packageDetails!,
                isGeuestUser: false,
                index: index,
                onTap: onTap,
              );
            } else {
              return const Center(
                  child: Text('Failed to load package details'));
            }
          },
        ),
      ),
    );
  }
}
