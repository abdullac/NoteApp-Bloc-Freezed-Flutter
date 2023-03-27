part of 'edit_item_button_bloc.dart';

@freezed
class EditItemButtonEvent with _$EditItemButtonEvent {
  const factory EditItemButtonEvent.gotoEditPage({
    // required AddOrEdit addOrEdit,
    required InitialListModel initialListModel,
  }) = GotoEditPage;
}