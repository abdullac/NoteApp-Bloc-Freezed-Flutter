import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';

class NoteViewPage extends StatelessWidget {
  final InitialListModel initialListModel;
  const NoteViewPage({
    Key? key,
    required this.initialListModel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              //
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
        title: Text(initialListModel.noteTitle),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(initialListModel.noteDescription),
        ),
      )),
    );
  }
}
