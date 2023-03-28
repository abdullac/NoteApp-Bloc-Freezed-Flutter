
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'package:note_app_bloc/domain/list_page/note_items_list.dart';

saveUpdateItem(NoteItemModel noteItemModel) async {
  /// open hive data base and add/put noteItemModel
  var hiveBox = await Hive.openBox<NoteItemModel>(boxName);
  await hiveBox.put(noteItemModel.noteId,noteItemModel);
}