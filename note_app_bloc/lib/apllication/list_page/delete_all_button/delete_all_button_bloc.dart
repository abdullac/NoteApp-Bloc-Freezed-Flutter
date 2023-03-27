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
      int afterDeleteAll = await deleteAll();
      emit(
        state.copyWith(
          afterDeleteAll: afterDeleteAll,
        ),
      );
    });
  }
}
