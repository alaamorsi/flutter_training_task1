import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/features/services/presentation/view_models/services_controller.dart';
import 'package:get/get.dart';

class BuildSelectServices extends StatelessWidget {
  const BuildSelectServices({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<ServicesController>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {
              controller.service1.value = !controller.service1.value;
            },
            child: Container(
              padding: EdgeInsets.all(5.0.sp),
              decoration: BoxDecoration(
                color: controller.service1.value
                    ? Colors.green.shade600
                    : Colors.grey,
                borderRadius: BorderRadius.circular(10.0.sp),
              ),
              child: Text(
                'House Keeping',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0.sp,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              controller.service2.value = !controller.service2.value;
            },
            child: Container(
              padding: EdgeInsets.all(5.0.sp),
              decoration: BoxDecoration(
                color: controller.service2.value
                    ? Colors.green.shade600
                    : Colors.grey,
                borderRadius: BorderRadius.circular(10.0.sp),
              ),
              child: Text(
                'Maintanace',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0.sp,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              controller.service3.value = !controller.service3.value;
            },
            child: Container(
              padding: EdgeInsets.all(5.0.sp),
              decoration: BoxDecoration(
                color: controller.service3.value
                    ? Colors.green.shade600
                    : Colors.grey,
                borderRadius: BorderRadius.circular(10.0.sp),
              ),
              child: Text(
                'Order a taxi',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0.sp,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
