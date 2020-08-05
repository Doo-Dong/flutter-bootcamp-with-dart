import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  double getLatitude() {
    return latitude;
  }

  double getLongitude() {
    return longitude;
  }

  Future<void> getPosition() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

      latitude = position.latitude;
      longitude = position.longitude;
    } catch (e) {
      print(e);
    }
  }
}
