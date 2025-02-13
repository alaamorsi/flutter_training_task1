import 'package:flutter/material.dart';
import 'package:flutter_training_task1/features/favorite/presentation/view_models/fav_controller.dart';
import 'package:flutter_training_task1/features/favorite/presentation/views/widgets/build_fav_list.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final FavController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
          elevation: 0.0,
          title: const Text(
            'Favorites',
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: GetX<FavController>(
          builder: (c) => controller.isLoading.value == true
              ? const Center(
                  child: CircularProgressIndicator(
                    color: Colors.green,
                  ),
                )
              : ListView.separated(
                  itemBuilder: (context, index) => BuildFavList(
                        model: controller.favList[index],
                        index: index,
                      ),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10.0,
                      ),
                  itemCount: controller.favList.length),
        ));
  }
}
