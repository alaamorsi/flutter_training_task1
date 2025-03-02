import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/features/property/data/models/property_model.dart';

class BuildSilverAppbar extends StatelessWidget {
  final List<ImageData> list;
  const BuildSilverAppbar({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 0.30.sh,
      flexibleSpace: FlexibleSpaceBar(
        background: PageView.builder(
          itemBuilder: (context, index) => Stack(
            alignment: Alignment.bottomRight,
            children: [
              CachedNetworkImage(
                imageUrl: list[index].image,
                fit: BoxFit.fill,
                width: 1.sw,
              ),
              Container(
                  width: 60.0.w,
                  height: 25.0.h,
                  margin: EdgeInsets.all(10.0.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0.r),
                      color: Colors.black54),
                  child: Center(
                      child: Text(
                    '${index + 1} / ${list.length}',
                    style: TextStyle(fontSize: 18.0.sp, color: Colors.white),
                  ))),
            ],
          ),
          itemCount: list.length,
        ),
      ),
    );
  }
}
