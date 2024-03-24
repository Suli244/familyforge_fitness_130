import 'package:bloc/bloc.dart';
import 'package:familyforge_fitness_130/reminders/logic/model/todo_hive_model.dart';
import 'package:familyforge_fitness_130/reminders/logic/repositories/todo_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_set_cubit.freezed.dart';

class SetTodoCubitPklancac extends Cubit<SetTodoStateMknsa> {
  SetTodoCubitPklancac(this.todoRepoQvsv)
      : super(const SetTodoStateMknsa.initial());
  final TodoRepoQvsv todoRepoQvsv;

  setTodo(TodoHiveModel todoHiveModel) async {
    emit(const SetTodoStateMknsa.loading());
    try {
      await todoRepoQvsv.setTodo(todoHiveModel);
      emit(const SetTodoStateMknsa.success());
    } catch (e) {
      emit(SetTodoStateMknsa.error(e.toString()));
    }
  }
}

@freezed
class SetTodoStateMknsa with _$SetTodoStateMknsa {
  const factory SetTodoStateMknsa.initial() = _Initial;
  const factory SetTodoStateMknsa.loading() = _Loading;
  const factory SetTodoStateMknsa.error(String error) = _Error;
  const factory SetTodoStateMknsa.success() = _Success;

  const SetTodoStateMknsa._();
  bool get isLoading => maybeWhen(
        orElse: () => false,
        loading: () => true,
      );
}
