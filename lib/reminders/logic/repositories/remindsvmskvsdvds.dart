import 'package:familyforge_fitness_130/reminders/logic/model/reminders_hive_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class RepossImpl implements Reposs {
  @override
  Future<List<RemindersHiveModel>> getRncakcac() async {
    final relksvdvdvsd = await Hive.openBox<RemindersHiveModel>('relksvdvdvsd');
    return relksvdvdvsd.values.toList();
  }

  @override
  Future<void> setRncakcac(RemindersHiveModel remindersHiveModel) async {
    final relksvdvdvsd = await Hive.openBox<RemindersHiveModel>('relksvdvdvsd');
    await relksvdvdvsd.add(remindersHiveModel);
  }

  @override
  Future<void> updateRncakcac(String id, String name) async {
    final relksvdvdvsd = await Hive.openBox<RemindersHiveModel>('relksvdvdvsd');
    List<RemindersHiveModel> lllalsckascas =
        relksvdvdvsd.values.where((e) => e.id == id).toList();
    lllalsckascas.first.name = name;
    await lllalsckascas.first.save();
  }

  @override
  Future<void> deleteRncakcac(String id) async {
    final relksvdvdvsd = await Hive.openBox<RemindersHiveModel>('relksvdvdvsd');
    final remsdvmsd =
        relksvdvdvsd.values.toList().singleWhere((e) => e.id == id);
    await remsdvmsd.delete();
    await relksvdvdvsd.compact();
  }
}

abstract class Reposs {
  Future<List<RemindersHiveModel>> getRncakcac();
  Future<void> setRncakcac(RemindersHiveModel remindersHiveModel);
  Future<void> updateRncakcac(String id, String name);
  Future<void> deleteRncakcac(String id);
}
