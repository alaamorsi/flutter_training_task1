import 'package:get/get.dart';

class FavModel {
  late String title;
  late String city;
  late String image;
  late int price;
  late String rate;
  late RxInt isFavorite;

  FavModel({
    required this.title,
    required this.city,
    required this.isFavorite,
    required this.image,
    required this.price,
    required this.rate,
  });

  FavModel.fromJson(Map<String, dynamic> json) {
    title = json['title'] ?? '';
    city = json['city'] ?? '';
    isFavorite = json['isFavorite'] ?? 1.obs;
    image = json['image'] ?? '';
    price = json['price'] ?? 100;
    rate = json['rate'] ?? '0.5';
  }
}
