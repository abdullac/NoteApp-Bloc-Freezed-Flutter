import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'package:note_app_bloc/domain/list_page/initial_list.dart';

part 'initial_list_event.dart';
part 'initial_list_state.dart';
part 'initial_list_bloc.freezed.dart';

class InitialListBloc extends Bloc<InitialListEvent, InitialListState> {
  InitialListBloc() : super(InitialListState.initial()) {
    on<InitialList>((event, emit) async {
      emit(state.copyWith(
        date: "",
        title: "",
        description: "",
      ));

      var initialList1 = await initialList(event.initialListModel);

      emit(state.copyWith(
        date: initialList1.noteDate,
        title: initialList1.noteTitle,
        description: initialList1.noteDescription,
      ));
    });
  }
}
