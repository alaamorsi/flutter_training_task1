import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/features/ticket/presentation/views_models/ticket_controller.dart';
import 'package:get/get.dart';

class BuildTextformfieldReply extends StatelessWidget {
  final TextEditingController chatController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  final controller = Get.put(TicketController());
  BuildTextformfieldReply({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<TicketController>(
        builder: (controller) => Form(
              key: formKey,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 5.0.sp),
                alignment: Alignment.center,
                width: 1.sw,
                height: 60.h,
                color: Colors.white,
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        autocorrect: true,
                        controller: chatController,
                        cursorColor: Colors.green,
                        cursorErrorColor: Colors.red,
                        style: TextStyle(
                            fontSize: 16.0.sp,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                        onChanged: (String? value) {
                          if (value!.isNotEmpty) {
                            controller.changeTyping(true);
                          } else {controller.changeTyping(false);}
                        },
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 2.0, color: Colors.green),
                            borderRadius: BorderRadius.circular(15.0.sp),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 2.0, color: Colors.green),
                            borderRadius: BorderRadius.circular(15.0.sp),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide:
                                const BorderSide(width: 2.0, color: Colors.red),
                            borderRadius: BorderRadius.circular(15.0.sp),
                          ),
                        ),
                      ),
                    ),
                    if (controller.isTyping.value)
                      Row(
                        children: [
                          SizedBox(
                            width: 5.0.sp,
                          ),
                          Container(
                              width: 45.0,
                              height: 45.0,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      width: 2.0.sp, color: Colors.green)),
                              child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.send),
                                color: Colors.green,
                              ))
                        ],
                      ),
                  ],
                ),
              ),
            ));
  }
}
