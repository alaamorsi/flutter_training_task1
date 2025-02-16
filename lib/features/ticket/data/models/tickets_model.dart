import 'package:flutter_training_task1/features/ticket/data/models/reply_model.dart';

class TicketsModel {
  late String subject;
  late String message;
  late String status;
  late List<ReplyModel> replies;

  TicketsModel({
    required this.subject,
    required this.message,
    required this.status,
    required this.replies,
  });

  TicketsModel.fromJson(Map<String, dynamic> json) {
    subject = json['subject'] ?? '';
    message = json['message'] ?? '';
    status = json['status'] ?? '';
    if (json['replies'] != null) {
      replies = List<ReplyModel>.from(
        json['replies'].map((reply) => ReplyModel.fromJson(reply)),
      );
    } else {
      replies = [];
    }
  }
}
