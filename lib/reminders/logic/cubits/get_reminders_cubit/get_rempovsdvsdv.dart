import 'package:familyforge_fitness_130/reminders/logic/model/reminders_hive_model.dart';
import 'package:familyforge_fitness_130/reminders/logic/repositories/remindsvmskvsdvds.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_ckndssdvs.dart';
part 'get_rempovsdvsdv.freezed.dart';

class GetRemindersCubit extends Cubit<GetRemindersState> {
  GetRemindersCubit(this.repo) : super(const GetRemindersState.loading());

  final RepossImpl repo;

  getReminders() async {
    emit(const GetRemindersState.loading());
    try {
      final csdcdsvsvds = await repo.getRncakcac();
      emit(GetRemindersState.success(csdcdsvsvds.reversed.toList()));
    } catch (e) {
      emit(GetRemindersState.error(e.toString()));
    }
  }
}
