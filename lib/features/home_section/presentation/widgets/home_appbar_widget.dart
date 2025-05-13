import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/core/colors/colors.dart';
import 'package:flutter_consumer_app/core/constant/constant.dart';
import 'package:flutter_consumer_app/core/icons/app_icons_icons.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/pages/chat_home.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/cubit/cubit/location_cubit.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/location_page.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/pages/notifications_bottomsheet.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:flutter_consumer_app/utils/navigation.dart';
import 'package:flutter_initicon/flutter_initicon.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

//home appbar that can be used in home page of the app
class HomeAppBarWidget extends StatefulWidget {
  final Icon? icons;
  final bool? leadingIcon;
  final GlobalKey<ScaffoldState> scaffoldKey;

  const HomeAppBarWidget({
    super.key,
    this.icons,
    this.leadingIcon,
    required this.scaffoldKey,
  });

  @override
  State<HomeAppBarWidget> createState() => _HomeAppBarWidgetState();
}

class _HomeAppBarWidgetState extends State<HomeAppBarWidget> {
  final bool? isGuestUser = localDb.getBool('isGuestUser') ?? true;
  final String fullName = localDb.getString('fullName') ?? "Pawrent";

  @override
  void initState() {
    super.initState();
  }

  @override
  void didChangeDependencies() {
    context.read<LocationCubit>().getLocation();
    super.didChangeDependencies();
  }
  // Future<String> _getLocation() async {
  //   if (await _hasLocationPermission()) {
  //     Placemark placemark = await getUserLocation();
  //     await saveLocationToPreferences(placemark);

  //     return placemark.locality ?? 'Unknown';
  //   } else {
  //     return await loadLocationFromPreferences();
  //   }
  // }

  // Future<void> loadInitialLocation() async {
  //   String initialLocation = await _getLocation();
  //   locationNotifier.value = initialLocation;
  // }

  // Future<String> loadLocationFromPreferences() async {
  //   log('data got as ${localDb.getString('locality')}');

  //   return localDb.getString('locality') ?? 'Unknown';
  // }

  // Future<void> saveLocationToPreferences(Placemark placemark) async {
  //   log('data set as  lcoality');

  //   await localDb.setString('locality', placemark.locality ?? 'Unknown');
  // }

  // Future<bool> _hasLocationPermission() async {
  //   bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  //   if (!serviceEnabled) {
  //     return false;
  //   }

  //   LocationPermission permission = await Geolocator.checkPermission();
  //   log(permission.toString());
  //   return permission == LocationPermission.always ||
  //       permission == LocationPermission.whileInUse;
  // }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              try {
                widget.scaffoldKey.currentState!.openDrawer();
              } catch (e) {
                debugPrint(e.toString());
              }
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircularPercentIndicator(
                radius: 22.0,
                lineWidth: 9.0,
                animation: true,
                percent: isGuestUser! ? 0 : 0.5,
                center: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Initicon(
                    text: fullName,
                  ),
                ),
                progressColor: colorred,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              AppNavigation.pushNavigation(context, const LocationPage());
            },
            child: BlocBuilder<LocationCubit, LocationState>(
              builder: (context, state) {
                if (state.isLoading) {
                  return const SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(AppIcons.location_on, size: 20),
                        Text(
                          'Loading',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400),
                        ),
                        Icon(AppIcons.navigate_next, size: 20),
                      ],
                    ),
                  );
                }
                if (state.hasError ||
                    state.location == 'Unknown' ||
                    state.location == 'No data') {
                  return const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(Icons.location_on, size: 20),
                      Text('Unknown',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w400)),
                      Icon(AppIcons.toggle_on),
                    ],
                  );
                }
                return Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const Icon(Icons.location_on, size: 20),
                    SizedBox(
                      child: Text(
                        overflow: TextOverflow.ellipsis,
                        state.location,
                        style: const TextStyle(
                            fontSize: 16,
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    const Icon(AppIcons.navigate_next, size: 20),
                  ],
                );
              },
            ),
          ),
          const Spacer(),
          GestureDetector(
            child: IconButton(
              color: !isGuestUser! ? colorblack : colorgrey,
              onPressed: () {
                !isGuestUser!
                    ? showModalBottomSheet(
                        isScrollControlled: true,
                        shape: const RoundedRectangleBorder(
                          side: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return const NotificationsBottomSheetWidget();
                        },
                      )
                    : null;
              },
              icon: const Icon(AppIcons.notifications),
            ),
          ),
          GestureDetector(
            child: IconButton(
              onPressed: () {
                !isGuestUser!
                    ? AppNavigation.pushNavigation(
                        context, const ChatHomePage())
                    : null;
              },
              icon: const Icon(AppIcons.mark_chat_read),
              color: !isGuestUser! ? colorblack : colorgrey,
            ),
          )
        ],
      ),
    );
  }
}
