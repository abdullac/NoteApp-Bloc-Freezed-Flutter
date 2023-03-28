import 'package:flutter/material.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'package:note_app_bloc/presentation/add_edit_item_page/add_edit_item_page.dart';

Widget addOrUpdatePage([NoteItemModel? noteItemModel]) {
  /// if gets noteItemModel ,then set addOrEdit value to editNote for update
  /// if not gets noteItemModel ,then set addOrEdit value to addNote for save
  AddOrEdit addOrEdit =
      noteItemModel == null ? AddOrEdit.addNote : AddOrEdit.editNote;
      /// calls Add Or Edit page widget  and pass values note item model and add/edit
  return AddEditItemPage(
    addOrEdit: addOrEdit,
    noteItemModel: noteItemModel,
  );
}
