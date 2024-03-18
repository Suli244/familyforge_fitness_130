import 'package:familyforge_fitness_130/reminders/logic/repositories/todo_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_todo_name_state.dart';
part 'update_todo_name_cubit.freezed.dart';

class UpdateTodoNameCubit extends Cubit<UpdateTodoNameState> {
  UpdateTodoNameCubit(this.repo) : super(const UpdateTodoNameState.initial());

  final TodoRepo repo;

  updateTodoNameAll(int id, String name) async {
    emit(const UpdateTodoNameState.loading());
    try {
      await repo.updateTodoName(id, name);

      emit(const UpdateTodoNameState.success());
    } catch (e) {
      emit(UpdateTodoNameState.error(e.toString()));
    }
  }
}
