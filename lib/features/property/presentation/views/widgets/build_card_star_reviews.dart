import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/features/property/data/models/property_model.dart';

class BuildCardStarReviews extends StatelessWidget {
  final PropertyDetails propertyDetails;
  final String totalReviews;

  const BuildCardStarReviews(
      {super.key, required this.propertyDetails, required this.totalReviews});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0.h,
      width: double.infinity,
      padding: EdgeInsets.all(10.0.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0.r),
        border: Border.all(width: 1.5.w, color: Colors.grey.shade400),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                propertyDetails.rate == '-' ? '2' : propertyDetails.rate,
                style: TextStyle(
                    fontSize: 18.0.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              RatingBarIndicator(
                rating: double.parse(
                    propertyDetails.rate == '-' ? '2' : propertyDetails.rate),
                itemBuilder: (context, index) => const Icon(
                  Icons.star,
                  color: Colors.black,
                ),
                itemCount: 5,
                itemSize: 15.0.r,
                direction: Axis.horizontal,
              ),
            ],
          ),
          Container(
            width: 1.0.w,
            height: 40.0.h,
            color: Colors.black,
          ),
          Image.asset(
            'assets/images/left.png',
            height: 40.0.h,
            width: 30.0.w,
            fit: BoxFit.contain,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Guest',
                style: TextStyle(
                  fontSize: 16.0.sp,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                strutStyle: const StrutStyle(
                  forceStrutHeight: true,
                  height: 1,
                ),
              ),
              SizedBox(
                height: 5.0.h,
              ),
              Text(
                'favorite',
                style: TextStyle(
                    fontSize: 16.0.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
                strutStyle: const StrutStyle(
                  forceStrutHeight: true,
                  height: 1,
                ),
              ),
            ],
          ),
          Image.asset(
            'assets/images/right.png',
            height: 40.0.h,
            width: 30.0.w,
            fit: BoxFit.contain,
          ),
          Container(
            width: 1.0.w,
            height: 40.0.h,
            color: Colors.black,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                totalReviews,
                style: TextStyle(
                    fontSize: 18.0.sp,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              Container(
                  height: 16.0.h,
                  decoration: BoxDecoration(
                    border: BorderDirectional(
                      bottom: BorderSide(width: 1.0.w, color: Colors.black),
                    ),
                  ),
                  child: Text(
                    'Reviews',
                    style: TextStyle(
                        fontSize: 16.0.sp,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
