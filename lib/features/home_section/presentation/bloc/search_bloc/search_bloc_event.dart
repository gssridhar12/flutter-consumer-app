part of 'search_bloc_bloc.dart';

sealed class SearchBlocEvent extends Equatable {
  const SearchBlocEvent();

  @override
  List<Object> get props => [];
}

class GetSearchPackage extends SearchBlocEvent {
  final String keyword;
  const GetSearchPackage(this.keyword);

  @override
  List<Object> get props => [keyword];
}

class GetSearchPartner extends SearchBlocEvent {
  final String keyword;
  const GetSearchPartner(this.keyword);

  @override
  List<Object> get props => [keyword];
}
