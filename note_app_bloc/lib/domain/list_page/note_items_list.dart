import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';

var boxName = "initialListBox";

Future<List<NoteItemModel>> noteItemsModelList() async {
  /// declare a temparary list for note itel model list
  List<NoteItemModel> noteItemModelList = [];
  /// open hive data base
  var hiveBox = await Hive.openBox<NoteItemModel>(boxName);
  ///  add all datat base values to note Item model list
  noteItemModelList.addAll(hiveBox.values);
  return noteItemModelList;
}
