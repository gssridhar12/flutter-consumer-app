part of 'package_details_bloc.dart';

sealed class PackageDetailsEvent extends Equatable {
  const PackageDetailsEvent();

  @override
  List<Object> get props => [];
}

class GetPackageDetails extends PackageDetailsEvent {
  final String packageUuid;
  const GetPackageDetails(this.packageUuid);

  @override
  List<Object> get props => [packageUuid];
}
