import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app_bloc/domain/list_page/add_update_page.dart';

part 'add_item_button_event.dart';
part 'add_item_button_state.dart';
part 'add_item_button_bloc.freezed.dart';

class AddItemButtonBloc extends Bloc<AddItemButtonEvent, AddItemButtonState> {
  AddItemButtonBloc() : super(AddItemButtonState.initial()) {
    on<GotoAddPage>((event, emit) {
      emit(state.copyWith(
        addOrUpdateWidget: null,
        isAdd: event.isAdd,
      ));
      if (event.isAdd == true) {
        Widget addOrUpdateWidget = addOrUpdatePage();
        emit(state.copyWith(
          addOrUpdateWidget: addOrUpdateWidget,
          isAdd: event.isAdd,
        ));
      } else {
        //
      }
    });
  }
}
