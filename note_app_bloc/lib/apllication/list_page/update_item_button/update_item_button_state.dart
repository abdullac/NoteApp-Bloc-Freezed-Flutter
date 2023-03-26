part of 'update_item_button_bloc.dart';

@freezed
class EditItemButtonState with _$EditItemButtonState {
  const factory EditItemButtonState({
    required Widget? editPageWidget,
  }) = _EditItemButtonState;

  factory EditItemButtonState.initial() {
    return const EditItemButtonState(
      editPageWidget: null,
    );
  }
}
