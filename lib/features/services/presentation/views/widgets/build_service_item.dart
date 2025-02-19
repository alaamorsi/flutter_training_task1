import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/features/services/data/models/services_model.dart';
import 'package:flutter_training_task1/features/services/presentation/views/widgets/build_services_types.dart';

class BuildServiceItem extends StatelessWidget {
  final ServicesModel serviceRequest;
  const BuildServiceItem({super.key, required this.serviceRequest});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(
        minHeight: 120.0.sp,
      ),
      padding: EdgeInsets.all(10.0.sp),
      margin: EdgeInsets.symmetric(horizontal: 10.0.sp),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Service request (${serviceRequest.id})', 
            style: TextStyle(fontSize: 21.0.sp, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.0.sp,
          ),
          Text(
            'Services : ',
            style: TextStyle(fontSize: 18.0.sp, fontWeight: FontWeight.bold),
          ),
         BuildServicesTypes(list: serviceRequest.services),
          SizedBox(
            height: 5.0.sp,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Comment : ',
                  style: TextStyle(
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextSpan(
                  text: serviceRequest.comment,
                  style: TextStyle(fontSize: 16.0.sp, color: Colors.black),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5.0.sp,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Status : ',
                  style: TextStyle(
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                TextSpan(
                  text: serviceRequest.status,
                  style: TextStyle(fontSize: 16.0.sp, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
