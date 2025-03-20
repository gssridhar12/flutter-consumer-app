part of 'all_partner_bloc_bloc.dart';

sealed class AllPartnerBlocEvent extends Equatable {
  const AllPartnerBlocEvent();

  @override
  List<Object> get props => [];
}

class GetAllProfiles extends AllPartnerBlocEvent {
  const GetAllProfiles();

  @override
  List<Object> get props => [];
}
