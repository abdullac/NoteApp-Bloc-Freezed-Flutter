import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app_bloc/domain/list_page/delete_all.dart';

part 'delete_all_button_event.dart';
part 'delete_all_button_state.dart';
part 'delete_all_button_bloc.freezed.dart';

class DeleteAllButtonBloc
    extends Bloc<DeleteAllButtonEvent, DeleteAllButtonState> {
  DeleteAllButtonBloc() : super(DeleteAllButtonState.initial()) {
    on<DeleteAll>((event, emit) async {
      emit(
        state.copyWith(
          afterDeleteAll: null,
        ),
      );
      /// calls deleteAll methed for delete all/clear hive data base and gets after delete value
      int afterDeleteAll = await deleteAll();
      emit(
        /// set after delete value to state
        state.copyWith(
          afterDeleteAll: afterDeleteAll,
        ),
      );
    });
  }
}
