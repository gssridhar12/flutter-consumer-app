part of 'partner_profile_bloc.dart';

sealed class PartnerProfileState extends Equatable {
  const PartnerProfileState();

  @override
  List<Object> get props => [];
}

final class PartnerProfileInitial extends PartnerProfileState {}

class GetPartnerProfileSuccess extends PartnerProfileState {
  final PartnerProfileEntity partnerProfile;

  const GetPartnerProfileSuccess({required this.partnerProfile});
  @override
  List<Object> get props => [partnerProfile];
}

class GetPartnerProfileFailed extends PartnerProfileState {
  @override
  List<Object> get props => [];
}

class GetPartnerProfileLoading extends PartnerProfileState {
  @override
  List<Object> get props => [];
}
