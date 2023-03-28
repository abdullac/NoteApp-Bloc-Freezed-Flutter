import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_bloc/apllication/add_or_update_page/save_item_button/save_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/add_or_update_page/update_item_button/update_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/add_item_button/add_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/delete_all_button/delete_all_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/delete_item_button/delete_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/edit_item_button/edit_item_button_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_bloc/apllication/list_page/items_listview/items_listview_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/list_item_tile/list_item_tile_bloc.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'presentation/list_items_page/note_items_list_page.dart';


/// this projet used blo with freezed.
/// each functionality used seperated bloc


main() {
  /// binding initialize before call runApp
  WidgetsFlutterBinding.ensureInitialized();

  /// hive data base storage path
  var path = Directory.current.path;
  Hive.init(path);

  /// register hive data base
  if (!Hive.isAdapterRegistered(NoteItemModelAdapter().typeId)) {
    Hive.registerAdapter(NoteItemModelAdapter());
  }

  /// start/run application
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      /// we needed all blocs for this app
      providers: [
        BlocProvider(create: (context) => ItemsListviewBloc()),
        BlocProvider(create: (context) => AddItemButtonBloc()),
        BlocProvider(create: (context) => EditItemButtonBloc()),
        BlocProvider(create: (context) => DeleteItemButtonBloc()),
        BlocProvider(create: (context) => DeleteAllButtonBloc()),
        BlocProvider(create: (context) => SaveItemButtonBloc()),
        BlocProvider(create: (context) => UpdateItemButtonBloc()),
        BlocProvider(create: (context) => ListItemTileBloc()),
      ],
      child: MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: Builder(builder: (context) {
              /// calls listItemBlocBuilder for get list from hive data base
              return const ItemsListBloBuilder();
            }),
          ),
        ),
      ),
    );
  }
}

class ItemsListBloBuilder extends StatelessWidget {
  const ItemsListBloBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    /// binding data to widgets after build widgets
    WidgetsBinding.instance.addPostFrameCallback((_) {
      /// bloc provider for getAll note items list
      BlocProvider.of<ItemsListviewBloc>(context).add(
        const InitialList(),
      );
    });

    /// bloc builder after note items list bloc provider
    return BlocBuilder<ItemsListviewBloc, ItemsListviewState>(
      builder: (context, state) {
        print(state.noteItemModelList);
        return NoteItemsListPage(
            noteItemModelList: state.noteItemModelList);
      },
    );
  }
}

/// Navigate with note items List bloc proovider and Builder after save,update,etc
Future<dynamic> pushReplacementToItemsListView(BuildContext context) {
  BlocProvider.of<ItemsListviewBloc>(context).add(
    const InitialList(),
  );
  return Navigator.of(context).pushReplacement(
    MaterialPageRoute(
      builder: (context) => BlocBuilder<ItemsListviewBloc, ItemsListviewState>(
        builder: (context, state) {
          return NoteItemsListPage(
            noteItemModelList: state.noteItemModelList,
          );
        },
      ),
    ),
  );
}
