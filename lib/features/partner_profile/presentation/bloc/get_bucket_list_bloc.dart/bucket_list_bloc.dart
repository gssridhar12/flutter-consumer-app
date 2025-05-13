import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/usecases/get_bucket_usecase.dart';

import 'bucket_list_event.dart';
import 'bucket_list_state.dart';

class BucketListBloc extends Bloc<BucketListEvent, BucketListState> {
  final GetBucketListUsecase usecase;
  BucketListBloc(this.usecase) : super(BucketListInitial()) {
    on<GetBucketData>(
      (event, emit) async {
        emit(GetBucketListLoading());
        var partner = await usecase.execute(partnerUuid: event.partnerId);
        partner.fold(
          (exception) {
            if (exception is ServerFailure) {
              log(exception.toString());
              emit(GetBucketListFailed());
            }
          },
          (package) {
            emit(GetBucketListSuccess(bucket: package));
          },
        );
      },
    );
  }
}
