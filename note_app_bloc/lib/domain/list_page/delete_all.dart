

import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'package:note_app_bloc/domain/list_page/initial_list.dart';

Future<int> deleteAll() async {
  var hiveBox = await Hive.openBox<InitialListModel>(boxName);
  int afterDeleteAll = await hiveBox.clear();
  return afterDeleteAll;
}