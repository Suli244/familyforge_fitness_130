part of 'update_remalknva.dart';

@freezed
class UpdateRemindersState with _$UpdateRemindersState {
  const factory UpdateRemindersState.initial() = _Initial;

  const factory UpdateRemindersState.loading() = _LoadingAll;
  const factory UpdateRemindersState.error(String error) = _ErrorAll;
  const factory UpdateRemindersState.success() = _SuccessAll;

  const UpdateRemindersState._();
  bool get isLoading => maybeWhen(
        orElse: () => false,
        loading: () => true,
      );
}
