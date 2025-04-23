part of 'package_details_bloc.dart';

sealed class PackageDetailsState extends Equatable {
  const PackageDetailsState();

  @override
  List<Object> get props => [];
}

final class PackageDetailsInitial extends PackageDetailsState {}

class GetPackageDetailsSuccess extends PackageDetailsState {
  final PackageDetailsEntity packageDetails;

  const GetPackageDetailsSuccess({required this.packageDetails});
  @override
  List<Object> get props => [packageDetails];
}

class GetPackageDetailsFailed extends PackageDetailsState {
  @override
  List<Object> get props => [];
}

class GetPackageDetailsLoading extends PackageDetailsState {
  @override
  List<Object> get props => [];
}
