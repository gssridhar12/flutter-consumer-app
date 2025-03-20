import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/entities/package_review_entity.dart';
import 'package:flutter_consumer_app/features/packages_section/domain/usecases/get_package_reviews_usecase.dart';

part 'package_review_event.dart';
part 'package_review_state.dart';

class PackageReviewBloc extends Bloc<PackageReviewEvent, PackageReviewState> {
  final GetPackageReviewsUseCase getPackageReviewsUseCase;

  PackageReviewBloc(this.getPackageReviewsUseCase)
      : super(PackageReviewInitial()) {
    on<GetPackageReviews>(
      (event, emit) async {
        emit(GetPackageReviewLoading());
        var partner =
            await getPackageReviewsUseCase.execute(uuid: event.packageUuid);
        partner.fold(
          (exception) {
            if (exception is ServerFailure) {
              log(exception.errorMessage.toString());
              emit(GetPackageReviewFailed());
            }
          },
          (reviews) {
            if (reviews.data.packageReviews.isEmpty) {
              emit(NoPackageReviewsFound());
            }
            emit(GetPackageReviewSuccess(reviews: reviews));
          },
        );
      },
    );
  }
}
