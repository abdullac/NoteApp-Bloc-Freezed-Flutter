import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_bloc/apllication/add_or_update_page/save_item_button/save_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/add_or_update_page/update_item_button/update_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/add_item_button/add_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/delete_all_button/delete_all_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/delete_item_button/delete_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/edit_item_button/edit_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/initial_list/initial_list_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'package:note_app_bloc/domain/list_page/initial_list.dart';

import 'presentation/add_edit_item_page/add_edit_item_page.dart';
import 'presentation/list_items_page/list_items_page.dart';
import 'presentation/note_view_page/note_view_page.dart';

List<InitialListModel> initialListModelList = [];

main() {
  WidgetsFlutterBinding.ensureInitialized();
  var path = Directory.current.path;
  Hive.init(path);
  if (!Hive.isAdapterRegistered(InitialListModelAdapter().typeId)) {
    Hive.registerAdapter(InitialListModelAdapter());
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => InitialListBloc()),
        BlocProvider(create: (context) => AddItemButtonBloc()),
        BlocProvider(create: (context) => EditItemButtonBloc()),
        BlocProvider(create: (context) => DeleteItemButtonBloc()),
        BlocProvider(create: (context) => DeleteAllButtonBloc()),
        BlocProvider(create: (context) => SaveItemButtonBloc()),
        BlocProvider(create: (context) => UpdateItemButtonBloc()),
      ],
      child: const MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: MainPageWidget(),
            // child: AddEditItemPage(addOrEdit: AddOrEdit.editNote),
            // child: NoteViewPage(
            //     noteTitle: "gdgdgdgdgdgd",
            //     noteDescription: "iuiuiuiuiuiuuiuiui"),
          ),
        ),
      ),
    );
  }
}

class MainPageWidget extends StatelessWidget {
  const MainPageWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<InitialListBloc>(context).add(const InitialList());
    });
    return BlocBuilder<DeleteAllButtonBloc, DeleteAllButtonState>(
      builder: (context, state) {
        BlocProvider.of<InitialListBloc>(context).add(const InitialList());
        return state.afterDeleteAll != null
            ? BlocBuilder<InitialListBloc, InitialListState>(
                builder: (context, state) {
                  print(state.initialListModelList);
                  return ListItemsPage(
                      initialListModelList: state.initialListModelList);
                },
              )
            : BlocBuilder<InitialListBloc, InitialListState>(
                builder: (context, state) {
                  print(state.initialListModelList);
                  return ListItemsPage(
                      initialListModelList: state.initialListModelList);
                },
              );
      },
    );
  }
}

class AddUpdatePage extends StatelessWidget {
  const AddUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      BlocProvider.of<UpdateItemButtonBloc>(context).add(UpdateItem(
          initialListModel: InitialListModel(
        noteId: DateTime.now().microsecond,
        noteDate: "noteDate2",
        noteTitle: "noteTitle2",
        noteDescription: "noteDescription3",
      )));

      // BlocProvider.of<SaveItemButtonBloc>(context).add(SaveItem(
      //     initialListModel: InitialListModel(
      //   noteId: DateTime.now().microsecondsSinceEpoch,
      //   noteDate: "noteDate2",
      //   noteTitle: "noteTitle2",
      //   noteDescription: "noteDescription3",
      // )));
      List<InitialListModel> initialListModelList = [];
      var hiveBox = await Hive.openBox<InitialListModel>(boxName);
      initialListModelList.addAll(hiveBox.values);
      print("AddUpdatePage ${initialListModelList}");
    });
    return const Placeholder();
  }
}

class DeleteAllPage extends StatelessWidget {
  const DeleteAllPage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<DeleteAllButtonBloc>(context).add(const DeleteAll());
    });
    return const Placeholder();
  }
}

// class GoAddOrUpdatePage extends StatelessWidget {
//   const GoAddOrUpdatePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       BlocProvider.of<AddItemButtonBloc>(context)
//           .add(const GotoAddPage(addOrEdit: AddOrEdit.addNote));
//       BlocProvider.of<EditItemButtonBloc>(context).add(const GotoEditPage(
//           addOrEdit: AddOrEdit.editNote, title: "BBB", description: "bbbbbbb"));
//     });
//     return BlocBuilder<AddItemButtonBloc, AddItemButtonState>(
//       builder: (contextAddButton, stateAddButton) {
//         return stateAddButton.addOrEdit == AddOrEdit.addNote
//             ? stateAddButton.addOrUpdateWidget ??
//                 Container(width: 20, height: 30, color: Colors.pink)
//             : BlocBuilder<EditItemButtonBloc, EditItemButtonState>(
//                 builder: (contextEditButton, stateEditButton) {
//                   return stateEditButton.editPageWidget ??
//                       Container(
//                         width: 10,
//                         height: 40,
//                         color: Colors.green,
//                       );
//                 },
//               );
//       },
//     );
//   }
// }

class InitalListView extends StatelessWidget {
  const InitalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<InitialListBloc>(context).add(const InitialList());
      BlocProvider.of<DeleteItemButtonBloc>(context)
          .add(const DeleteItem(deleteId: 6));
    });
    return BlocBuilder<DeleteItemButtonBloc, DeleteItemButtonState>(
      builder: (contextDeleteButton, stateDeleteButton) {
        return BlocBuilder<InitialListBloc, InitialListState>(
          builder: (context, state) {
            if (state.initialListModelList.isNotEmpty) {
              // initialListModelList.add(InitialListModel(
              //   noteId: state.initialListModelList[0].noteId,
              //   noteDate: state.initialListModelList[0].noteDate,
              //   noteTitle: state.initialListModelList[0].noteTitle,
              //   noteDescription: state.initialListModelList[0].noteDescription,
              // ));
              initialListModelList.clear();
              initialListModelList.addAll(state.initialListModelList);
            } else {
              print("Box Items is empty");
            }

            print(initialListModelList);
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  // Text("${state.id}"),
                  // Text(state.date),
                  // Text(state.title),
                  // Text(state.description),
                ],
              ),
            );
          },
        );
      },
    );
  }
}




// initialListModel: InitialListModel(
//           noteId: DateTime.now().microsecondsSinceEpoch,
//           noteDate: "marh 05",
//           noteTitle: "noteTitle sample",
//           noteDescription: "noteDescription sample",
//         ),