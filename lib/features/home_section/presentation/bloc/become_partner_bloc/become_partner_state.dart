part of 'become_partner_bloc.dart';

sealed class BecomePartnerState extends Equatable {
  const BecomePartnerState();

  @override
  List<Object> get props => [];
}

final class BecomePartnerInitial extends BecomePartnerState {}

class AddLeadSuccess extends BecomePartnerState {
  final BecomePartnerEntity partner;

  const AddLeadSuccess({required this.partner});
  @override
  List<Object> get props => [partner];
}

class AddLeadFailed extends BecomePartnerState {
  @override
  List<Object> get props => [];
}

class AddLeadLoading extends BecomePartnerState {
  @override
  List<Object> get props => [];
}
