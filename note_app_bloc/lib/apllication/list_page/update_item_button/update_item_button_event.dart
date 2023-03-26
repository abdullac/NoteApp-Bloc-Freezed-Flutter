part of 'update_item_button_bloc.dart';

@freezed
class UpdateItemButtonEvent with _$UpdateItemButtonEvent {
  const factory UpdateItemButtonEvent.gotoUpdatePage({
    required String title,
    required String description,
  }) = GotoUpdatePage;
}