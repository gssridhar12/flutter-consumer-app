part of 'all_partner_bloc_bloc.dart';

sealed class AllPartnerBlocState extends Equatable {
  const AllPartnerBlocState();

  @override
  List<Object> get props => [];
}

final class AllPartnerBlocInitial extends AllPartnerBlocState {}

class GetAllProfileSuccess extends AllPartnerBlocState {
  final AllProfileEntity partner;

  const GetAllProfileSuccess({required this.partner});
  @override
  List<Object> get props => [partner];
}

class GetAllProfileFailed extends AllPartnerBlocState {
  @override
  List<Object> get props => [];
}

class GetAllProfileLoading extends AllPartnerBlocState {
  @override
  List<Object> get props => [];
}
