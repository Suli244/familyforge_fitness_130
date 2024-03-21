import 'package:familyforge_fitness_130/reminders/logic/model/reminders_hive_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class RepossImpl implements Reposs {
  @override
  Future<List<RemcskcnsdcHHH>> getRncakcac() async {
    final relksvdvdvsd = await Hive.openBox<RemcskcnsdcHHH>('relksvdvdvsd');
    return relksvdvdvsd.values.toList();
  }

  @override
  Future<void> setRncakcac(RemcskcnsdcHHH remcskcnsdcHHH) async {
    final relksvdvdvsd = await Hive.openBox<RemcskcnsdcHHH>('relksvdvdvsd');
    await relksvdvdvsd.add(remcskcnsdcHHH);
  }

  @override
  Future<void> updateRncakcac(String id, String name) async {
    final relksvdvdvsd = await Hive.openBox<RemcskcnsdcHHH>('relksvdvdvsd');
    List<RemcskcnsdcHHH> lllalsckascas =
        relksvdvdvsd.values.where((e) => e.id == id).toList();
    lllalsckascas.first.name = name;
    await lllalsckascas.first.save();
  }

  @override
  Future<void> deleteRncakcac(String id) async {
    final relksvdvdvsd = await Hive.openBox<RemcskcnsdcHHH>('relksvdvdvsd');
    final remsdvmsd =
        relksvdvdvsd.values.toList().singleWhere((e) => e.id == id);
    await remsdvmsd.delete();
    await relksvdvdvsd.compact();
  }
}

abstract class Reposs {
  Future<List<RemcskcnsdcHHH>> getRncakcac();
  Future<void> setRncakcac(RemcskcnsdcHHH remcskcnsdcHHH);
  Future<void> updateRncakcac(String id, String name);
  Future<void> deleteRncakcac(String id);
}
