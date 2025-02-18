class ServiceTypesModel {
  late int id;
  late String name;

  ServiceTypesModel({required this.id, required this.name});

  ServiceTypesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }
}
