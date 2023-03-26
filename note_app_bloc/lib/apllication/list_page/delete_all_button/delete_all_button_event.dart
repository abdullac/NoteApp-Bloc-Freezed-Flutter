part of 'delete_all_button_bloc.dart';


@freezed 
class DeleteAllButtonEvent with _$DeleteAllButtonEvent {
  const factory DeleteAllButtonEvent.deleteAll() = DeleteAll;
}