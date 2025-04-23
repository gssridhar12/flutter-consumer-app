part of 'location_cubit.dart';

class LocationState extends Equatable {
  final String location;
  final bool isLoading;
  final bool hasError;

  const LocationState({
    required this.location,
    required this.isLoading,
    required this.hasError,
  });

  factory LocationState.initial() {
    return const LocationState(
      location: 'Unknown',
      isLoading: false,
      hasError: false,
    );
  }

  LocationState copyWith({
    String? location,
    bool? isLoading,
    bool? hasError,
  }) {
    return LocationState(
      location: location ?? this.location,
      isLoading: isLoading ?? this.isLoading,
      hasError: hasError ?? this.hasError,
    );
  }

  @override
  List<Object?> get props => [location, isLoading, hasError];
}
