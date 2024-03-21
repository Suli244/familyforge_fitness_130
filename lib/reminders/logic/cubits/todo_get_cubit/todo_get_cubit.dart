import 'package:bloc/bloc.dart';
import 'package:familyforge_fitness_130/reminders/logic/model/todo_hive_model.dart';
import 'package:familyforge_fitness_130/reminders/logic/repositories/todo_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_get_cubit.freezed.dart';

class GetTodoCubit extends Cubit<GetTodoState> {
  GetTodoCubit(this.repo) : super(const GetTodoState.loading());
  final TodoRepo repo;

  getTodo() async {
    emit(const GetTodoState.loading());
    try {
      final vsdvsdvsdv = await repo.getTodo();
      emit(GetTodoState.success(vsdvsdvsdv.reversed.toList()));
    } catch (e) {
      emit(GetTodoState.error(e.toString()));
    }
  }
}

@freezed
class GetTodoState with _$GetTodoState {
  const factory GetTodoState.loading() = _Loading;
  const factory GetTodoState.error(String error) = _Error;
  const factory GetTodoState.success(List<TodoHiveModel> model) = _Success;
}
