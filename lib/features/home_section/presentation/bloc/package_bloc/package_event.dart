part of 'package_bloc.dart';

sealed class PackageEvent extends Equatable {
  const PackageEvent();

  @override
  List<Object> get props => [];
}

class GetMostBookedPackage extends PackageEvent {
  const GetMostBookedPackage();

  @override
  List<Object> get props => [];
}
