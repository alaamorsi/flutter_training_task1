import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_training_task1/features/services/data/models/service_types_model.dart';

class BuildServicesTypes extends StatelessWidget {
  final List<ServiceTypesModel> list;
  const BuildServicesTypes({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    String textList = list.map((e) => e.name).join(' – ');
    return Text(textList,
        style: TextStyle(fontSize: 18.0.sp, fontWeight: FontWeight.bold));
  }
}
