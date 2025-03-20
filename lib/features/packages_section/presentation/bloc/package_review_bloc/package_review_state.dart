part of 'package_review_bloc.dart';

sealed class PackageReviewState extends Equatable {
  const PackageReviewState();

  @override
  List<Object> get props => [];
}

final class PackageReviewInitial extends PackageReviewState {}

class GetPackageReviewSuccess extends PackageReviewState {
  final PackageReviewEntity reviews;

  const GetPackageReviewSuccess({required this.reviews});
  @override
  List<Object> get props => [reviews];
}

class GetPackageReviewFailed extends PackageReviewState {
  @override
  List<Object> get props => [];
}

class GetPackageReviewLoading extends PackageReviewState {
  @override
  List<Object> get props => [];
}
class NoPackageReviewsFound extends PackageReviewState {
  @override
  List<Object> get props => [];
}
