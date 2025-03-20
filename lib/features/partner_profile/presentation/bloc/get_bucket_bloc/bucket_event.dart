part of 'bucket_bloc.dart';

sealed class BucketEvent extends Equatable {
  const BucketEvent();

  @override
  List<Object> get props => [];
}

class GetBucket extends BucketEvent {
  final String uuid;
  const GetBucket({required this.uuid});

  @override
  List<Object> get props => [uuid];
}
