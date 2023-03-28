part of 'save_item_button_bloc.dart';



@freezed
class SaveItemButtonEvent with _$SaveItemButtonEvent {
  const factory SaveItemButtonEvent.saveItem({
    required NoteItemModel noteItemModel,
  }) = SaveItem;
}