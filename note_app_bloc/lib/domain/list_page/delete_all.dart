

import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'package:note_app_bloc/domain/list_page/note_items_list.dart';

Future<int> deleteAll() async {
  /// open hive data base and delete/clear dadabase all data
  var hiveBox = await Hive.openBox<NoteItemModel>(boxName);
  int afterDeleteAll = await hiveBox.clear();
  /// returns deleted confirmation value after deletion
  return afterDeleteAll;
}