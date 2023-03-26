part of 'initial_list_bloc.dart';

@freezed
class InitialListState with _$InitialListState {
  const factory InitialListState({
    required String date,
    required String title,
    required String description,
  }) = _InitialListState;

  factory InitialListState.initial() {
    return const InitialListState(
      date: "",
      title: "",
      description: "",
    );
  }
}
