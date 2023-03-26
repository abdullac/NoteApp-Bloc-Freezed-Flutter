import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'package:note_app_bloc/domain/add_or_update_page/save_item.dart';

part 'save_item_button_event.dart';
part 'save_item_button_state.dart';
part 'save_item_button_bloc.freezed.dart';

class SaveItemButtonBloc extends Bloc<SaveItemButtonEvent, SaveItemButtonState> {
  SaveItemButtonBloc() : super(SaveItemButtonState.internal()) {
    on<SaveItem>((event, emit) {
      saveUpdateItem(event.initialListModel);
    });
  }
}
