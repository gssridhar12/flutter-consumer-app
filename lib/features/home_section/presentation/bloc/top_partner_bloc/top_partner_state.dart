part of 'top_partner_bloc.dart';

sealed class TopPartnerState extends Equatable {
  const TopPartnerState();

  @override
  List<Object> get props => [];
}

final class TopPartnerInitial extends TopPartnerState {}

class GetTopPartnerInDemantSuccess extends TopPartnerState {
  final TopPartnerEntity partner;

  const GetTopPartnerInDemantSuccess({required this.partner});
  @override
  List<Object> get props => [partner];
}

class GetTopPartnerInDemantFailed extends TopPartnerState {
  @override
  List<Object> get props => [];
}

class GetTopPartnerInDemantLoading extends TopPartnerState {
  @override
  List<Object> get props => [];
}
