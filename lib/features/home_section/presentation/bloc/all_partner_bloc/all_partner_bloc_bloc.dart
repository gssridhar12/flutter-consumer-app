import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/all_partners_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/get_all_partners_usecase.dart';

part 'all_partner_bloc_event.dart';
part 'all_partner_bloc_state.dart';

class AllPartnerBloc
    extends Bloc<AllPartnerBlocEvent, AllPartnerBlocState> {
  final AllPartnerUsecase usecase;
  AllPartnerBloc(this.usecase) : super(AllPartnerBlocInitial()) {
     on<GetAllProfiles>((event, emit) async {
      emit(GetAllProfileLoading());
      var partner = await usecase.execute();
      partner.fold(
        (exception) {
          if (exception is ServerFailure) {
            log(exception.toString());
            emit(GetAllProfileFailed());
          } else if (exception is ConnectionFailure) {
            emit(GetAllProfileFailed());
          }
        },
        (partner) {
          emit(GetAllProfileSuccess(partner: partner));
        },
      );
    });
    // List<String> dataList = [];
    // @override
    // Stream<AllPartnerBlocState> mapEventToState(GetAllProfiles event) async* {
    //   yield GetAllProfileLoading();
    //   final partner = usecase.execute();
    //   partner.fold(
    //     (exception) {
    //       if (exception is ServerFailure) {
    //         log(exception.toString());
    //         GetAllProfileFailed();
    //       } else if (exception is ConnectionFailure) {
    //         GetAllProfileFailed();
    //       }
    //     },
    //     (partner) {
    //       GetAllProfileSuccess(partner: partner);
    //     },
    //   );
    // }

  }
}
