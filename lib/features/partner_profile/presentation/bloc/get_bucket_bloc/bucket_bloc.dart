import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/get_bucket_entity.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/usecases/get_bucket_usecase.dart';

part 'bucket_event.dart';
part 'bucket_state.dart';

class BucketBloc extends Bloc<BucketEvent, BucketState> {
  final GetBucketUsecase usecase;
  BucketBloc(this.usecase) : super(BucketInitial()) {
    on<GetBucket>(
      (event, emit) async {
        emit(GetBucketLoading());
        var partner = await usecase.execute(bucketUuid: event.uuid);
        partner.fold(
          (exception) {
            if (exception is ServerFailure) {
              log(exception.toString());

              emit(GetBucketFailed());
            }
          },
          (package) {
            emit(GetBucketSuccess(bucket: package));
          },
        );
      },
    );
  }
}
