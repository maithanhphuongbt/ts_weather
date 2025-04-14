import 'package:geolocator/geolocator.dart';
import 'package:ts_weather/core/error/app_exceptions.dart';

class LocationService {
  LocationService._internal();

  static final LocationService _instance = LocationService._internal();

  factory LocationService() => _instance;

  Future<Position> getCurrentPosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw const AppException.locationNotAvailable();
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        throw const AppException.locationDenied();
      }
    }

    if (permission == LocationPermission.deniedForever) {
      throw const AppException.locationDeniedForever();
    }

    return await Geolocator.getCurrentPosition();
  }
}
