part of 'delete_item_button_bloc.dart';


@freezed 
class DeleteItemButtonEvent with _$DeleteItemButtonEvent {
  const factory DeleteItemButtonEvent.deleteItem({
    required int deleteId,
  }) = DeleteItem;
}