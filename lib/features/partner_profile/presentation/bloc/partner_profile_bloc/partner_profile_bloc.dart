import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/partner_profile_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/usecases/get_partner_profile.dart';

part 'partner_profile_event.dart';
part 'partner_profile_state.dart';

class PartnerProfileBloc
    extends Bloc<PartnerProfileEvent, PartnerProfileState> {
  final GetPartnerProfileUsecase profileUsecase;
  PartnerProfileBloc({required this.profileUsecase})
      : super(PartnerProfileInitial()) {
    on<GetPartnerProfile>(
      (event, emit) async {
        emit(GetPartnerProfileLoading());
        var partner =
            await profileUsecase.execute(partnerUuid: event.partnerUuid);
        partner.fold(
          (exception) {
            if (partner.isLeft) {
              log(exception.toString());
              emit(GetPartnerProfileFailed());
            }
          },
          (patnerProfile) {
            if (partner.isRight) {
              emit(GetPartnerProfileSuccess(partnerProfile: patnerProfile));
            }
          },
        );
      },
    );
  }
}
