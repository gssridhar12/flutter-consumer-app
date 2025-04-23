import 'package:flutter/material.dart';
import 'package:flutter_consumer_app/core/platform/network_info.dart';
import 'package:flutter_consumer_app/features/booking_section/data/datasources/remote/booking_api_remote_repository.dart';
import 'package:flutter_consumer_app/features/booking_section/data/repositories/booking_api_repository_impl.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/repositories/booking_repositories.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/usecases/add_booking_usecase.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/usecases/add_order_usecase.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/usecases/get_booking_usecase.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/usecases/get_coupon_usecase.dart';
import 'package:flutter_consumer_app/features/booking_section/domain/usecases/get_user_booking_usecase.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/add_booking_bloc/add_booking_bloc.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/add_order_bloc/add_order_bloc.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/coupon_bloc/coupon_bloc.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/get_booking_bloc/get_booking_bloc.dart';
import 'package:flutter_consumer_app/features/booking_section/presentation/bloc/get_user_booking_bloc/get_user_booking_bloc.dart';
import 'package:flutter_consumer_app/features/chat_section/data/datasources/chat_local_datasources.dart';
import 'package:flutter_consumer_app/features/chat_section/data/datasources/chat_remote_datasources.dart';
import 'package:flutter_consumer_app/features/chat_section/data/model/local/get_user_message_local.dart';
import 'package:flutter_consumer_app/features/chat_section/data/repositories/chat_repository_impl.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/repositories/chat_repository.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/usecases/get_user_message_usecase.dart';
import 'package:flutter_consumer_app/features/chat_section/domain/usecases/sent_message_usecase.dart';
import 'package:flutter_consumer_app/features/chat_section/presentation/bloc/chat_bloc/chat_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/data/datasources/remote/become_partner_datasource.dart';
import 'package:flutter_consumer_app/features/home_section/data/datasources/remote/like_remote_datasource.dart';
import 'package:flutter_consumer_app/features/home_section/data/datasources/remote/search_datasorces.dart';
import 'package:flutter_consumer_app/features/home_section/data/datasources/remote/user_api_remote_datasource.dart';
import 'package:flutter_consumer_app/features/home_section/data/repositories/become_partner_repository_impl.dart';
import 'package:flutter_consumer_app/features/home_section/data/repositories/like_repository_impl.dart';
import 'package:flutter_consumer_app/features/home_section/data/repositories/search_repository_impl.dart';
import 'package:flutter_consumer_app/features/home_section/data/repositories/user_api_repository_impl.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/become_partner_repository.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/like_repository.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/search_repository.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/user_api_repository.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/add_lead.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/add_package_like_usecase.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/add_package_review_usecase.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/add_partner_like_usecase.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/get_all_partners_usecase.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/get_package_like_usecase.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/get_partner_like_repository.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/get_user_usecase.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/search_package_usecase.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/search_partner_usecase.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/update_user_usecase.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/all_partner_bloc/all_partner_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/become_partner_bloc/become_partner_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/bloc/partner_like_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/package_like_bloc/package_like_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/search_bloc/search_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/user_bloc/user_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/cubit/cubit/location_cubit.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/cubit/like_cubit.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/widgets/location_choice_chip.dart';
import 'package:flutter_consumer_app/features/network/data/repository/network_repository_impl.dart';
import 'package:flutter_consumer_app/features/network/domain/repository/network_repository.dart';
import 'package:flutter_consumer_app/features/network/presentation/bloc/network_bloc.dart';
import 'package:flutter_consumer_app/features/packages_section/data/datasources/remote/package_details_remote_datasources.dart';
import 'package:flutter_consumer_app/features/packages_section/data/datasources/remote/review_remote_datasource.dart';
import 'package:flutter_consumer_app/features/packages_section/data/repositories/package_details_repository_impl.dart';
import 'package:flutter_consumer_app/features/packages_section/data/repositories/review_repository_impl.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/repositories/package_details_repository.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/repositories/review_repository.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/usecases/get_package_details_usecase.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/usecases/get_package_reviews_usecase.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/usecases/get_partner_reviews_usecase.dart';
import 'package:flutter_consumer_app/features/packages_section/presentation/bloc/package_details_bloc/package_details_bloc.dart';
import 'package:flutter_consumer_app/features/packages_section/presentation/bloc/package_review_bloc/package_review_bloc.dart';
import 'package:flutter_consumer_app/features/packages_section/presentation/bloc/reviews_bloc/review_bloc_bloc.dart';
import 'package:flutter_consumer_app/features/partner_profile/data/datasources/partner_package_remote_datasource.dart';
import 'package:flutter_consumer_app/features/partner_profile/data/repositories/partner_package_repository_impl.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/repositories/partner_package_repository.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/usecases/get_bucket_usecase.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/usecases/get_partner_packages_usecase.dart';
import 'package:flutter_consumer_app/features/auth_section/data/datasource/remote/auth_api_remote_datasource.dart';
import 'package:flutter_consumer_app/features/auth_section/data/repository/auth_repository_impl.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/repository/auth_repository.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/usecases/login_with_api_usecase.dart';
import 'package:flutter_consumer_app/features/auth_section/domain/usecases/sign_up_api_usecase.dart';
import 'package:flutter_consumer_app/features/auth_section/presentation/bloc/auth_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/data/datasources/remote/category_remote_datasource.dart';
import 'package:flutter_consumer_app/features/home_section/data/datasources/remote/package_api_remote_data_source.dart';
import 'package:flutter_consumer_app/features/home_section/data/datasources/remote/partner_api_remote_data_source.dart';
import 'package:flutter_consumer_app/features/partner_profile/data/datasources/partner_profile_remote_datasource.dart';
import 'package:flutter_consumer_app/features/home_section/data/repositories/categories_api_repositories_impl.dart';
import 'package:flutter_consumer_app/features/home_section/data/repositories/packages_api_repository_impl.dart';
import 'package:flutter_consumer_app/features/home_section/data/repositories/partner_api_repository_impl.dart';
import 'package:flutter_consumer_app/features/partner_profile/data/repositories/partner_profile_repositories_impl.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/categories_api_repositories.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/package_api_repositories.dart';
import 'package:flutter_consumer_app/features/home_section/domain/repositories/partner_api_repository.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/repositories/partner_profile_repositories.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/get_category.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/get_fresh_talent_on_megmo.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/get_most_booked_packages.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/usecases/get_partner_profile.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/get_top_partner_in_demant.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/category_bloc/category_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/fresh_talent_bloc/fresh_talent_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/package_bloc/package_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/top_partner_bloc/top_partner_bloc.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/bloc/get_bucket_bloc/bucket_bloc.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/bloc/partner_package_bloc/partner_package_bloc.dart';
import 'package:flutter_consumer_app/features/partner_profile/presentation/bloc/partner_profile_bloc/partner_profile_bloc.dart';

import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:internet_connection_checker/internet_connection_checker.dart';

final sl = GetIt.instance;
Future<void> init() async {
  sl.registerLazySingleton<NetworkRepository>(() => NetworkRepositoryImpl());
  sl.registerFactory(() => NetworkCubit());

  //Features - GetCategory

  //core

  sl.registerFactory(() => CategoryBloc(sl()));

  sl.registerLazySingleton(() => GetCategory(repository: sl()));

  sl.registerLazySingleton<CategoriesApiRepository>(
      () => CategoriesApiRepositoryImpl(remoteDataSource: sl()));

  sl.registerLazySingleton<CategoryRemoteDataSource>(
      () => CategoryRemoteDataSourceImpl(httpClient: sl()));

  sl.allReady().then((_) {
    sl<GetCategory>();
    sl<CategoryBloc>();
    sl<CategoriesApiRepository>();
    sl<CategoryRemoteDataSource>();
    sl<http.Client>();
    debugPrint("Category Dependency registration completed successfully.");
  }).catchError((error) {
    debugPrint("Category Error during dependency registration: $error");
  });

  //feature ---gettoppartnersindemant

  sl.registerFactory(() => TopPartnerBloc(topPartnerInDemant: sl()));
  sl.registerFactory(() => FreshTalentBloc(freshTalentOnMegmo: sl()));
  sl.registerFactory(() => AllPartnerBloc(sl()));
  sl.registerLazySingleton(
      () => GetTopPartnerInDemantUseCase(partnerRepository: sl()));
  sl.registerLazySingleton(() => AllPartnerUsecase(repository: sl()));
  sl.registerLazySingleton(
      () => GetFreshTalentOnMegmoUseCase(partnerRepository: sl()));
  sl.registerLazySingleton<PartnerRepository>(
      () => PartnerRepositoryImpl(partnerRemoteDatasource: sl()));
  sl.registerLazySingleton<PartnerRemoteDataSource>(
      () => PartnerRemoteDataSourceImpl(httpClient: sl()));

  sl.allReady().then((_) {
    sl<GetTopPartnerInDemantUseCase>();
    sl<GetFreshTalentOnMegmoUseCase>();

    sl<TopPartnerBloc>();
    sl<PartnerRepository>();
    sl<PartnerRemoteDataSource>();
    sl<http.Client>();
    debugPrint("Partner API Dependency registration completed successfully.");
  }).catchError((error) {
    debugPrint("Partner API Error during dependency registration: $error");
  });

  //feature ---authentication

  sl.registerFactory(
      () => AuthBloc(signUpApiUseCase: sl(), loginApiUseCase: sl()));

  sl.registerLazySingleton(() => SignUpApiUseCase(authRepository: sl()));
  sl.registerLazySingleton(() => LoginApiUseCase(authRepository: sl()));

  sl.registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(remoteDataSource: sl(), networkInfo: sl()));

  sl.registerLazySingleton<AuthApiRemoteDataSource>(
      () => AuthApiRemoteDataSourceImpl(httpClient: sl()));

  sl.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: sl()));

  sl.allReady().then((_) {
    sl<SignUpApiUseCase>();
    sl<LoginApiUseCase>();
    sl<AuthRepository>();
    sl<AuthApiRemoteDataSource>();
    sl<NetworkInfo>();
    sl<http.Client>();
    debugPrint("Auth API Dependency registration completed successfully.");
  }).catchError((error) {
    debugPrint("Auth API Error during dependency registration: $error");
  });
  //feature ---user apis

  sl.registerFactory(() => UserBloc(sl(), sl(), sl()));

  sl.registerLazySingleton(() => UpdateUserUsecase(repository: sl()));
  sl.registerLazySingleton(() => GetUserUsecase(repository: sl()));
  sl.registerLazySingleton(() => AddPackageReviewUsecase(repository: sl()));

  sl.registerLazySingleton<UserRepository>(
      () => UserRepositoryImpl(remoteDataSource: sl()));

  sl.registerLazySingleton<UserApiRemoteDataSource>(
      () => UserApiRemoteDataSourceImpl(httpClient: sl()));

  sl.allReady().then((_) {
    sl<UpdateUserUsecase>();
    sl<GetUserUsecase>();
    sl<UserRepository>();
    sl<UserApiRemoteDataSource>();
    sl<http.Client>();
    debugPrint("User API Dependency registration completed successfully.");
  }).catchError((error) {
    debugPrint("User API Error during dependency registration: $error");
  });

  //feature ---packages

  sl.registerFactory(() => PackageBloc(mostBookedPackageUseCase: sl()));

  sl.registerLazySingleton(
      () => GetMostBookedPackagesUseCase(repository: sl()));

  sl.registerLazySingleton<PackageRepository>(
      () => PackageRepositoryImpl(packageRemoteDataSource: sl()));

  sl.registerLazySingleton<PackageRemoteDataSource>(
      () => PackageRemoteDataSourceImpl(httpClient: sl()));

  sl.allReady().then((_) {
    sl<GetMostBookedPackagesUseCase>();
    sl<PackageRepository>();
    sl<PackageRemoteDataSource>();
    sl<http.Client>();
    debugPrint("Package API Dependency registration completed successfully.");
  }).catchError((error) {
    debugPrint("Package API Error during dependency registration: $error");
  });

  //feature ---partner profile

  sl.registerFactory(() => PartnerProfileBloc(profileUsecase: sl()));

  sl.registerLazySingleton(() => GetPartnerProfileUsecase(repository: sl()));

  sl.registerLazySingleton<PartnerProfileRepository>(
      () => PartnerProfileRepositoryImpl(dataSource: sl()));

  sl.registerLazySingleton<PartnerProfileRemoteDataSource>(
      () => PartnerProfileRemoteDataSourceImpl(httpClient: sl()));

  sl.allReady().then((_) {
    sl<GetPartnerProfileUsecase>();
    sl<PackageRepository>();
    sl<PackageRemoteDataSource>();
    sl<http.Client>();
    debugPrint(
        "Partner profile API Dependency injection completed successfully.");
  }).catchError((error) {
    debugPrint("partner profile API Error during dependency injection: $error");
  });

  //feature ---partner package
  sl.registerFactory(() => PartnerPackageBloc(sl()));
  sl.registerFactory(() => BucketBloc(sl()));
  sl.registerLazySingleton(() => GetPartnerPackagesUseCase(repository: sl()));
  sl.registerLazySingleton(() => GetBucketUsecase(repository: sl()));
  sl.registerLazySingleton<PartnerPackageRepository>(
      () => PartnerPackageRepositoryImpl(packageRemoteDataSource: sl()));
  sl.registerLazySingleton<PartnerPackageRemoteDataSource>(
      () => PartnerPackageRemoteDataSourceImpl(httpClient: sl()));

  sl.allReady().then((_) {
    sl<GetPartnerPackagesUseCase>();
    sl<PartnerPackageRepository>();
    sl<PartnerPackageRemoteDataSource>();
    sl<http.Client>();
    debugPrint(
        "Partner package profile API Dependency injection completed successfully.");
  }).catchError((error) {
    debugPrint(
        "partner package profile API Error during dependency injection: $error");
  });

//feature ---partner package details
  sl.registerFactory(() => PackageDetailsBloc(sl()));
  sl.registerLazySingleton(() => GetPackageDetailsUseCase(repository: sl()));
  sl.registerLazySingleton<PackageDetailsRepository>(
      () => PackageDetailsRepositoryImpl(packageRemoteDataSource: sl()));
  sl.registerLazySingleton<PackageDetailsRemoteDataSource>(
      () => PackageDetailsRemoteDataSourceImpl(httpClient: sl()));

  sl.allReady().then((_) {
    sl<GetPackageDetailsUseCase>();
    sl<PackageDetailsRepository>();
    sl<PackageDetailsRemoteDataSource>();
    sl<http.Client>();
    debugPrint(
        "package details  API Dependency injection completed successfully.");
  }).catchError((error) {
    debugPrint("package details API Error during dependency injection: $error");
  });

  //feature ---add booking
  sl.registerFactory(() => AddBookingBloc(sl()));
  sl.registerFactory(() => CouponBloc(sl()));
  sl.registerLazySingleton(() => AddBookingUseCase(repository: sl()));
  sl.registerLazySingleton(() => GetCouponUseCase(repository: sl()));
  sl.registerLazySingleton<BookingRepository>(
      () => BookingRepositoryImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<BookingApiRemoteRepository>(
      () => BookingApiRemoteRepositoryImpl(httpClient: sl()));

  sl.allReady().then((_) {
    sl<AddBookingUseCase>();
    sl<BookingRepository>();
    sl<BookingApiRemoteRepository>();
    sl<http.Client>();
    debugPrint("add booking API Dependency injection completed successfully.");
  }).catchError((error) {
    debugPrint("add booking API Error during dependency injection: $error");
  });
  //feature ---get booking -- get userbooking
  sl.registerFactory(() => GetBookingBloc(getBookingUseCase: sl()));
  sl.registerFactory(() => GetUserBookingBloc(sl()));
  sl.registerLazySingleton(() => GetBookingUseCase(repository: sl()));
  sl.registerLazySingleton(() => GetUserBookingUseCase(repository: sl()));

  sl.allReady().then((_) {
    sl<GetBookingUseCase>();
    sl<BookingRepository>();
    sl<BookingApiRemoteRepository>();
    sl<http.Client>();
    debugPrint("get booking API Dependency injection completed successfully.");
  }).catchError((error) {
    debugPrint("get booking API Error during dependency injection: $error");
  });

  //feature ---add order
  sl.registerFactory(() => AddOrderBloc(addOrderUseCase: sl()));
  sl.registerLazySingleton(() => AddOrderUseCase(repository: sl()));

  sl.allReady().then((_) {
    sl<AddBookingUseCase>();
    sl<BookingRepository>();
    sl<BookingApiRemoteRepository>();
    sl<http.Client>();
    debugPrint("add order API Dependency injection completed successfully.");
  }).catchError((error) {
    debugPrint("add order API Error during dependency injection: $error");
  });

  //feature ---add lead
  sl.registerFactory(() => BecomePartnerBloc(sl()));
  sl.registerLazySingleton(() => AddLeadUseCase(repository: sl()));
  sl.registerLazySingleton<BecomePartnerRepository>(
      () => BecomePartnerRepositoryImpl(remoteDatasource: sl()));
  sl.registerLazySingleton<BecomePartnerRemoteDataSource>(
      () => BecomePartnerRemoteDataSourceImpl(httpClient: sl()));

  sl.allReady().then((_) {
    sl<AddLeadUseCase>();
    sl<BecomePartnerRepository>();
    sl<BecomePartnerRemoteDataSource>();
    sl<http.Client>();
    debugPrint("add lead API Dependency injection completed successfully.");
  }).catchError((error) {
    debugPrint("add lead API Error during dependency injection: $error");
  });

  //feature ---like feature
  sl.registerFactory(() => PartnerLikeBloc(sl(), sl()));
  sl.registerFactory(() => PackageLikeBloc(sl(), sl()));

  sl.registerFactory(
    () => LikeCubit(addPackageLikeUseCase: sl(), getPackageLikeUseCase: sl()),
  );
  sl.registerLazySingleton(() => AddPackageLikeUseCase(repository: sl()));
  sl.registerLazySingleton(() => AddPartnerLikeUseCase(repository: sl()));
  sl.registerLazySingleton(() => GetPackageLikeUseCase(repository: sl()));
  sl.registerLazySingleton(() => GetPartnerLikeUseCase(repository: sl()));
  sl.registerLazySingleton<LikeRepository>(
      () => LikeRepositoryImpl(likeRemoteDataSource: sl()));
  sl.registerLazySingleton<LikeRemoteDataSource>(
      () => LikeRemoteDataSourceImpl(httpClient: sl()));

  sl.allReady().then((_) {
    sl<AddPackageLikeUseCase>();
    sl<LikeRepository>();
    sl<LikeRemoteDataSource>();
    sl<http.Client>();
    debugPrint("likes API Dependency injection completed successfully.");
  }).catchError((error) {
    debugPrint("likes API Error during dependency injection: $error");
  });

  //feature ---like feature
  sl.registerFactory(() => LocationCubit());

  //feature ---SEARCH  feature
  sl.registerFactory(() => SearchBloc(sl(), sl()));
  sl.registerLazySingleton(() => GetSearchPackageUseCase(repository: sl()));
  sl.registerLazySingleton(() => GetSearchPartnerUseCase(repository: sl()));

  sl.registerLazySingleton<SearchRepository>(
      () => SearchRepositoryImpl(remoteDataSource: sl()));
  sl.registerLazySingleton<SearchDataSource>(
      () => SearchDataSourceImpl(httpClient: sl()));

  sl.allReady().then((_) {
    sl<GetSearchPackageUseCase>();
    sl<SearchRepository>();
    sl<SearchDataSource>();
    sl<http.Client>();
    debugPrint("Search API Dependency injection completed successfully.");
  }).catchError((error) {
    debugPrint("Search API Error during dependency injection: $error");
  });

  //feature ---reviews  feature
  sl.registerFactory(() => PartnerReviewBloc(sl()));
  sl.registerFactory(() => PackageReviewBloc(sl()));
  sl.registerLazySingleton(() => GetPackageReviewsUseCase(repository: sl()));
  sl.registerLazySingleton(() => GetPartnerReviewsUseCase(repository: sl()));

  sl.registerLazySingleton<ReviewRepository>(
      () => ReviewRepositoryImpl(dataSource: sl()));
  sl.registerLazySingleton<ReviewDataSource>(
      () => ReviewDataSourceImpl(httpClient: sl()));

  sl.allReady().then((_) {
    sl<GetPackageReviewsUseCase>();
    sl<ReviewRepository>();
    sl<ReviewDataSource>();
    sl<http.Client>();
    debugPrint("Reviews API Dependency injection completed successfully.");
  }).catchError((error) {
    debugPrint("Reviews API Error during dependency injection: $error");
  });

  //feature ---chat
  sl.registerFactory(() => ChatBloc(sl(), sl()));
  sl.registerLazySingleton(() => GetUserMessageUseCase(repository: sl()));
  sl.registerLazySingleton(() => SentMessageUseCase(repository: sl()));
  sl.registerLazySingleton<ChatRepository>(
      () => ChatRepositoryImpl(remoteDataSource: sl(), localDataSource: sl()));
  sl.registerLazySingleton<ChatRemoteDataSource>(
      () => ChatRemoteDataSourceImpl(httpClient: sl()));

  sl.registerLazySingleton<Box<GetUserMessageLocalModel>>(
    () => Hive.box<GetUserMessageLocalModel>('userMessages'),
  );
  sl.registerLazySingleton<ChatLocalDataSource>(
    () => ChatLocalDataSourceImpl(box: sl<Box<GetUserMessageLocalModel>>()),
  );

  sl.allReady().then((_) {
    sl<GetUserMessageUseCase>();
    sl<ChatRepository>();
    sl<ChatRemoteDataSource>();
    sl<http.Client>();
    debugPrint("caht API Dependency injection completed successfully.");
  }).catchError((error) {
    debugPrint("chat API Error during dependency injection: $error");
  });

  //external
  sl.registerLazySingleton<http.Client>(() => http.Client());
  sl.registerLazySingleton(() => InternetConnectionChecker());

  sl.allReady().then((value) => debugPrint(
      '-------------------------------------------------------------------------registed'));
}
//InternetConnectionChecker
