import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/fresh_talent_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/get_fresh_talent_on_megmo.dart';

part 'fresh_talent_event.dart';
part 'fresh_talent_state.dart';

class FreshTalentBloc extends Bloc<FreshTalentEvent, FreshTalentState> {
  final GetFreshTalentOnMegmoUseCase freshTalentOnMegmo;

  FreshTalentBloc({required this.freshTalentOnMegmo}) : super(FreshTalentInitial()) {
      on<GetFreshTalentOnMegmo>(
      (event, emit) async {
        emit(GetFreshTalentOnMegmoLoading());
        var partner = await freshTalentOnMegmo.execute();
        partner.fold(
          (exception) {
            if (partner.isLeft) {
              print(exception.toString());

              emit(GetFreshTalentOnMegmoFailed());
            }
          },
          (partnerModel) {
            if (partner.isRight) {
              emit(GetFreshTalentOnMegmoSuccess(partner: partnerModel));
            }
          },
        );
      },
    );
  }
}
