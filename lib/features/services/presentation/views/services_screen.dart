import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/features/services/presentation/view_models/services_controller.dart';
import 'package:flutter_training_task1/features/services/presentation/views/widgets/build_bottom_sheet.dart';
import 'package:flutter_training_task1/features/services/presentation/views/widgets/build_service_item.dart';
import 'package:get/get.dart';

class ServicesScreen extends StatelessWidget {
  final ServicesController controller = Get.find();
  ServicesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return controller.isLoading1.value
        ? Center(
            child: CircularProgressIndicator(
              color: Colors.green.shade600,
            ),
          )
        : Stack(
            children: [
              Column(
                children: [
                  Expanded(
                    child: GetX<ServicesController>(
                      builder: (controller) => ListView.separated(
                        itemBuilder: (context, index) => BuildServiceItem(
                            serviceRequest:
                                controller.servicesRequestsList[index]),
                        separatorBuilder: (context, index) => SizedBox(
                          height: 10.0.sp,
                        ),
                        itemCount: controller.servicesRequestsList.length,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10.0.sp,
                  ),
                ],
              ),
              BuildBottomSheet(),
            ],
          );
  }
}
