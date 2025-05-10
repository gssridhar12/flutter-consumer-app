
import 'package:equatable/equatable.dart';

// Define states for the LikeCubit
class LikeState extends Equatable {
  final bool isLiked;
  final bool isLoading;
  final String errorMessage;

  const LikeState({
    required this.isLiked,
    required this.isLoading,
    required this.errorMessage,
  });

  factory LikeState.initial() {
    
    return const LikeState(
      isLiked: false,
      isLoading: false,
      errorMessage: '',
    );
  }

  LikeState copyWith({
    bool? isLiked,
    bool? isLoading,
    String? errorMessage,
  }) {
    return LikeState(
      isLiked: isLiked ?? this.isLiked,
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object> get props => [isLiked, isLoading, errorMessage];
}