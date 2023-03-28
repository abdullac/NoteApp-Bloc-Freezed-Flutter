import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'package:note_app_bloc/domain/list_page/note_items_list.dart';

 deleteItem(int deleteId) async{ 
  /// open hive data base,then delete item using note id
  var hiveBox = await Hive.openBox<NoteItemModel>(boxName);
  await hiveBox.delete(deleteId);
}
