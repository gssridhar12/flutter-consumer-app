import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_consumer_app/main.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

part 'location_state.dart';

class LocationCubit extends Cubit<LocationState> {
  LocationCubit() : super(LocationState.initial());

  Future<void> getLocation() async {
    emit(state.copyWith(isLoading: true, hasError: false));

    try {
      // Check if there is a location saved in local storage
      String savedLocation = await loadLocationFromPreferences();

      if (savedLocation != 'Unknown') {
        // If there is a saved location, use it
        emit(state.copyWith(
          location: savedLocation,
          isLoading: false,
          hasError: false,
        ));
      } else {
        // If no location is saved, get the location from the device
        if (await _hasLocationPermission()) {
          Placemark placemark = await getUserLocation();
          await saveLocationToPreferences(placemark);
          emit(state.copyWith(
            location: placemark.locality ?? 'No data',
            isLoading: false,
            hasError: false,
          ));
        } else {
          // Handle case where location permissions are not granted
          emit(state.copyWith(
            location: 'Permission denied',
            isLoading: false,
            hasError: true,
          ));
        }
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, hasError: true));
    }
  }

  Future<void> fetchLocationManually() async {
    emit(state.copyWith(isLoading: true, hasError: false));
    try {
      if (await _hasLocationPermission()) {
        Placemark placemark = await getUserLocation();
        await saveLocationToPreferences(placemark);
        emit(state.copyWith(
          location: placemark.locality ?? 'No data',
          isLoading: false,
          hasError: false,
        ));
      } else {
        // Handle case where location permissions are not granted
        emit(state.copyWith(
          location: 'Permission denied',
          isLoading: false,
          hasError: true,
        ));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false, hasError: true));
    }
  }

  Future<void> updateLocation(String city) async {
    emit(state.copyWith(location: city));
    await localDb.setString('userCity', city);
  }

  Future<bool> _hasLocationPermission() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return false;
    }

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return false;
      }
    }
    return permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse;
  }

  Future<Placemark> getUserLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    return placemarks.first;
  }

  Future<String> loadLocationFromPreferences() async {
    return localDb.getString('userCity') ?? 'Unknown';
  }

  Future<void> saveLocationToPreferences(Placemark placemark) async {
    await localDb.setString('userCity', placemark.locality ?? 'Unknown');
  }
}
