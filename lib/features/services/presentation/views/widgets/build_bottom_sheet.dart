import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/features/services/presentation/view_models/services_controller.dart';
import 'package:flutter_training_task1/features/services/presentation/views/widgets/build_select_services.dart';
import 'package:flutter_training_task1/features/services/presentation/views/widgets/show_sucess_dialog.dart';
import 'package:get/get.dart';

class BuildBottomSheet extends StatelessWidget {
  final ServicesController controller = Get.find();
  final TextEditingController commentsController = TextEditingController();
  BuildBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 30,
      right: 15,
      child: MaterialButton(
        onPressed: () {
          Get.bottomSheet(
            isDismissible: false,
            enableDrag: false,
            // ignore: deprecated_member_use
            WillPopScope(
              onWillPop: () async => false,
              child: Container(
                width: double.infinity,
                height: 300.0.sp,
                padding: EdgeInsets.all(10.0.sp),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0.sp),
                    topRight: Radius.circular(20.0.sp),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Select the services',
                        style: TextStyle(
                          fontSize: 20.0.sp,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 10.0.sp,
                    ),
                    BuildSelectServices(),
                    SizedBox(
                      height: 10.0.sp,
                    ),
                    Text('Comments',
                        style: TextStyle(
                          fontSize: 20.0.sp,
                          fontWeight: FontWeight.bold,
                        )),
                    SizedBox(
                      height: 10.0.sp,
                    ),
                    TextField(
                      controller: commentsController,
                      style: TextStyle(
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.w500,
                      ),
                      onChanged: (value) {
                        controller.comment.value = value;
                      },
                      decoration: InputDecoration(
                        hintText: 'Enter your comments',
                        hintStyle: TextStyle(
                          fontSize: 16.0.sp,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0.sp),
                          borderSide: BorderSide(
                            color: Colors.green.shade600,
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0.sp),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0.sp,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0.sp),
                          ),
                          color: Colors.red.shade600,
                          onPressed: () {
                            if (controller.service1.value == true ||
                                controller.service2.value == true ||
                                controller.service3.value == true) {
                              controller.service1.value = false;
                              controller.service2.value = false;
                              controller.service3.value = false;
                              commentsController.clear();
                            }
                            Get.back();
                          },
                          child: Text(
                            'Cancel',
                            style: TextStyle(
                                fontSize: 20.0.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                        SizedBox(
                          width: 20.0.sp,
                        ),
                        MaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0.sp),
                          ),
                          color: Colors.green.shade600,
                          onPressed: () {
                            if (controller.service1.value == true ||
                                controller.service2.value == true ||
                                controller.service3.value == true) {
                              controller.comment.value =
                                  commentsController.text;
                              controller.sendServicesRequests();
                              controller.service1.value = false;
                              controller.service2.value = false;
                              controller.service3.value = false;
                              commentsController.clear();
                            }
                            Future.delayed(Duration(seconds: 2));
                            Get.back();
                            showSuccessDialog();
                          },
                          child: controller.isLoading2.value
                              ? const Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.white,
                                  ),
                                )
                              : Text(
                                  'Submit',
                                  style: TextStyle(
                                      fontSize: 20.0.sp,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white),
                                ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
        color: Colors.green.shade600,
        padding: EdgeInsets.all(15.0.sp),
        shape: const CircleBorder(),
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
