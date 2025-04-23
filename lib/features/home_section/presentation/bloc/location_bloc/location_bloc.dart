// import 'package:bloc/bloc.dart';
// import 'package:equatable/equatable.dart';
// import 'package:flutter_consumer_app/shared/services/location_services.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// part 'location_event.dart';
// part 'location_state.dart';

// class LocationBloc extends Bloc<LocationEvent, LocationState> {
//   LocationBloc() : super(LocationInitial()) {
//     on<GetUserGeoLocation>((event, emit) async {
//       emit(GetUserLocationLoading());
//       try {
//         Position position = await determinePosition();

//         Placemark placemark = await getAddressFromLatLong(
//             LatLng(position.latitude, position.longitude));

//         emit(GetUserLocationSuccess(placemark: placemark));
//       } on Exception catch (e) {
//         emit(GetUserLocationFailed());
//       }
//     });
//   }
// }
