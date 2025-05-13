import 'package:equatable/equatable.dart';

sealed class BucketListEvent extends Equatable {
  const BucketListEvent();

  @override
  List<Object> get props => [];
}

class GetBucketData extends BucketListEvent {
  final String partnerId;
  const GetBucketData({required this.partnerId});
  @override
  List<Object> get props => [partnerId];
}
