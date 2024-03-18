import 'package:familyforge_fitness_130/reminders/logic/repositories/reminders_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_reminders_state.dart';
part 'update_reminders_cubit.freezed.dart';

class UpdateRemindersCubit extends Cubit<UpdateRemindersState> {
  UpdateRemindersCubit(this.repo) : super(const UpdateRemindersState.initial());

  final Reposs repo;

  updateRemindersAll(String id, String name) async {
    emit(const UpdateRemindersState.loading());
    try {
      await repo.updateReminders(id, name);

      emit(const UpdateRemindersState.success());
    } catch (e) {
      emit(UpdateRemindersState.error(e.toString()));
    }
  }
}
