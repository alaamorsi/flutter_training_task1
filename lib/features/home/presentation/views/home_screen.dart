import 'package:flutter/material.dart';
import 'package:flutter_training_task1/features/home/presentation/view_models/home_controller.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.lazyPut(()=>HomeController());
  @override
  Widget build(BuildContext context) {
    return GetX<HomeController>(
      builder: (controller) => Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            controller.titlesList[controller.currentIndex.value],
            style: const TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          centerTitle: true,
          scrolledUnderElevation: 0.0,
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: controller.screensList[controller.currentIndex.value],
        bottomNavigationBar: GNav(
          selectedIndex: controller.currentIndex.value,
          onTabChange: (int index) {
            controller.changeBottomNave(index);
          },
          backgroundColor: Colors.blueGrey.shade600,
          iconSize: 27.0,
          gap: 8,
          tabs: const [
            GButton(
              icon: Icons.favorite,
              iconColor: Colors.red,
              text: 'Favorites',
              iconActiveColor: Colors.red,
              backgroundColor: Colors.blueGrey,
              textStyle: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
            GButton(
              icon: Icons.feedback,
              iconColor: Colors.amber,
              text: 'Tickets',
              iconActiveColor: Colors.amber,
              backgroundColor: Colors.blueGrey,
              textStyle: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
            GButton(
              icon: Icons.settings,
              iconColor: Colors.black,
              text: 'Services',
              iconActiveColor: Colors.black,
              backgroundColor: Colors.blueGrey,
              textStyle: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ],
        ),
      ),
    );
  }
}
