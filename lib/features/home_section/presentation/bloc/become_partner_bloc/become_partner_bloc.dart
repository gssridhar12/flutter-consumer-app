import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_lead_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/become_partner_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/add_lead.dart';

part 'become_partner_event.dart';
part 'become_partner_state.dart';

class BecomePartnerBloc extends Bloc<BecomePartnerEvent, BecomePartnerState> {
  final AddLeadUseCase addLeadUseCase;
  BecomePartnerBloc(this.addLeadUseCase) : super(BecomePartnerInitial()) {
    on<AddLeadEvent>((event, emit) async {
      emit(AddLeadLoading());
      var partner = await addLeadUseCase.exicute(event.addLeadRequest);
      partner.fold(
        (exception) {
          if (exception is ServerFailure) {
            log(exception.toString());
            emit(AddLeadFailed());
          } else if (exception is ConnectionFailure) {
            emit(AddLeadFailed());
          }
        },
        (partner) {
          emit(AddLeadSuccess(partner: partner));
        },
      );
    });
  }
}
