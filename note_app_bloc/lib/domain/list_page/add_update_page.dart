import 'package:flutter/material.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'package:note_app_bloc/presentation/add_edit_item_page/add_edit_item_page.dart';

Widget addOrUpdatePage([InitialListModel? initialListModel]) {
  AddOrEdit addOrEdit =
      initialListModel == null ? AddOrEdit.addNote : AddOrEdit.editNote;
  return AddEditItemPage(
    addOrEdit: addOrEdit,
    initialListModel: initialListModel,
  );
}
