part of 'add_item_button_bloc.dart';

@freezed
class AddItemButtonEvent with _$AddItemButtonEvent {
  const factory AddItemButtonEvent.gotoAddPage({
    required bool isAdd
  }) = GotoAddPage;
}
