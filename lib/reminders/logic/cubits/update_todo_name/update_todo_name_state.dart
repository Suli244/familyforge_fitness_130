part of 'update_todo_name_cubit.dart';

@freezed
class UpdateTodoNameState with _$UpdateTodoNameState {
  const factory UpdateTodoNameState.initial() = _Initial;

  const factory UpdateTodoNameState.loading() = _LoadingAll;
  const factory UpdateTodoNameState.error(String error) = _ErrorAll;
  const factory UpdateTodoNameState.success() = _SuccessAll;

  const UpdateTodoNameState._();
  bool get isLoading => maybeWhen(
        orElse: () => false,
        loading: () => true,
      );
}
