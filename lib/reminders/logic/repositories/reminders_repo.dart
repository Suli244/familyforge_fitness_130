import 'package:familyforge_fitness_130/reminders/logic/model/reminders_hive_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class PouvbsdImpl implements Pouvbsd {
  @override
  Future<List<RemindersHiveModel>> getReminders() async {
    final remindersBox = await Hive.openBox<RemindersHiveModel>('RemindersBox');
    return remindersBox.values.toList();
  }

  @override
  Future<void> setReminders(RemindersHiveModel remindersHiveModel) async {
    final remindersBox = await Hive.openBox<RemindersHiveModel>('RemindersBox');
    await remindersBox.add(remindersHiveModel);
  }
}

abstract class Pouvbsd {
  Future<List<RemindersHiveModel>> getReminders();
  Future<void> setReminders(RemindersHiveModel remindersHiveModel);
}
