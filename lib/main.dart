import 'package:flutter/material.dart';
import 'package:flutter_training_task1/core/services/api_services/dio_helper.dart';
import 'package:flutter_training_task1/features/favorite/presentation/view_models/fav_controller.dart';
import 'package:get/get.dart';

import 'features/favorite/presentation/views/home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  Get.put(FavController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
