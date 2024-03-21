part of 'set_scknasc.dart';

@freezed
class SetRemindersState with _$SetRemindersState {
  const factory SetRemindersState.initial() = _Initial;
  const factory SetRemindersState.loading() = _Loading;
  const factory SetRemindersState.error(String error) = _Error;
  const factory SetRemindersState.success() = _Success;

  const SetRemindersState._();
  bool get isLoading => maybeWhen(
        orElse: () => false,
        loading: () => true,
      );
}
