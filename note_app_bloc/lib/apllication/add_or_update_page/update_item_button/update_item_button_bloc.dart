import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'package:note_app_bloc/domain/add_or_update_page/save_update_item.dart';

part 'update_item_button_event.dart';
part 'update_item_button_state.dart';
part 'update_item_button_bloc.freezed.dart';

class UpdateItemButtonBloc extends Bloc<UpdateItemButtonEvent, UpdateItemButtonState> {
  UpdateItemButtonBloc() : super(UpdateItemButtonState.initial()) {
    on<UpdateItem>((event, emit) {
      saveUpdateItem(event.initialListModel);
    });
  }
}
