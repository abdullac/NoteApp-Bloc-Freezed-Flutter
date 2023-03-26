part of 'update_item_button_bloc.dart';

@freezed
class EditItemButtonEvent with _$EditItemButtonEvent {
  const factory EditItemButtonEvent.gotoEditPage({
    required String title,
    required String description,
  }) = GotoEditPage;
}