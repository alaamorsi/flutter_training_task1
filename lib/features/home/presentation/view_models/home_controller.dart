import 'package:flutter/material.dart';
import 'package:flutter_training_task1/features/favorite/presentation/views/favorite_screen.dart';
import 'package:flutter_training_task1/features/services/presentation/views/services_screen.dart';
import 'package:flutter_training_task1/features/ticket/presentation/views/tickets_screen.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxList<Widget> screensList = <Widget>[
    FavoriteScreen(),
   TicketsScreen(),
   ServicesScreen(),
  ].obs;
  RxList<String> titlesList = <String>[
    'Favorites',
    'Tickets',
    'Services',
  ].obs;

  void changeBottomNave(int index) {
    currentIndex.value = index;
  }
}
