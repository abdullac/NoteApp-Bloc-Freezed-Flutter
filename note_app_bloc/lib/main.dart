import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/add_item_button/add_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/delete_item_button/delete_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/initial_list/initial_list_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_bloc/apllication/list_page/update_item_button/update_item_button_bloc.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';

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
        BlocProvider(create: (context) => UpdateItemButtonBloc()),
        BlocProvider(create: (context) => DeleteItemButtonBloc()),
      ],
      child: const MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: InitalListView(),
            // child: AddOrUpdatePage(),
          ),
        ),
      ),
    );
  }
}

class AddOrUpdatePage extends StatelessWidget {
  const AddOrUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<AddItemButtonBloc>(context)
          .add(const GotoAddPage(isAdd: false));
      BlocProvider.of<UpdateItemButtonBloc>(context)
          .add(const GotoUpdatePage(title: "BBB", description: "bbbbbbb"));
    });
    return BlocBuilder<AddItemButtonBloc, AddItemButtonState>(
      builder: (contextAddButton, stateAddButton) {
        return stateAddButton.isAdd == true
            ? stateAddButton.addOrUpdateWidget ??
                Container(width: 20, height: 30, color: Colors.pink)
            : BlocBuilder<UpdateItemButtonBloc, UpdateItemButtonState>(
                builder: (contextUpdateButton, stateUpdateButton) {
                  return stateUpdateButton.updatePageWidget ??
                      Container(
                        width: 10,
                        height: 40,
                        color: Colors.green,
                      );
                },
              );
      },
    );
  }
}

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