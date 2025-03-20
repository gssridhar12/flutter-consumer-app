part of 'search_bloc_bloc.dart';

sealed class SearchBlocState extends Equatable {
  const SearchBlocState();

  @override
  List<Object> get props => [];
}

final class SearchBlocInitial extends SearchBlocState {}

class GetSearchPackageSuccess extends SearchBlocState {
  final GetPackageSearchEntity package;

  const GetSearchPackageSuccess({required this.package});
  @override
  List<Object> get props => [package];
}

class GetSearchPackageFailed extends SearchBlocState {
  @override
  List<Object> get props => [];
}

class GetSearchPackageLoading extends SearchBlocState {
  @override
  List<Object> get props => [];
}

class GetSearchPartnerSuccess extends SearchBlocState {
  final GetPartnerSearchEntity partner;

  const GetSearchPartnerSuccess({required this.partner});
  @override
  List<Object> get props => [partner];
}

class GetSearchPartnerFailed extends SearchBlocState {
  @override
  List<Object> get props => [];
}

class GetSearchPartnerLoading extends SearchBlocState {
  @override
  List<Object> get props => [];
}
