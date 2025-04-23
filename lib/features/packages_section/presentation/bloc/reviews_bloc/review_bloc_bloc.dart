import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/entities/partner_review_entity.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/usecases/get_partner_reviews_usecase.dart';

part 'review_bloc_event.dart';
part 'review_bloc_state.dart';

class PartnerReviewBloc
    extends Bloc<PartnerReviewBlocEvent, PartnerReviewBlocState> {
  final GetPartnerReviewsUseCase getPartnerReviewsUseCase;
  PartnerReviewBloc(this.getPartnerReviewsUseCase)
      : super(PartnerReviewBlocInitial()) {
    on<GetPartnerReviews>(
      (event, emit) async {
        emit(GetPartnerReviewLoading());
        var partner =
            await getPartnerReviewsUseCase.execute(uuid: event.partnerUuid);
        partner.fold(
          (exception) {
            if (exception is ServerFailure) {
              log(exception.errorMessage.toString());
              emit(GetPartnerReviewFailed());
            }
          },
          (reviews) {
            if (partner.isRight) {
              if (reviews.data!.profileReviews!.isEmpty) {
                emit(NoPartnerReviewsFound());
              }
              emit(GetPartnerReviewSuccess(reviews: reviews));
            }
          },
        );
      },
    );
  }
}
