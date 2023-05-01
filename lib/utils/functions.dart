import 'package:geolocator/geolocator.dart';

Future<void> _getCurrentLocation() async {
  final position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high);
}