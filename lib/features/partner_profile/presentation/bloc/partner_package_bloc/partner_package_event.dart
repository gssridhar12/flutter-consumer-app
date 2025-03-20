part of 'partner_package_bloc.dart';

sealed class PartnerPackageEvent extends Equatable {
  const PartnerPackageEvent();

  @override
  List<Object> get props => [];
}

class GetPartnerPackage extends PartnerPackageEvent {
  final String uuid;
  const GetPartnerPackage({required this.uuid});

  @override
  List<Object> get props => [uuid];
}
