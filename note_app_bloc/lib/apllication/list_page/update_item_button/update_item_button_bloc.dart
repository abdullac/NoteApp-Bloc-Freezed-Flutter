import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app_bloc/domain/list_page/add_update_page.dart';

part 'update_item_button_event.dart';
part 'update_item_button_state.dart';
part 'update_item_button_bloc.freezed.dart';

class UpdateItemButtonBloc
    extends Bloc<UpdateItemButtonEvent, UpdateItemButtonState> {
  UpdateItemButtonBloc() : super(UpdateItemButtonState.initial()) {
    on<UpdateItemButtonEvent>((event, emit) {
      emit(state.copyWith(
        updatePageWidget: null,
      ));
      Widget updatePageWidget = addOrUpdatePage(
        event.title,
        event.description,
      );
      emit(state.copyWith(
        updatePageWidget: updatePageWidget,
      ));
    });
  }
}
