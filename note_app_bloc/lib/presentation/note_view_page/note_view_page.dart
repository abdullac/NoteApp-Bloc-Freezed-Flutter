import 'package:flutter/material.dart';

class NoteViewPage extends StatelessWidget {
  final String noteTitle;
  final String noteDescription;
  const NoteViewPage({
    Key? key,
    required this.noteTitle,
    required this.noteDescription,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              //
            },
            icon: const Icon(Icons.arrow_back)),
        title: Text(noteTitle),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(noteDescription),
        ),
      )),
    );
  }
}
