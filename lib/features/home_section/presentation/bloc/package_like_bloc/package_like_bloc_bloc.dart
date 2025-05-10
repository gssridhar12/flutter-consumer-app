import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_like_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/add_package_like_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/add_package_like_usecase.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/get_package_like_usecase.dart';

import '../../../data/model/get_package_like_model.dart';

part 'package_like_bloc_event.dart';
part 'package_like_bloc_state.dart';

class PackageLikeBloc extends Bloc<PackageLikeBlocEvent, PackageLikeBlocState> {
  final AddPackageLikeUseCase addPackageLikeUseCase;
  final GetPackageLikeUseCase getPackageLikeUseCase;

  PackageLikeBloc(
    this.addPackageLikeUseCase,
    this.getPackageLikeUseCase,
  ) : super(PackageLikeBlocInitial()) {
    on<AddPackageLike>((event, emit) async {
      emit(AddPackageLikeLoading());
      var liked =
          await addPackageLikeUseCase.execute(event.addPackageLikeRequest);
      liked.fold(
        (exception) {
          if (exception is ServerFailure) {
            log(exception.toString());
            emit(AddPackageLikeFailed());
          } else if (exception is ConnectionFailure) {
            emit(AddPackageLikeFailed());
          }
        },
        (like) {
          if (like == true) {
            emit(AddPackageLikeSuccess(addPackageLikeEntity: like));
          } else {
            emit(AddPackageLikeFailed());
          }
        },
      );
    });

    on<GetPackageLike>((event, emit) async {
      emit(GetPackageLikeLoading());
      var liked = await getPackageLikeUseCase.execute(event.userId);
      liked.fold(
        (exception) {
          if (exception is ServerFailure) {
            log(exception.toString());
            emit(GetPackageLikeFailed());
          } else if (exception is ConnectionFailure) {
            emit(GetPackageLikeFailed());
          }
        },
        (like) {
          emit(GetPackageLikeSuccess(getPackageLikeEntity: like));
        },
      );
    });
  }
}
