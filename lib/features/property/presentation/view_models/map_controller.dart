import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapController extends GetxController {
  late GoogleMapController mapController;
  
  final LatLng propertyLocation = const LatLng(29.9819902, 31.426166);

  void onMapCreated(GoogleMapController controller) {
    mapController = controller;
    update();
  }
}
