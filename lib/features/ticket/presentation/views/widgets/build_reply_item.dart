import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/features/ticket/data/models/reply_model.dart';

class BuildReplyItem extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  final ReplyModel reply;
  BuildReplyItem({super.key, required this.reply});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment:
                reply.adminID == 0 ? MainAxisAlignment.start : MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(10.0.sp),
                constraints: BoxConstraints(
                    minHeight: 50.0.sp, maxWidth: 0.5.sw - 15.0.w),
                decoration: BoxDecoration(
                  borderRadius: reply.adminID == 0
                      ? BorderRadius.only(
                          topRight: Radius.circular(15.0.sp),
                          bottomLeft: Radius.circular(15.0.sp),
                          bottomRight: Radius.circular(15.0.sp))
                      : BorderRadius.only(
                          topLeft: Radius.circular(15.0.sp),
                          bottomLeft: Radius.circular(15.0.sp),
                          bottomRight: Radius.circular(15.0.sp)),
                  color: reply.adminID == 0 ? Colors.green : Colors.grey,
                ),
                child: Text(
                  reply.message,
                  style: TextStyle(
                      fontSize: 16.0.sp,
                      fontWeight: FontWeight.w500,
                      color: Colors.black),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
