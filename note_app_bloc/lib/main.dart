import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/bloc/initial_list_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';

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
        BlocProvider(
          create: (context) => InitialListBloc(),
        ),
      ],
      child: const MaterialApp(
        home: Scaffold(
          body: SafeArea(
            child: InitalListView(),
          ),
        ),
      ),
    );
  }
}

class InitalListView extends StatelessWidget {
  const InitalListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      BlocProvider.of<InitialListBloc>(context).add( InitialList(
        initialListModel: InitialListModel(
          noteId: DateTime.now().millisecondsSinceEpoch,
          noteDate: "marh 05",
          noteTitle: "noteTitle sample",
          noteDescription: "noteDescription sample",
        ),
      ));
    });
    return BlocBuilder<InitialListBloc, InitialListState>(
      builder: (context, state) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(state.date),
              Text(state.title),
              Text(state.description),
            ],
          ),
        );
      },
    );
  }
}
