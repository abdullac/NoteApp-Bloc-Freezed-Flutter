import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'package:note_app_bloc/domain/list_page/note_items_list.dart';

part 'items_listview_event.dart';
part 'items_listview_state.dart';
part 'items_listview_bloc.freezed.dart';

class ItemsListviewBloc extends Bloc<ItemsListviewEvent, ItemsListviewState> {
  ItemsListviewBloc() : super(ItemsListviewState.initial()) {
    on<InitialList>((event, emit) async {
      emit(state.copyWith(
        noteItemModelList: [],
      ));
      /// calls noteItemsModelList for gets list of note items model
      var noteItemModelList = await noteItemsModelList();
      /// set noteItemModellist to state
      emit(state.copyWith(
        noteItemModelList: noteItemModelList,
      ));
    });
  }
}

