part of 'package_like_bloc_bloc.dart';

sealed class PackageLikeBlocEvent extends Equatable {
  const PackageLikeBlocEvent();

  @override
  List<Object> get props => [];
}

class AddPackageLike extends PackageLikeBlocEvent {
  final AddPackageLikeRequest addPackageLikeRequest;

 const AddPackageLike({required this.addPackageLikeRequest});

    @override
  List<Object> get props => [addPackageLikeRequest];
}


class GetPackageLike extends PackageLikeBlocEvent {
  final String userId;

 const GetPackageLike({required this.userId});

    @override
  List<Object> get props => [userId];
}
