part of 'review_bloc_bloc.dart';

sealed class PartnerReviewBlocEvent extends Equatable {
  const PartnerReviewBlocEvent();

  @override
  List<Object> get props => [];
}



class GetPartnerReviews extends PartnerReviewBlocEvent {
  final String partnerUuid;
  const GetPartnerReviews(this.partnerUuid);

  @override
  List<Object> get props => [partnerUuid];
}
