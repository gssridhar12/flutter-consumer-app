part of 'become_partner_bloc.dart';

sealed class BecomePartnerEvent extends Equatable {
  const BecomePartnerEvent();

  @override
  List<Object> get props => [];
}

class AddLeadEvent extends BecomePartnerEvent {
  final AddLeadRequest addLeadRequest;
  const AddLeadEvent({required this.addLeadRequest});

  @override
  List<Object> get props => [];
}
