import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/core/error/failures.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_partner_search_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_package_search_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/search_package_usecase.dart';
import 'package:flutter_consumer_app/features/home_section/domain/usecases/search_partner_usecase.dart';

part 'search_bloc_event.dart';
part 'search_bloc_state.dart';

class SearchBloc extends Bloc<SearchBlocEvent, SearchBlocState> {
  final GetSearchPackageUseCase getSearchPackageUseCase;
  final GetSearchPartnerUseCase getSearchPartnerUseCase;
  SearchBloc(this.getSearchPackageUseCase, this.getSearchPartnerUseCase) : super(SearchBlocInitial()) {
    on<GetSearchPackage>((event, emit) async {
      emit(GetSearchPackageLoading());
      var partner = await getSearchPackageUseCase.execute(event.keyword);
      partner.fold(
        (exception) {
          if (exception is ServerFailure) {
            log(exception.toString());
            emit(GetSearchPackageFailed());
          } else if (exception is ConnectionFailure) {
            emit(GetSearchPackageFailed());
          }
        },
        (package) {
          
          emit(GetSearchPackageSuccess(package: package));
        },
      );
    });
    on<GetSearchPartner>((event, emit) async {
      emit(GetSearchPartnerLoading());
      var partner = await getSearchPartnerUseCase.execute(event.keyword);
      partner.fold(
        (exception) {
          if (exception is ServerFailure) {
            log(exception.toString());
            emit(GetSearchPartnerFailed());
          } else if (exception is ConnectionFailure) {
            emit(GetSearchPartnerFailed());
          }
        },
        (partner) {
          emit(GetSearchPartnerSuccess(partner: partner));
        },
      );
    });
  }
}
