import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/entities/package_details_entitiy.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/usecases/get_package_details_usecase.dart';

part 'package_details_event.dart';
part 'package_details_state.dart';

class PackageDetailsBloc
    extends Bloc<PackageDetailsEvent, PackageDetailsState> {
  final GetPackageDetailsUseCase usecase;
  PackageDetailsBloc(this.usecase) : super(PackageDetailsInitial()) {
    on<GetPackageDetails>(
      (event, emit) async {
        emit(GetPackageDetailsLoading());
        var partner = await usecase.execute(uuid: event.packageUuid);
        partner.fold(
          (exception) {
            if (exception is ServerFailure) {
              log(exception.errorMessage.toString());
              emit(GetPackageDetailsFailed());
            }
          },
          (patnerProfile) {
            if (partner.isRight) {
              emit(GetPackageDetailsSuccess(packageDetails: patnerProfile));
            }
          },
        );
      },
    );
  }
}
