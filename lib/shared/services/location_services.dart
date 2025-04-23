import 'dart:developer';

import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// Future<GeoAddress> getAddressFromLatLng(double lat, double lng) async {
//   String host = 'https://maps.google.com/maps/api/geocode/json';
//   final url = '$host?key=$mapApiKey&language=en&latlng=$lat,$lng';
//   log(url);

//   var response = await http.get(Uri.parse(url));
//   if (response.statusCode == 200) {
//     GeoAddress geoAddress = jsonDecode(response.body);
//     return geoAddress;
//   }
//   throw Exception();
// }

Future<Placemark> getAddressFromLatLong(LatLng position) async {
  List<Placemark> placeMark =
      await placemarkFromCoordinates(position.latitude, position.longitude);
  log(placeMark[0].toString());
  return placeMark[0];
}

Future<Position> determinePosition() async {
  bool serviceEnabled;
  LocationPermission permission;

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    await Geolocator.openLocationSettings();
    return Future.error('Location services are disabled.');
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }

  // When we reach here, permissions are granted and we can
  // continue accessing the position of the device.
  return await Geolocator.getCurrentPosition();
}

///This function is used for fetching location with lat long of the device and returns a [Placemark] object
Future<Placemark> getUserLocation() async {
  Position position = await determinePosition();

  Placemark placemark = await getAddressFromLatLong(
      LatLng(position.latitude, position.longitude));

  return placemark;
}
