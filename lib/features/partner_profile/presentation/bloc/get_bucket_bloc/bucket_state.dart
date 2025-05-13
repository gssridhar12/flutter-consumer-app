part of 'bucket_bloc.dart';

sealed class BucketState extends Equatable {
  const BucketState();
  
  @override
  List<Object> get props => [];
}

final class BucketInitial extends BucketState {}
class GetBucketSuccess extends BucketState {
  final GetBucketEntity bucket;

  const GetBucketSuccess({required this.bucket});
  @override
  List<Object> get props => [bucket];
}

class GetBucketFailed extends BucketState {
  @override
  List<Object> get props => [];
}

class GetBucketLoading extends BucketState {
  @override
  List<Object> get props => [];
}
