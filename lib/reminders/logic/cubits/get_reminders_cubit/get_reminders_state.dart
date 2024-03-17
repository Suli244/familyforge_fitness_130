part of 'get_reminders_cubit.dart';

@freezed
class GetRemindersState with _$GetRemindersState {
  const factory GetRemindersState.loading() = _Loading;
  const factory GetRemindersState.error(String error) = _Error;
  const factory GetRemindersState.success(List<RemindersHiveModel> model) = _Success;
}
