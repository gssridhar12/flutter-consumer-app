import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/add_partner_like_usecase.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/get_package_like_usecase.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/get_partner_like_repository.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/bloc/partner_like_bloc_event.dart';

import 'partner_like_bloc_state.dart';

class PartnerLikeBloc extends Bloc<PartnerLikeBlocEvent, PartnerLikeBlocState> {
  final AddPartnerLikeUseCase addPartnerLikeUseCase;
  final GetPartnerLikeUseCase getPartnerLikeUseCase;
  PartnerLikeBloc(this.addPartnerLikeUseCase, this.getPartnerLikeUseCase)
      : super(PartnerLikeBlocInitial()) {
    on<GetPartnerLike>((event, emit) async {
      emit(GetPartnerLikeLoading());
      var liked = await getPartnerLikeUseCase.execute(event.partnerUuid);
      liked.fold(
        (exception) {
          if (exception is ServerFailure) {
            log(exception.toString());
            emit(GetPartnerLikeFailed());
          } else if (exception is ConnectionFailure) {
            emit(GetPartnerLikeFailed());
          }
        },
        (like) {
          if (like.successStatus == false) {
            emit(GetPartnerLikeFailed());
          }
          emit(GetPartnerLikeSuccess(getPartnerLikeEntity: like));
        },
      );
    });
    on<AddPartnerLike>((event, emit) async {
      emit(AddPartnerLikeLoading());
      var liked =
          await addPartnerLikeUseCase.execute(event.addPartnerLikeRequest);
      liked.fold(
        (exception) {
          if (exception is ServerFailure) {
            log(exception.toString());
            emit(AddPartnerLikeFailed());
          } else if (exception is ConnectionFailure) {
            emit(AddPartnerLikeFailed());
          }
        },
        (like) {
          emit(AddPartnerLikeSuccess(addPartnerLikeEntity: like));
        },
      );
    });
  }
}
