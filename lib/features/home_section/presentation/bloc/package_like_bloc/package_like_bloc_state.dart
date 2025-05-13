part of 'package_like_bloc_bloc.dart';

sealed class PackageLikeBlocState extends Equatable {
  const PackageLikeBlocState();

  @override
  List<Object> get props => [];
}

final class PackageLikeBlocInitial extends PackageLikeBlocState {}

class AddPackageLikeSuccess extends PackageLikeBlocState {
  final AddPackageLikeEntity addPackageLikeEntity;

  const AddPackageLikeSuccess({required this.addPackageLikeEntity});
  @override
  List<Object> get props => [addPackageLikeEntity];
}

class AddPackageLikeFailed extends PackageLikeBlocState {
  @override
  List<Object> get props => [];
}

class AddPackageLikeLoading extends PackageLikeBlocState {
  @override
  List<Object> get props => [];
}

class GetPackageLikeSuccess extends PackageLikeBlocState {
  // final GetPackageLikeEntity getPackageLikeEntity;
  final GetPackageLikeModel getPackageLikeEntity;

  const GetPackageLikeSuccess({required this.getPackageLikeEntity});
  @override
  List<Object> get props => [getPackageLikeEntity];
}

class GetPackageLikeFailed extends PackageLikeBlocState {
  @override
  List<Object> get props => [];
}

class GetPackageLikeLoading extends PackageLikeBlocState {
  @override
  List<Object> get props => [];
}
