import 'package:bloc/bloc.dart';
import 'package:familyforge_fitness_130/reminders/logic/repositories/todo_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_todo_state.dart';
part 'update_todo_cubit.freezed.dart';

class UpdateTodoCubit extends Cubit<UpdateTodoState> {
  UpdateTodoCubit(this.repo) : super(const UpdateTodoState.initial());

  final TodoRepo repo;

  updateTodoExerciseStatus(int id, bool status) async {
    emit(const UpdateTodoState.loading());
    try {
      await repo.updateTodo(id, status);
      emit(const UpdateTodoState.success());
    } catch (e) {
      emit(UpdateTodoState.error(e.toString()));
    }
  }
}
