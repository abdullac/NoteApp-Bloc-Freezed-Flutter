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
        initialListModelList: [],
      ));

      var initialListModel = await initialList();

      emit(state.copyWith(
        initialListModelList: initialListModel,
      ));
    });
  }
}







// part 'initial_list_event.dart';
// part 'initial_list_state.dart';
// part 'initial_list_bloc.freezed.dart';

// class InitialListBloc extends Bloc<InitialListEvent, InitialListState> {
//   InitialListBloc() : super(InitialListState.initial()) {
//     on<InitialList>((event, emit) async {
//       emit(state.copyWith(
//         id: -2,
//         date: "",
//         title: "",
//         description: "",
//       ));

//       var initialListModel = await initialList(event.initialListModel);
      

//       emit(state.copyWith(
//         id: initialListModel.noteId,
//         date: initialListModel.noteDate,
//         title: initialListModel.noteTitle,
//         description: initialListModel.noteDescription,
//       ));
//     });
//   }
// }
