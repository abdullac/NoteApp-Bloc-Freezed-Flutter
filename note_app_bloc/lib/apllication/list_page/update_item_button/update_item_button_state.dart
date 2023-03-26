part of 'update_item_button_bloc.dart';

@freezed
class UpdateItemButtonState with _$UpdateItemButtonState {
  const factory UpdateItemButtonState({
    required Widget? updatePageWidget,
  }) = _UpdateItemButtonState;

  factory UpdateItemButtonState.initial() {
    return const UpdateItemButtonState(
      updatePageWidget: null,
    );
  }
}
