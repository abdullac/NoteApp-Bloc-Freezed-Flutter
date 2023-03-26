import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';

Future<InitialListModel> initialList(InitialListModel initialListModel) async {

  var initialListBox = await Hive.openBox<InitialListModel>("initialListBox");

  int id = await initialListBox.add(initialListModel);
  // initialListModel.noteId = id;

  return initialListModel;
}




// const InitialListModel(
//     noteDate: "march 25",
//     noteTitle: "Sample Note Tiitle",
//     noteDescription: "Sample Note Description",
//   );