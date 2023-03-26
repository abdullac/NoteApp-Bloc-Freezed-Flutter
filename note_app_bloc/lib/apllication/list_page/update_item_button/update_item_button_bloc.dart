import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app_bloc/domain/list_page/add_update_page.dart';

part 'update_item_button_event.dart';
part 'update_item_button_state.dart';
part 'update_item_button_bloc.freezed.dart';

class EditItemButtonBloc
    extends Bloc<EditItemButtonEvent, EditItemButtonState> {
  EditItemButtonBloc() : super(EditItemButtonState.initial()) {
    on<GotoEditPage>((event, emit) {
      emit(state.copyWith(
        editPageWidget: null,
      ));
      Widget editPageWidget = addOrUpdatePage(
        event.title,
        event.description,
      );
      emit(state.copyWith(
        editPageWidget: editPageWidget,
      ));
    });
  }
}
