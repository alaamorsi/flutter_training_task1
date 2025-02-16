import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/core/services/api_services/dio_helper.dart';
import 'package:flutter_training_task1/features/favorite/presentation/views_models/fav_controller.dart';
import 'package:flutter_training_task1/features/home/presentation/views/home_screen.dart';
import 'package:flutter_training_task1/features/ticket/presentation/views_models/ticket_controller.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();
  Get.put(FavController());
  Get.put(TicketController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
    builder: (_, child) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
