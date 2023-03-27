import 'package:flutter/material.dart';

enum AddOrEdit {
  addNote,
  editNote,
}

class AddEditItemPage extends StatelessWidget {
  final AddOrEdit addOrEdit;
  final String? noteId;
  final String? noteTitle;
  final String? noteDescription;
  final String? noteDate;
  AddEditItemPage({
    Key? key,
    required this.addOrEdit,
    this.noteId,
    this.noteTitle,
    this.noteDescription,
    this.noteDate,
  }) : super(key: key);

  final TextEditingController titleEditingController = TextEditingController();
  final TextEditingController descriptionEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      titleEditingController.text = noteTitle ?? "";
      descriptionEditingController.text = noteDescription ?? "";
    });
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              //  go back button
            },
            icon: const Icon(Icons.arrow_back)),
        title: Text(addOrEdit == AddOrEdit.addNote ? "Add Note" : "Edit Note"),
        actions: [
          ElevatedButton(
            onPressed: () {
              // save or update button
            },
            child: Text(
              addOrEdit == AddOrEdit.addNote ? "Save" : "Update",
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  controller: titleEditingController,
                  maxLines: 1,
                  decoration: const InputDecoration(
                      hintText: "title", border: OutlineInputBorder()),
                ),
                const SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: descriptionEditingController,
                  maxLines: 10,
                  decoration: const InputDecoration(
                    hintText: "Description",
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
