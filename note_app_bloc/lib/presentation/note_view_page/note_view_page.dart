import 'package:flutter/material.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';

/// this page shows a selected item title and description
class NoteViewPage extends StatelessWidget {
  final NoteItemModel initialListModel;
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
              /// go back onTap
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),

        /// note title
        title: Text(initialListModel.noteTitle),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),

          /// note description
          child: Text(initialListModel.noteDescription),
        ),
      )),
    );
  }
}
