import 'package:familyforge_fitness_130/reminders/logic/repositories/remindsvmskvsdvds.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'delsnasvav.dart';
part 'delkanvkva.freezed.dart';

class DeleteRemindersCubit extends Cubit<DeleteRemindersState> {
  DeleteRemindersCubit(this.repo) : super(const DeleteRemindersState.initial());

  final Reposs repo;

  delete(String id) async {
    emit(const DeleteRemindersState.loading());
    try {
      await repo.deleteRncakcac(id);
      emit(const DeleteRemindersState.success());
    } catch (e) {
      emit(DeleteRemindersState.error(e.toString()));
    }
  }
}
