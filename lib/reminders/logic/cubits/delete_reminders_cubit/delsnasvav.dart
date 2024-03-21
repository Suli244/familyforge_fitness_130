part of 'delkanvkva.dart';

@freezed
class DeleteRemindersState with _$DeleteRemindersState {
  const factory DeleteRemindersState.initial() = _Initial;
  const factory DeleteRemindersState.loading() = _Loading;
  const factory DeleteRemindersState.error(String error) = _Error;
  const factory DeleteRemindersState.success() = _Success;

  const DeleteRemindersState._();
  bool get isLoading => maybeWhen(
        orElse: () => false,
        loading: () => true,
      );
}
