part of 'update_todo_cubit.dart';

@freezed
class UpdateTodoState with _$UpdateTodoState {
  const factory UpdateTodoState.initial() = _Initial;

  const factory UpdateTodoState.loading() = _LoadingAll;
  const factory UpdateTodoState.error(String error) = _ErrorAll;
  const factory UpdateTodoState.success() = _SuccessAll;
  
  const UpdateTodoState._();
  bool get isLoading => maybeWhen(
        orElse: () => false,
        loading: () => true,
      );
}
