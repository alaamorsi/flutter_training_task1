import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_training_task1/features/favorite/data/models/fav_model.dart';
import 'package:flutter_training_task1/features/favorite/presentation/views_models/fav_controller.dart';
import 'package:get/get.dart';

class BuildFavList extends StatelessWidget {
  final FavModel model;
  final int index;

  const BuildFavList({super.key, required this.model, required this.index});

  @override
  Widget build(BuildContext context) {
    return GetX<FavController>(
      builder: (controller) => Padding(
              padding: const EdgeInsets.all(5.0),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0)),
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 200.0,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: CachedNetworkImageProvider(model.image),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 10,
                      right: 10,
                      child: IconButton(
                        onPressed: () {
                          controller.changeFavorite(model.id);
                        },
                        icon: model.isFavorite.value == 1
                            ? const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 25.0,
                              )
                            : Icon(
                                Icons.favorite_border,
                                color: Colors.grey.shade600,
                                size: 25.0,
                              ),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      right: 20,
                      child: RatingBarIndicator(
                        rating: double.parse(model.rate),
                        itemBuilder: (context, index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        itemCount: 5,
                        itemSize: 25.0,
                        // Adjust size as needed
                        direction: Axis.horizontal,
                      ),
                    ),
                    Positioned(
                      top: 20,
                      left: 20,
                      child: Text(
                        model.title,
                        style: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Positioned(
                      top: 60,
                      left: 20,
                      child: Text(
                        model.city,
                        style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 20,
                      child: Text(
                        '\$${model.price.toString()}',
                        style: const TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
