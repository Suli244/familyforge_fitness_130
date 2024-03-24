import 'package:bloc/bloc.dart';
import 'package:familyforge_fitness_130/reminders/logic/model/todo_hive_model.dart';
import 'package:familyforge_fitness_130/reminders/logic/repositories/todo_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_get_cubit.freezed.dart';

class GetTodoCubitIhcnajcasc extends Cubit<GetTodoStateQocjamsc> {
  GetTodoCubitIhcnajcasc(this.repo)
      : super(const GetTodoStateQocjamsc.loading());
  final TodoRepoQvsv repo;

  getTodo() async {
    emit(const GetTodoStateQocjamsc.loading());
    try {
      final vsdvsdvsdv = await repo.getTodo();
      emit(GetTodoStateQocjamsc.success(vsdvsdvsdv.reversed.toList()));
    } catch (e) {
      emit(GetTodoStateQocjamsc.error(e.toString()));
    }
  }
}

@freezed
class GetTodoStateQocjamsc with _$GetTodoStateQocjamsc {
  const factory GetTodoStateQocjamsc.loading() = _Loading;
  const factory GetTodoStateQocjamsc.error(String error) = _Error;
  const factory GetTodoStateQocjamsc.success(List<TodoHiveModel> model) =
      _Success;
}
