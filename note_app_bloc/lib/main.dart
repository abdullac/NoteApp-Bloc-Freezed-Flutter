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
import 'package:note_app_bloc/apllication/list_page/list_item_tile/list_item_tile_bloc.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'presentation/list_items_page/list_items_page.dart';

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
        BlocProvider(create: (context) => ListItemTileBloc()),
      ],
      child: const MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: MainPageWidget(),
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
      BlocProvider.of<InitialListBloc>(context).add(
        const InitialList(),
      );
    });
    return BlocBuilder<InitialListBloc, InitialListState>(
      builder: (context, state) {
        print(state.initialListModelList);
        return ListItemsPage(initialListModelList: state.initialListModelList);
      },
    );
  }
}
