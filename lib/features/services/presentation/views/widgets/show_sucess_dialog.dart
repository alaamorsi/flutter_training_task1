import 'package:flutter/material.dart';
import 'package:get/get.dart';

void showSuccessDialog() {
  Get.defaultDialog(
    title: "Success",
    middleText: "Operation completed successfully!",
    backgroundColor: Colors.white,
    titleStyle: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
    middleTextStyle: const TextStyle(color: Colors.black),
    barrierDismissible: false, // Prevent closing by tapping outside
    confirm: ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.green),
      ),
      onPressed: () {
        Get.back(); // Close dialog
      },
      child: const Text("OK",style: TextStyle(color: Colors.white),),
    ),
    content: const Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(Icons.check_circle, color: Colors.green, size: 50),
        SizedBox(height: 10),
        Text("Operation completed successfully!", textAlign: TextAlign.center),
      ],
    ),
  );
}
