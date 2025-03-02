import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/features/property/data/models/property_model.dart';

class BuildWhatOffers extends StatelessWidget {
  final List<Facility> list;
  const BuildWhatOffers({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'What this place offers',
          style: TextStyle(
              fontSize: 24.0.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20.0.h,
        ),
        SizedBox(
          height: 200.0.h,
          child: ListView.separated(
            shrinkWrap: true,
              itemBuilder: (context, index) => Row(
                    children: [
                      CachedNetworkImage(
                        imageUrl:
                            list[index].img,
                        width: 35.0.w,
                        height: 35.0.w,
                        fit: BoxFit.contain,
                      ),
                      SizedBox(
                        width: 20.0.w,
                      ),
                      Text(
                        list[index].title,
                        style: TextStyle(
                          fontSize: 21.0.sp,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 10.0.h,
                  ),
              itemCount: list.length),
        )
      ],
    );
  }
}
