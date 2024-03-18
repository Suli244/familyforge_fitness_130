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
    final todoBox = await Hive.openBox<TodoHiveModel>('TodoBox');
    return todoBox.values.toList();
  }

  @override
  Future<void> setTodo(TodoHiveModel todoHiveModel) async {
    final todoBox = await Hive.openBox<TodoHiveModel>('TodoBox');
    await todoBox.add(todoHiveModel);
  }

  @override
  Future<void> updateTodo(int id, bool isActive) async {
    final todoBox = await Hive.openBox<TodoHiveModel>('TodoBox');
    List<TodoHiveModel> listNotification =
        todoBox.values.where((e) => e.id == id).toList();
    listNotification.first.isActive = isActive;
    await listNotification.first.save();
  }

  @override
  Future<void> updateTodoName(int id, String name) async {
    final todoBox = await Hive.openBox<TodoHiveModel>('TodoBox');
    List<TodoHiveModel> listNotification =
        todoBox.values.where((e) => e.id == id).toList();
    listNotification.first.name = name;
    await listNotification.first.save();
  }
}
