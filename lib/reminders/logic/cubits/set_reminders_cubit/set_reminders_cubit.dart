import 'package:familyforge_fitness_130/reminders/logic/model/reminders_hive_model.dart';
import 'package:familyforge_fitness_130/reminders/logic/repositories/remindsvmskvsdvds.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_reknvsvd.dart';
part 'set_reminders_cubit.freezed.dart';

class SetRemindersCubit extends Cubit<SetRemindersState> {
  SetRemindersCubit(
    this.pouvbsd,
  ) : super(const SetRemindersState.initial());

  final RepossImpl pouvbsd;

  setReminders(RemindersHiveModel remindersHiveModel) async {
    emit(const SetRemindersState.loading());
    try {
      await pouvbsd.setRncakcac(remindersHiveModel);
      emit(const SetRemindersState.success());
    } catch (e) {
      emit(SetRemindersState.error(e.toString()));
    }
  }
}
