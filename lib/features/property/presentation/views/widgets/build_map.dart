import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/features/property/data/models/property_model.dart';
import 'package:flutter_training_task1/features/property/presentation/view_models/map_controller.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class BuildMap extends StatelessWidget {
  final MapController controller = Get.put(MapController());
  final PropertyDetails propertyDetails;
  BuildMap({super.key, required this.propertyDetails});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Where you\'ll be',
          style: TextStyle(
              fontSize: 24.0.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20.0.h,
        ),
        Text(
          propertyDetails.address,
          style: TextStyle(
              fontSize: 18.0.sp,
              color: Colors.black,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 20.0.h,
        ),
        Container(
          width: double.infinity,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0.r),
            border: Border.all(width: 2.0.w, color: Colors.black),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10.0.r),
            child: GoogleMap(
              onMapCreated: controller.onMapCreated,
              initialCameraPosition: CameraPosition(
                target: LatLng(double.parse(propertyDetails.latitude), double.parse(propertyDetails.longitude)),
                zoom: 15.0,
              ),
              markers: {
                Marker(
                  markerId:  MarkerId(propertyDetails.address),
                  position: LatLng(double.parse(propertyDetails.latitude), double.parse(propertyDetails.longitude)),
                  infoWindow:  InfoWindow(title: propertyDetails.address),
                ),
              },
            ),
          ),
        ),
      ],
    );
  }
}
