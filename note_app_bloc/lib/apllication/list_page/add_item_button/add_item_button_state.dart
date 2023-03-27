part of 'add_item_button_bloc.dart';

@freezed
class AddItemButtonState with _$AddItemButtonState {
  const factory AddItemButtonState({
    required Widget? addOrUpdateWidget,
    // required AddOrEdit addOrEdit,
  }) = _AddItemButtonState;
  factory AddItemButtonState.initial() {
    return const AddItemButtonState(
      addOrUpdateWidget: null,
      // addOrEdit: AddOrEdit.addNote,
    );
  }
}
