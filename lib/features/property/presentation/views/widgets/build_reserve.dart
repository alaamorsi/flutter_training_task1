import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/features/property/data/models/property_model.dart';

class BuildReserve extends StatelessWidget {
  final PropertyDetails propertyDetails;
  const BuildReserve({super.key, required this.propertyDetails});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60.0.h,
      padding: EdgeInsets.all(7.0.w),
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(width: 1.0.w, color: Colors.black))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text(
                '\$${propertyDetails.price}',
                style:
                    TextStyle(fontSize: 18.0.sp, fontWeight: FontWeight.bold),
              ),
              Text(
                'Total before taxes',
                style: TextStyle(fontSize: 13.0.sp, color: Colors.grey),
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
                fixedSize: WidgetStatePropertyAll(
                  Size(150.0.w, 40.0.h),
                ),
                backgroundColor: WidgetStatePropertyAll(Colors.pink.shade800),
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0.r)))),
            child: Text(
              'Reserve',
              style: TextStyle(
                  fontSize: 18.0.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
