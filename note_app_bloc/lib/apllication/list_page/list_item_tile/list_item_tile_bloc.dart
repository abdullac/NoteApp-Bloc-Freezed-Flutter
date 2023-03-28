import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'package:note_app_bloc/domain/list_page/note_view_page.dart';

part 'list_item_tile_event.dart';
part 'list_item_tile_state.dart';
part 'list_item_tile_bloc.freezed.dart';

class ListItemTileBloc extends Bloc<ListItemTileEvent, ListItemTileState> {
  ListItemTileBloc() : super(ListItemTileState.initial()) {
    on<GotoNoteViewPage>((event, emit) {
      emit(state.copyWith(noteViewPageWidget: null));
      /// calls noteViewPage for get note view page widget
      var noteViewPageWidget = noteViewPage(event.initialListModel);
      /// set not view page widget to state
      emit(state.copyWith(noteViewPageWidget: noteViewPageWidget));
    });
  }
}
