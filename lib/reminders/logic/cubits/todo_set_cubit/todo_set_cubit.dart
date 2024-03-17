import 'package:bloc/bloc.dart';
import 'package:familyforge_fitness_130/reminders/logic/model/todo_hive_model.dart';
import 'package:familyforge_fitness_130/reminders/logic/repositories/todo_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_set_cubit.freezed.dart';

class SetTodoCubit extends Cubit<SetTodoState> {
  SetTodoCubit(this.todoRepo) : super(const SetTodoState.initial());
  final TodoRepo todoRepo;

  setTodo(TodoHiveModel todoHiveModel) async {
    emit(const SetTodoState.loading());
    try {
      await todoRepo.setTodo(todoHiveModel);
      emit(const SetTodoState.success());
    } catch (e) {
      emit(SetTodoState.error(e.toString()));
    }
  }
}

@freezed
class SetTodoState with _$SetTodoState {
  const factory SetTodoState.initial() = _Initial;
  const factory SetTodoState.loading() = _Loading;
  const factory SetTodoState.error(String error) = _Error;
  const factory SetTodoState.success() = _Success;

  const SetTodoState._();
  bool get isLoading => maybeWhen(
        orElse: () => false,
        loading: () => true,
      );
}
