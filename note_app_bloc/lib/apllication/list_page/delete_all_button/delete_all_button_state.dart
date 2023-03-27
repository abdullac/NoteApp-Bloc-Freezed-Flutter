part of 'delete_all_button_bloc.dart';



@freezed 
class DeleteAllButtonState with _$DeleteAllButtonState {
  const factory DeleteAllButtonState({
    int? afterDeleteAll,
  }) = _DeleteAllButtonState;
  factory DeleteAllButtonState.initial(){
    return const DeleteAllButtonState(
      afterDeleteAll: null,
    );
  }
}
