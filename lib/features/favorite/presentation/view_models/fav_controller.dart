import 'package:flutter_training_task1/features/favorite/data/models/fav_model.dart';
import 'package:flutter_training_task1/features/favorite/data/repo/fav_repo.dart';
import 'package:get/get.dart';

class FavController extends GetxController {
  RxList<FavModel> favList = <FavModel>[].obs;
  RxBool isLoading = true.obs;

  void changeFavorite(int index) {
    favList[index].isFavorite.value = favList[index].isFavorite.value == 0 ? 1 : 0;
  }

  void fetchData() async {
    favList.value = await FavRepo.getFaveList();
    isLoading.value = false;
  }

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }
}
