part of 'package_review_bloc.dart';

sealed class PackageReviewEvent extends Equatable {
  const PackageReviewEvent();

  @override
  List<Object> get props => [];
}

class GetPackageReviews extends PackageReviewEvent {
  final String packageUuid;
  const GetPackageReviews(this.packageUuid);

  @override
  List<Object> get props => [packageUuid];
}
