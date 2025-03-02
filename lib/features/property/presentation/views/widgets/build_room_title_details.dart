import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/features/property/data/models/property_model.dart';

class BuildRoomTitleDetails extends StatelessWidget {
  final PropertyDetails propertyDetails;
  const BuildRoomTitleDetails({super.key, required this.propertyDetails});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          propertyDetails.title,
          style: TextStyle(
              fontSize: 25.0.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10.0.h,
        ),
        Text(
          '${propertyDetails.address} ${propertyDetails.city}',
          style: TextStyle(
              fontSize: 18.0.sp,
              color: Colors.black,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 5.0.h,
        ),
        Row(
          children: [
            Text(
              propertyDetails.bathroom,
              style: TextStyle(fontSize: 16.0.sp, color: Colors.black),
            ),
            Text(
              ' bathroom',
              style: TextStyle(fontSize: 16.0.sp, color: Colors.black),
            ),
            Text(
              ' · ',
              style: TextStyle(
                  fontSize: 20.0.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.w500),
            ),
            Text(
              propertyDetails.beds,
              style: TextStyle(fontSize: 16.0.sp, color: Colors.black),
            ),
            Text(
              ' beds',
              style: TextStyle(fontSize: 16.0.sp, color: Colors.black),
            ),
          ],
        ),
      ],
    );
  }
}
