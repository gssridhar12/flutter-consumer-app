part of 'fresh_talent_bloc.dart';

sealed class FreshTalentState extends Equatable {
  const FreshTalentState();

  @override
  List<Object> get props => [];
}

final class FreshTalentInitial extends FreshTalentState {}

class GetFreshTalentOnMegmoSuccess extends FreshTalentState {
  final FreshTalentEntity partner;

  const GetFreshTalentOnMegmoSuccess({required this.partner});
  @override
  List<Object> get props => [partner];
}

class GetFreshTalentOnMegmoFailed extends FreshTalentState {
  @override
  List<Object> get props => [];
}

class GetFreshTalentOnMegmoLoading extends FreshTalentState {
  @override
  List<Object> get props => [];
}
