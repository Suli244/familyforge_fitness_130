import 'package:hive_flutter/hive_flutter.dart';

part 'todo_hive_model.g.dart';

@HiveType(typeId: 3)
class TodoHiveModel extends HiveObject {
  @HiveField(0)
  int id;
  @HiveField(1)
  String name;
  @HiveField(2)
  bool isActive;
  TodoHiveModel({
    required this.id,
    required this.name,
    required this.isActive,
  });
}
