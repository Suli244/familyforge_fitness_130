import 'package:hive_flutter/hive_flutter.dart';

part 'reminders_hive_model.g.dart';

@HiveType(typeId: 0)
class RemcskcnsdcHHH extends HiveObject {
  RemcskcnsdcHHH({
    required this.id,
    required this.name,
    required this.dateTime,
    required this.color,
  });

  @HiveField(0)
  String id;
  @HiveField(1)
  String name;
  @HiveField(2)
  DateTime dateTime;
  @HiveField(3)
  int color;
}
