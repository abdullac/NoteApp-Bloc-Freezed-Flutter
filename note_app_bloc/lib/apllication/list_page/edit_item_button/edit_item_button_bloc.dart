import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'package:note_app_bloc/domain/list_page/add_update_page.dart';
import 'package:note_app_bloc/presentation/add_edit_item_page/add_edit_item_page.dart';

part 'edit_item_button_event.dart';
part 'edit_item_button_state.dart';
part 'edit_item_button_bloc.freezed.dart';

class EditItemButtonBloc
    extends Bloc<EditItemButtonEvent, EditItemButtonState> {
  EditItemButtonBloc() : super(EditItemButtonState.initial()) {
    on<GotoEditPage>((event, emit) {
      emit(state.copyWith(
        editPageWidget: null,
      ));
      /// cals addOrUpdate for gets update page widget
      Widget editPageWidget = addOrUpdatePage(
        event.initialListModel
      );
      /// set update page widget to state
      emit(state.copyWith(
        editPageWidget: editPageWidget,
      ));
    });
  }
}
