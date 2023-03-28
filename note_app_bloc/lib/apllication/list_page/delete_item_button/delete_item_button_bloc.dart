import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app_bloc/domain/list_page/delete_item.dart';

part 'delete_item_button_event.dart';
part 'delete_item_button_state.dart';
part 'delete_item_button_bloc.freezed.dart';

class DeleteItemButtonBloc
    extends Bloc<DeleteItemButtonEvent, DeleteItemButtonState> {
  DeleteItemButtonBloc() : super(DeleteItemButtonState.initial()) {
    on<DeleteItem>((event, emit) async {
      /// calls deleteItem meted for delete item from hive data base
      await deleteItem(event.deleteId);
    });
  }
}
