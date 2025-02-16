import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/features/ticket/data/models/tickets_model.dart';
import 'package:flutter_training_task1/features/ticket/presentation/views/replies_screen.dart';
import 'package:get/get.dart';

class BuildTicketsItem extends StatelessWidget {
  final TicketsModel ticket;
  const BuildTicketsItem({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => RepliesScreen(replys: ticket.replies,));
      },
      child: Container(
        width: double.infinity,
        constraints: BoxConstraints(minHeight: 160.0.sp),
        padding: const EdgeInsets.only(
            top: 10.0, left: 10.0, right: 10.0, bottom: 20.0),
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        decoration: BoxDecoration(
          color: Colors.amber.shade300,
          border: Border.all(width: 2.0, color: Colors.black),
          borderRadius: BorderRadius.circular(12.5),
        ),
        child: Stack(
          children: [
             Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  ticket.subject,
                  style: const TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  ticket.message,
                  style: const TextStyle(fontSize: 16.0, color: Colors.black),
                ),
              ],
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.all(5.sp),
                  decoration: BoxDecoration(
                    color: ticket.status=='open' ?Colors.green : ticket.status == 'closed' ? Colors.red:Colors.cyan.shade600,
                    border: Border.all(width: 2.0.sp, color: Colors.black),
                    borderRadius: BorderRadius.circular(10.0.sp),
                  ),
                  child: Text(
                    ticket.status,
                    style: TextStyle(
                        fontSize: 16.0.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
