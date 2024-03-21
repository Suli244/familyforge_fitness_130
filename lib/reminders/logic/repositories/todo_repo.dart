import 'package:familyforge_fitness_130/reminders/logic/model/todo_hive_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

abstract class TodoRepo {
  Future<List<TodoHiveModel>> getTodo();
  Future<void> setTodo(TodoHiveModel todoHiveModel);
  Future<void> updateTodo(int id, bool isActive);
  Future<void> updateTodoName(int id, String name);
}

class TodoRepoImpl implements TodoRepo {
  @override
  Future<List<TodoHiveModel>> getTodo() async {
    final djsnvsdvdsvsdv = await Hive.openBox<TodoHiveModel>('djsnvsdvdsvsdv');
    return djsnvsdvdsvsdv.values.toList();
  }

  @override
  Future<void> setTodo(TodoHiveModel todoHiveModel) async {
    final djsnvsdvdsvsdv = await Hive.openBox<TodoHiveModel>('djsnvsdvdsvsdv');
    await djsnvsdvdsvsdv.add(todoHiveModel);
  }

  @override
  Future<void> updateTodo(int id, bool isActive) async {
    final djsnvsdvdsvsdv = await Hive.openBox<TodoHiveModel>('djsnvsdvdsvsdv');
    List<TodoHiveModel> sjvsdnkvsdvdsvsd =
        djsnvsdvdsvsdv.values.where((e) => e.id == id).toList();
    sjvsdnkvsdvdsvsd.first.isActive = isActive;
    await sjvsdnkvsdvdsvsd.first.save();
  }

  @override
  Future<void> updateTodoName(int id, String name) async {
    final djsnvsdvdsvsdv = await Hive.openBox<TodoHiveModel>('djsnvsdvdsvsdv');
    List<TodoHiveModel> sjvsdnkvsdvdsvsd =
        djsnvsdvdsvsdv.values.where((e) => e.id == id).toList();
    sjvsdnkvsdvdsvsd.first.name = name;
    await sjvsdnkvsdvdsvsd.first.save();
  }
}
