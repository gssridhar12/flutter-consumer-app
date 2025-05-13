import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/all_partner_bloc/all_partner_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/top_partner_widget/top_partner_widget.dart';

class AllTab extends StatelessWidget {
  const AllTab({super.key, required this.categoryTitle});
  final String categoryTitle;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return CustomScrollView(physics: const BouncingScrollPhysics(), slivers: [
      SliverToBoxAdapter(
        child: BlocBuilder<AllPartnerBloc, AllPartnerBlocState>(
          builder: (context, state) {
            if (state is GetAllProfileFailed) {
              return const Text('somehting workgn');
            } else if (state is GetAllProfileLoading) {
              return const CircularProgressIndicator();
            } else if (state is GetAllProfileSuccess) {
              final data = state.partner.data.profiles
                  .where((element) => element
                      .profile.profileDetails.parentServiceOffered
                      .any((service) => service.contains(categoryTitle)))
                  .toList();
              debugPrint(data.toString());
              return Column(
                children: [
                  ListView.builder(
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: data.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: TopPartnerCardWidget(
                          width: width,
                          entity: data,
                          index: index,
                        ),
                      );
                    },
                  )
                ],
              );
            }
            return const Text('data');
          },
        ),
      ),
    ]);
  }
}
