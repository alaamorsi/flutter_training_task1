import 'package:flutter_training_task1/features/services/data/models/service_types_model.dart';

class ServicesModel {
  late int id;
  late List<ServiceTypesModel> services;
  late String comment;
  late String status;

  ServicesModel(
      {required this.id,
      required this.services,
      required this.comment,
      required this.status});

  ServicesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    if (json['services'] != null) {
      services = <ServiceTypesModel>[];
      json['services'].forEach((v) {
        services.add(ServiceTypesModel.fromJson(v));
      });
    }
    comment = json['comment'] ?? '';
    status = json['status'] ?? '';
  }
}
