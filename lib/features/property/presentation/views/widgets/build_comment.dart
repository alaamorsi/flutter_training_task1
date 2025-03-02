import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/features/property/data/models/property_model.dart';

class BuildComment extends StatelessWidget {
  final Review review;
  const BuildComment({super.key, required this.review});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0.h,
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0.w),
      ),
      child: Container(
        width: 300.0.w,
        height: 150.0.h,
        padding: EdgeInsets.symmetric(horizontal: 15.0.w, vertical: 15.0.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0.w),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RatingBarIndicator(
                  rating: double.parse(review.userRate.toString()),
                  itemBuilder: (context, index) => const Icon(
                    Icons.star,
                    color: Colors.black,
                  ),
                  itemCount: 5,
                  itemSize: 15.0.r,
                  direction: Axis.horizontal,
                ),
                Text(
                  ' · ',
                  style:
                      TextStyle(fontSize: 21.0.sp, fontWeight: FontWeight.w500),
                ),
                Text(
                  '3 weeks ago',
                  style: TextStyle(fontSize: 16.0.sp, color: Colors.grey),
                )
              ],
            ),
            SizedBox(
              height: 10.0.h,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  review.userDesc,
                  style: TextStyle(
                      fontSize: 18.0.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            SizedBox(
              height: 10.0.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 60.0.w,
                  height: 60.0.w,
                  decoration:  BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: CachedNetworkImageProvider(
                          review.userImg),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.0.w,
                ),
                Text(
                  review.userTitle,
                  style: TextStyle(fontSize: 18.0.sp, color: Colors.black),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
