import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/config/firebase_options.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/bloc/auth_bloc.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/cubit/button_cubit/button_cubit.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/add_booking_bloc/add_booking_bloc.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/add_order_bloc/add_order_bloc.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/coupon_bloc/coupon_bloc.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/get_booking_bloc/get_booking_bloc.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/get_user_booking_bloc/get_user_booking_bloc.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/cubits/coupon_cubit/coupon_cubit.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/cubits/address_cubit/address_cubit.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/cubits/select_date_cubit/select_date_cubit.dart';
import 'package:flutter_consumer_app/features/chat_section/data/model/local/get_user_message_local.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/bloc/chat_bloc/chat_bloc.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/pages/chat_home.dart';
import 'package:flutter_consumer_app/features/chat_section/services/firebase_messaging_services.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/all_partner_bloc/all_partner_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/become_partner_bloc/become_partner_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/bloc/partner_like_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/fresh_talent_bloc/fresh_talent_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/package_like_bloc/package_like_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/package_bloc/package_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/search_bloc/search_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/top_partner_bloc/top_partner_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/cubit/cubit/location_cubit.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/cubit/like_cubit.dart';
import 'package:flutter_consumer_app/features/network/presentation/bloc/network_bloc.dart';
import 'package:flutter_consumer_app/features/packages_section/presentation/bloc/package_details_bloc/package_details_bloc.dart';
import 'package:flutter_consumer_app/features/packages_section/presentation/bloc/package_review_bloc/package_review_bloc.dart';
import 'package:flutter_consumer_app/features/packages_section/presentation/bloc/reviews_bloc/review_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/bloc/get_bucket_bloc/bucket_bloc.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/bloc/partner_package_bloc/partner_package_bloc.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/bloc/partner_profile_bloc/partner_profile_bloc.dart';
import 'package:flutter_consumer_app/shared/pages/splash_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mixpanel_flutter/mixpanel_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sizer/sizer.dart';
import 'features/home_section/presentation/bloc/user_bloc/user_bloc.dart';
import 'injection_container.dart' as di;

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseMessagingService().initNotifications();
  // initializeMixpanel();
  await setupHive();

  await di.init();
  localDb = await SharedPreferences.getInstance();

  runApp(const MainApp());
}

late SharedPreferences localDb;
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void initializeMixpanel() async {
  await Mixpanel.init('3be552d999a2a854415ecbb1eea3b94a',
      trackAutomaticEvents: true);
}

Future<void> setupHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(GetUserMessageLocalModelAdapter());
  Hive.registerAdapter(DataModelAdapter());
  Hive.registerAdapter(ClientMessageModelAdapter());
  Hive.registerAdapter(ChatMessageModelAdapter());

  await Hive.openBox<GetUserMessageLocalModel>('userMessages');
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => di.sl<AuthBloc>()),
        BlocProvider(create: (context) => di.sl<CategoryBloc>()),
        BlocProvider(create: (context) => di.sl<TopPartnerBloc>()),
        BlocProvider(create: (context) => di.sl<FreshTalentBloc>()),
        BlocProvider(create: (context) => di.sl<PackageBloc>()),
        BlocProvider(create: (context) => di.sl<PartnerProfileBloc>()),
        BlocProvider(create: (context) => di.sl<PartnerPackageBloc>()),
        BlocProvider(create: (context) => di.sl<BucketBloc>()),
        BlocProvider(create: (context) => di.sl<PackageDetailsBloc>()),
        BlocProvider(create: (context) => di.sl<AddBookingBloc>()),
        BlocProvider(create: (context) => di.sl<GetBookingBloc>()),
        BlocProvider(create: (context) => di.sl<AddOrderBloc>()),
        BlocProvider(create: (context) => di.sl<BecomePartnerBloc>()),
        BlocProvider(create: (context) => di.sl<SearchBloc>()),
        BlocProvider(create: (context) => di.sl<PackageReviewBloc>()),
        BlocProvider(create: (context) => di.sl<PartnerReviewBloc>()),
        BlocProvider(create: (context) => di.sl<PackageLikeBloc>()),
        BlocProvider(create: (context) => di.sl<PartnerLikeBloc>()),

        BlocProvider(create: (context) => di.sl<AllPartnerBloc>()),
        BlocProvider(create: (context) => di.sl<ChatBloc>()),
        BlocProvider(create: (context) => di.sl<GetUserBookingBloc>()),
        BlocProvider(create: (context) => di.sl<UserBloc>()),
        BlocProvider(create: (context) => di.sl<CouponBloc>()),
        BlocProvider(create: (context) => di.sl<LocationCubit>()),

        //CUBITS
        BlocProvider(
          create: (_) => di.sl<NetworkCubit>(),
        ),
        BlocProvider(create: (context) => CouponCubit()),
        BlocProvider(create: (context) => AddressCubit()),
        BlocProvider(create: (context) => SelectDateCubit()),
        BlocProvider(create: (_) => di.sl<LikeCubit>()),
        BlocProvider(create: (context) => ButtonCubit()),
      ],
      child: Sizer(builder: (context, orientation, deviceType) {
        return ScreenUtilInit(
          designSize: const Size(375, 812),
          builder: (context, child) => AnnotatedRegion<SystemUiOverlayStyle>(
            value: const SystemUiOverlayStyle(
              statusBarColor: Colors.transparent, //top status bar
              systemNavigationBarColor:
                  Colors.white, // navigation bar color, the one Im looking for
              statusBarIconBrightness:
                  Brightness.dark, // status bar icons' color
              systemNavigationBarIconBrightness:
                  Brightness.dark, //navigation bar icons' color
            ),
            child: MaterialApp(
              builder: (context, child) {
                return MediaQuery.withNoTextScaling(child: child!);
              },
              theme: ThemeData(
                useMaterial3: false,
                fontFamily: 'JosefinSans',
              ),
              debugShowCheckedModeBanner: false,
              home: const SplashPage(),
              routes: {'/chatHome': (context) => const ChatHomePage()},
            ),
          ),
        );
      }),
    );
  }
}
