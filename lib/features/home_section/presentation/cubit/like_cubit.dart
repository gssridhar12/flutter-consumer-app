import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_like_request.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/add_package_like_usecase.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/get_package_like_usecase.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/cubit/like_state.dart';

class LikeCubit extends Cubit<LikeState> {
  final GetPackageLikeUseCase getPackageLikeUseCase;
  final AddPackageLikeUseCase addPackageLikeUseCase;

  LikeCubit({
    required this.getPackageLikeUseCase,
    required this.addPackageLikeUseCase,
  }) : super(LikeState.initial());

  Future<void> checkIfLiked({String? userId, String? packageUuid}) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await getPackageLikeUseCase.execute(userId!);
      data.fold(
        (failure) {
          emit(state.copyWith(errorMessage: "error", isLoading: false));
        },
        (getPackageLikeEntity) {
          final isLiked = getPackageLikeEntity.data!.likedPackages!.any(
            (element) =>
                element.isLiked == true &&
                element.package!.packageUuid == packageUuid,
          );
          log('${state.isLiked}-----result');
          emit(state.copyWith(isLiked: isLiked, isLoading: false));
        },
      );
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString(), isLoading: false));
    }
  }

  Future<void> toggleLike({String? userId, String? packageUuid}) async {
    final newLikeStatus = !state.isLiked;
    emit(state.copyWith(isLoading: true));
    try {
      await addPackageLikeUseCase.execute(
        AddPackageLikeRequest(
          userUuid: userId!,
          packageUuid: packageUuid!,
          isLiked: newLikeStatus,
        ),
      );
      emit(state.copyWith(isLiked: newLikeStatus, isLoading: false));
    } catch (e) {
      emit(state.copyWith(errorMessage: e.toString(), isLoading: false));
    }
  }
}
