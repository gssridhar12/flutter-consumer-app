part of 'review_bloc_bloc.dart';

sealed class PartnerReviewBlocState extends Equatable {
  const PartnerReviewBlocState();
  
  @override
  List<Object> get props => [];
}

final class PartnerReviewBlocInitial extends PartnerReviewBlocState {}



class GetPartnerReviewSuccess extends PartnerReviewBlocState {
  final PartnerReviewEntity reviews;

  const GetPartnerReviewSuccess({required this.reviews});
  @override
  List<Object> get props => [reviews];
}

class GetPartnerReviewFailed extends PartnerReviewBlocState {
  @override
  List<Object> get props => [];
}

class GetPartnerReviewLoading extends PartnerReviewBlocState {
  @override
  List<Object> get props => [];
}

class NoPartnerReviewsFound extends PartnerReviewBlocState {
  @override
  List<Object> get props => [];
}
