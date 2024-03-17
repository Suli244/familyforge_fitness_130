import 'package:hive_flutter/hive_flutter.dart';

part 'reminders_hive_model.g.dart';

@HiveType(typeId: 0)
class RemindersHiveModel extends HiveObject {
  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  DateTime dateTime;
  @HiveField(3)
  int color;

  RemindersHiveModel({
    required this.id,
    required this.name,
    required this.dateTime,
    required this.color,
  });
}
