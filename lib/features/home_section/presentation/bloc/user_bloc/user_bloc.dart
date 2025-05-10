// ignore_for_file: unused_local_variable

import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_package_review_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/update_user_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/add_package_review_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_user_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/update_user_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/add_package_review_usecase.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/get_user_usecase.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/update_user_usecase.dart';
import 'package:flutter_consumer_app/main.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final GetUserUsecase getUserUsecase;
  final UpdateUserUsecase updateUserUsecase;
  final AddPackageReviewUsecase reviewUsecase;
  UserBloc(this.getUserUsecase, this.updateUserUsecase, this.reviewUsecase)
      : super(UserInitial()) {
    final userId = localDb.getString('id');
    on<GetUser>(
      (event, emit) async {
        emit(GetUserLoading());

        final String? id = localDb.getString('id');
        log('saved id is --------------------$id');

        if (id == null) {
          emit(IsGuestUser());
        }
        var userids = "40b8f6ad-eeb2-4173-aa92-65d8f7dfc059";
        var partner = await getUserUsecase.execute(userId!);
        // var partner = await getUserUsecase.execute(userids);
        partner.fold(
          (exception) {
            if (exception is ServerFailure) {
              log(exception.toString());
              emit(GetUserFailed());
            } else if (exception is ConnectionFailure) {
              emit(GetUserFailed());
            }
          },
          (user) {
            if (partner.isRight) {
              localDb.setBool('isGuestUser', false);

              emit(GetUserSuccess(user: user));
            }
          },
        );
      },
    );
    on<UpdateUser>(
      (event, emit) async {
        emit(UpdateUserLoading());
        var partner = await updateUserUsecase.execute(event.request);
        partner.fold(
          (exception) {
            if (exception is ServerFailure) {
              log(exception.toString());
              emit(UpdateUserFailed());
            } else if (exception is ConnectionFailure) {
              emit(UpdateUserFailed());
            }
          },
          (user) {
            if (partner.isRight) {
              emit(UpdateUserSuccess(user: user));
            }
          },
        );
      },
    );
    on<AddPackageReview>(
      (event, emit) async {
        emit(AddPackageReviewLoading());
        var partner = await reviewUsecase.execute(event.request);
        partner.fold(
          (exception) {
            if (exception is ServerFailure) {
              log(exception.toString());
              emit(AddPackageReviewFailed());
            } else if (exception is ConnectionFailure) {
              emit(AddPackageReviewFailed());
            }
          },
          (user) {
            if (partner.isRight) {
              emit(AddPackageReviewSuccess(review: user));
            }
          },
        );
      },
    );
  }
}
