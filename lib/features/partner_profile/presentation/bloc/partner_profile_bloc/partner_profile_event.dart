part of 'partner_profile_bloc.dart';

sealed class PartnerProfileEvent extends Equatable {
  const PartnerProfileEvent();

  @override
  List<Object> get props => [];
}

class GetPartnerProfile extends PartnerProfileEvent {
  final String partnerUuid;
  const GetPartnerProfile(this.partnerUuid);

  @override
  List<Object> get props => [];
}
