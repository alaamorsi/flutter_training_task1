import 'package:flutter_training_task1/features/ticket/data/models/tickets_model.dart';
import 'package:flutter_training_task1/features/ticket/data/repo/tickets_repo.dart';
import 'package:get/get.dart';

class TicketController extends GetxController {
  RxBool isTyping = false.obs;
  void changeTyping(bool typing) {
    isTyping.value = typing;
  }

  RxList<TicketsModel> ticketsList = <TicketsModel>[].obs;
  RxBool isLoading = true.obs;

  void fetchTickects() async {
    ticketsList.value = await TicketsRepo.getTickets();
    isLoading.value = false;
  }

  @override
  void onInit() {
    super.onInit();
    fetchTickects();
  }
}
