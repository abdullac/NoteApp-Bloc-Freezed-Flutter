import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';

var boxName = "initialListBox";

Future<List<InitialListModel>> initialList() async {
  List<InitialListModel> initialListModelList = [];
  var hiveBox = await Hive.openBox<InitialListModel>(boxName);
  initialListModelList.addAll(hiveBox.values);
  return initialListModelList;
}
