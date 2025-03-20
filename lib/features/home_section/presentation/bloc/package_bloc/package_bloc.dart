import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/package_enitity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/get_most_booked_packages.dart';

part 'package_event.dart';
part 'package_state.dart';

class PackageBloc extends Bloc<PackageEvent, PackageState> {
  // final PartnerProfileBloc partnerProfileBloc;
  final GetMostBookedPackagesUseCase mostBookedPackageUseCase;
  PackageBloc(
      {
      // required this.partnerProfileBloc,
      required this.mostBookedPackageUseCase})
      : super(PackageInitial()) {
    // StreamSubscription subscription;
    on<GetMostBookedPackage>(
      (event, emit) async {
        emit(GetMostBookedPackageLoading());
        var partner = await mostBookedPackageUseCase.execute();
        partner.fold(
          (exception) {
            if (exception is ServerFailure) {
              log(exception.toString());
              emit(GetMostBookedPackageFailed());
            } else if (exception is ConnectionFailure) {
              emit(GetMostBookedPackageFailed());
            }
          },
          (partnerModel) {
            if (partner.isRight) {
              emit(GetMostBookedPackageSuccess(package: partnerModel));
            }
          },
        );
      },
    );
  }
}
