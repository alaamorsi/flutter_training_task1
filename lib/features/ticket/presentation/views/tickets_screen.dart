import 'package:flutter/material.dart';
import 'package:flutter_training_task1/features/ticket/presentation/views/widgets/build_tickets_item.dart';
import 'package:flutter_training_task1/features/ticket/presentation/view_models/ticket_controller.dart';
import 'package:get/get.dart';

class TicketsScreen extends StatelessWidget {
  TicketsScreen({super.key});
  final TicketController controller = Get.find();
  @override
  Widget build(BuildContext context) {
    return controller.isLoading.value
        ? const Center(
            child: CircularProgressIndicator(
            color: Colors.amber,
          ))
        : ListView.separated(
            itemBuilder: (context, index) => BuildTicketsItem(
                  ticket: controller.ticketsList[index],
                ),
            separatorBuilder: (context, index) => const SizedBox(
                  height: 10.0,
                ),
            itemCount: controller.ticketsList.length);
  }
}
