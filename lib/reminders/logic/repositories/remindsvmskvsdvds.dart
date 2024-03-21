import 'package:familyforge_fitness_130/reminders/logic/model/reminders_hive_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class RepossImpl implements Reposs {
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

  @override
  Future<void> updateReminders(String id, String name) async {
    final remindersBox = await Hive.openBox<RemindersHiveModel>('RemindersBox');
    List<RemindersHiveModel> listNotification =
        remindersBox.values.where((e) => e.id == id).toList();
    listNotification.first.name = name;
    await listNotification.first.save();
  }

  @override
  Future<void> deleteReminders(String id) async {
    final remindersBox = await Hive.openBox<RemindersHiveModel>('RemindersBox');
    final remindersModel =
        remindersBox.values.toList().singleWhere((e) => e.id == id);
    await remindersModel.delete();
    await remindersBox.compact();
  }
}

abstract class Reposs {
  Future<List<RemindersHiveModel>> getReminders();
  Future<void> setReminders(RemindersHiveModel remindersHiveModel);
  Future<void> updateReminders(String id, String name);
  Future<void> deleteReminders(String id);
}
