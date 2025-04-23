import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/features/home_section/domain/entities/request/add_like_request.dart';
import 'package:flutter_consumer_app/features/home_section/presentation/bloc/package_like_bloc/package_like_bloc_bloc.dart';

sealed class PartnerLikeBlocEvent extends Equatable {
  const PartnerLikeBlocEvent();

  @override
  List<Object> get props => [];
}

class AddPartnerLike extends PartnerLikeBlocEvent {
  final AddPartnerLikeRequest addPartnerLikeRequest;

  const AddPartnerLike({required this.addPartnerLikeRequest});

  @override
  List<Object> get props => [addPartnerLikeRequest];
}

class GetPartnerLike extends PartnerLikeBlocEvent {
  final String partnerUuid;

  const GetPartnerLike({required this.partnerUuid});

  @override
  List<Object> get props => [partnerUuid];
}
