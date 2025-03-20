import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_package_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/usecases/get_partner_packages_usecase.dart';

part 'partner_package_event.dart';
part 'partner_package_state.dart';

class PartnerPackageBloc
    extends Bloc<PartnerPackageEvent, PartnerPackageState> {
  final GetPartnerPackagesUseCase partnerPackagesUseCase;
  PartnerPackageBloc(this.partnerPackagesUseCase)
      : super(PartnerPackageInitial()) {
    on<GetPartnerPackage>(
      (event, emit) async {
        emit(GetPartnerPackageLoading());
        var partner = await partnerPackagesUseCase.execute(event.uuid);
        partner.fold(
          (exception) {
            if (exception is ServerFailure) {
              log(exception.toString());

              emit(GetPartnerPackageFailed());
            }
          },
          (package) {
            emit(GetPartnerPackageSuccess(package: package));
          },
        );
      },
    );
  }
}
