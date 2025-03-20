import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/top_partner_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/get_top_partner_in_demant.dart';

part 'top_partner_event.dart';
part 'top_partner_state.dart';

class TopPartnerBloc extends Bloc<TopPartnerEvent, TopPartnerState> {
  final GetTopPartnerInDemantUseCase topPartnerInDemant;

  TopPartnerBloc({required this.topPartnerInDemant})
      : super(GetTopPartnerInDemantLoading()) {
    on<GetTopTopPartnerInDemant>(
      (event, emit) async {
        emit(GetTopPartnerInDemantLoading());
        var partner = await topPartnerInDemant.execute();
        partner.fold(
          (exception) {
            if (exception is ServerFailure) {
              log(exception.toString());
              emit(GetTopPartnerInDemantFailed());
            } else if (exception is ConnectionFailure) {
              emit(GetTopPartnerInDemantFailed());
            }
          },
          (partnerModel) {
            if (partner.isRight) {
              emit(GetTopPartnerInDemantSuccess(partner: partnerModel));
            }
          },
        );
      },
    );
  }
}
