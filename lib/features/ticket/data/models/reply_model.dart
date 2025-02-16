class ReplyModel {
  late int userId;
  late int adminID;
  late String message;
  ReplyModel(
      {required this.adminID, required this.message, required this.userId});

  ReplyModel.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'] ?? 0;
    adminID = json['admin_id'] ?? 0;
    message = json['message'] ?? '';
  }
}
