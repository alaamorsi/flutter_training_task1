import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/features/property/presentation/view_models/property_controller.dart';
import 'package:flutter_training_task1/features/property/presentation/views/widgets/build_card_star_reviews.dart';
import 'package:flutter_training_task1/features/property/presentation/views/widgets/build_comment.dart';
import 'package:flutter_training_task1/features/property/presentation/views/widgets/build_hoster_card.dart';
import 'package:flutter_training_task1/features/property/presentation/views/widgets/build_map.dart';
import 'package:flutter_training_task1/features/property/presentation/views/widgets/build_reserve.dart';
import 'package:flutter_training_task1/features/property/presentation/views/widgets/build_room_title_details.dart';
import 'package:flutter_training_task1/features/property/presentation/views/widgets/build_silver_appbar.dart';
import 'package:flutter_training_task1/features/property/presentation/views/widgets/build_what_offers.dart';
import 'package:get/get.dart';

class PropertyDetailsScreen extends StatelessWidget {
  final PropertyController controller = Get.find();
  PropertyDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetX<PropertyController>(
      builder: (controller) => Scaffold(
        backgroundColor: Colors.white,
        body: controller.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(
                color: Colors.blue,
              ))
            : Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomScrollView(
                    slivers: [
                      BuildSilverAppbar(
                        list: controller
                            .propertyDetailsModel.value!.propetydetails.image,
                      ),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: EdgeInsets.all(15.0.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 10.0.h,
                              ),
                              BuildRoomTitleDetails(
                                propertyDetails: controller
                                    .propertyDetailsModel.value!.propetydetails,
                              ),
                              SizedBox(
                                height: 10.0.h,
                              ),
                              BuildCardStarReviews(
                                propertyDetails: controller
                                    .propertyDetailsModel.value!.propetydetails,
                                totalReviews: controller
                                    .propertyDetailsModel.value!.totalReview
                                    .toString(),
                              ),
                              SizedBox(
                                height: 10.0.h,
                              ),
                              BuildHosterCard(
                                propertyDetails: controller
                                    .propertyDetailsModel.value!.propetydetails,
                              ),
                              SizedBox(
                                height: 10.0.h,
                              ),
                              Container(
                                width: double.infinity,
                                height: 1.0.h,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(
                                height: 20.0.h,
                              ),
                              BuildWhatOffers(
                                list: controller
                                    .propertyDetailsModel.value!.facility,
                              ),
                              SizedBox(
                                height: 20.0.h,
                              ),
                              Container(
                                width: double.infinity,
                                height: 1.0.h,
                                color: Colors.grey.shade400,
                              ),
                              SizedBox(
                                height: 20.0.h,
                              ),
                              BuildMap(
                                propertyDetails: controller
                                    .propertyDetailsModel.value!.propetydetails,
                              ),
                              SizedBox(
                                height: 30.0.h,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        'assets/images/left.png',
                                        fit: BoxFit.contain,
                                        width: 60.0.w,
                                        height: 60.0.w,
                                      ),
                                      Text(
                                        controller.propertyDetailsModel.value!.propetydetails.rate,
                                        style: TextStyle(
                                            fontSize: 34.0.sp,
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Image.asset(
                                        'assets/images/right.png',
                                        fit: BoxFit.contain,
                                        width: 60.0.w,
                                        height: 60.0.w,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10.0.h,
                                  ),
                                  Text(
                                    'Guest favorite',
                                    style: TextStyle(
                                        fontSize: 18.0.sp,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    'This home is a guest favorite based on\n          rating, reviews, and reliability',
                                    style: TextStyle(
                                        fontSize: 14.0.sp, color: Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.0.h,
                              ),
                              SizedBox(
                                height: 200.0.h,
                                child: controller.propertyDetailsModel.value!
                                        .reviewlist.isEmpty
                                    ? Center(
                                        child: Text(
                                        'No comments yet!',
                                        style: TextStyle(fontSize: 21.0.sp),
                                      ))
                                    : ListView.separated(
                                        scrollDirection: Axis.horizontal,
                                        itemBuilder: (context, index) =>
                                            BuildComment(
                                              review: controller
                                                  .propertyDetailsModel
                                                  .value!
                                                  .reviewlist[index],
                                            ),
                                        separatorBuilder: (context, index) =>
                                            SizedBox(
                                              width: 10.0.w,
                                            ),
                                        itemCount: controller
                                            .propertyDetailsModel
                                            .value!
                                            .reviewlist
                                            .length),
                              ),
                           SizedBox(height: 50.0.h,),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  BuildReserve(
                      propertyDetails:
                          controller.propertyDetailsModel.value!.propetydetails)
                ],
              ),
      ),
    );
  }
}
