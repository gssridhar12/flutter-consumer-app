part of 'package_bloc.dart';

sealed class PackageState extends Equatable {
  const PackageState();
  
  @override
  List<Object> get props => [];
}

final class PackageInitial extends PackageState {}

class GetMostBookedPackageSuccess extends PackageState {
  final PackageEntity package;

  const GetMostBookedPackageSuccess({required this.package});
  @override
  List<Object> get props => [package];
}

class GetMostBookedPackageFailed extends PackageState {
  @override
  List<Object> get props => [];
}

class GetMostBookedPackageLoading extends PackageState {
  @override
  List<Object> get props => [];
}
