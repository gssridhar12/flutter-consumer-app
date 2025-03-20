import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/add_like_entity.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/response/get_like_entity.dart';


sealed class PartnerLikeBlocState extends Equatable {
  const PartnerLikeBlocState();
  
  @override
  List<Object> get props => [];
}

final class PartnerLikeBlocInitial extends PartnerLikeBlocState {}


class GetPartnerLikeSuccess extends PartnerLikeBlocState {
  final GetPartnerLikeEntity getPartnerLikeEntity;

  const GetPartnerLikeSuccess({required this.getPartnerLikeEntity});
  @override
  List<Object> get props => [getPartnerLikeEntity];
}

class GetPartnerLikeFailed extends PartnerLikeBlocState {
  @override
  List<Object> get props => [];
}

class GetPartnerLikeLoading extends PartnerLikeBlocState {
  @override
  List<Object> get props => [];
}



class AddPartnerLikeSuccess extends PartnerLikeBlocState {
  final AddPartnerLikeEntity addPartnerLikeEntity;

  const AddPartnerLikeSuccess({required this.addPartnerLikeEntity});
  @override
  List<Object> get props => [addPartnerLikeEntity];
}

class AddPartnerLikeFailed extends PartnerLikeBlocState {
  @override
  List<Object> get props => [];
}

class AddPartnerLikeLoading extends PartnerLikeBlocState {
  @override
  List<Object> get props => [];
}