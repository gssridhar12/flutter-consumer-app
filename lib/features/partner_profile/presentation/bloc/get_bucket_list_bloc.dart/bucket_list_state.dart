// part of 'bucket_bloc.dart';

import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/features/partner_profile/domain/entities/get_bucket_list_entity.dart';

sealed class BucketListState extends Equatable {
  const BucketListState();
  @override
  List<Object> get props => [];
}

final class BucketListInitial extends BucketListState {}

class GetBucketListSuccess extends BucketListState {
  final GetBucketListModel bucket;
  const GetBucketListSuccess({required this.bucket});

  @override
  List<Object> get props => [bucket];
}

class GetBucketListFailed extends BucketListState {
  @override
  List<Object> get props => [];
}

class GetBucketListLoading extends BucketListState {
  @override
  List<Object> get props => [];
}
