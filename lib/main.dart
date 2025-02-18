import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/core/services/api_services/dio_helper.dart';
import 'package:flutter_training_task1/features/favorite/presentation/view_models/fav_controller.dart';
import 'package:flutter_training_task1/features/home/presentation/views/home_screen.dart';
import 'package:flutter_training_task1/features/services/presentation/view_models/services_controller.dart';
import 'package:flutter_training_task1/features/ticket/presentation/view_models/ticket_controller.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  DioHelper.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) => GetMaterialApp(
        initialBinding: BindingsBuilder(() {
          Get.put(FavController());
          Get.put(TicketController());
          Get.put(ServicesController());
        }),
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}
