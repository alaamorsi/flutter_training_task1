import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/features/ticket/data/models/reply_model.dart';
import 'package:flutter_training_task1/features/ticket/presentation/views/widgets/build_reply_item.dart';
import 'package:flutter_training_task1/features/ticket/presentation/views/widgets/build_textformfield_reply.dart';

class RepliesScreen extends StatelessWidget {
  final List<ReplyModel> replys;
  const RepliesScreen({super.key, required this.replys});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Tickets replies',
          style: TextStyle(
              fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        centerTitle: true,
        elevation: 0.0,
        scrolledUnderElevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: replys.isEmpty
          ? Center(
              child: Text(
                'There are no messages yet.',
                style: TextStyle(fontSize: 20.0.sp, color: Colors.black),
              ),
            )
          : ListView.separated(
              itemBuilder: (context, index) => BuildReplyItem(
                    reply: replys[index],
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    height: 10.0.h,
                  ),
              itemCount: replys.length),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      resizeToAvoidBottomInset: true,
      floatingActionButton: BuildTextformfieldReply(),
    );
  }
}
