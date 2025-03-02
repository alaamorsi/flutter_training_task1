import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/features/property/data/models/property_model.dart';

class BuildHosterCard extends StatelessWidget {
  final PropertyDetails propertyDetails;
  const BuildHosterCard({super.key, required this.propertyDetails});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 60.0.w,
          height: 60.0.w,
          decoration:  BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
                image: CachedNetworkImageProvider(
                    propertyDetails.ownerImage),
                fit: BoxFit.cover),
          ),
        ),
        SizedBox(
          width: 15.0.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              propertyDetails.ownerName,
              style: TextStyle(
                  fontSize: 16.0.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Superhost · 1 year hosting',
              style: TextStyle(
                  fontSize: 14.0.sp,
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}
