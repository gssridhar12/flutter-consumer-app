part of 'partner_package_bloc.dart';

sealed class PartnerPackageState extends Equatable {
  const PartnerPackageState();

  @override
  List<Object> get props => [];
}

final class PartnerPackageInitial extends PartnerPackageState {}

class GetPartnerPackageSuccess extends PartnerPackageState {
  final PartnerPackageEntity package;

  const GetPartnerPackageSuccess({required this.package});
  @override
  List<Object> get props => [package];
}

class GetPartnerPackageFailed extends PartnerPackageState {
  @override
  List<Object> get props => [];
}

class GetPartnerPackageLoading extends PartnerPackageState {
  @override
  List<Object> get props => [];
}
