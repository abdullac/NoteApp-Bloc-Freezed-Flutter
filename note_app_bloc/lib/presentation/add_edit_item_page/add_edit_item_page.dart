import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_bloc/apllication/add_or_update_page/save_item_button/save_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/add_or_update_page/update_item_button/update_item_button_bloc.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'package:note_app_bloc/main.dart';
import 'package:note_app_bloc/presentation/list_items_page/note_items_list_page.dart';

enum AddOrEdit {
  addNote,
  editNote,
}

class AddEditItemPage extends StatelessWidget {
  final AddOrEdit addOrEdit;
  final NoteItemModel? noteItemModel;
  const AddEditItemPage({
    Key? key,
    required this.addOrEdit,
    this.noteItemModel,
  }) : super(key: key);

  /// controllers for title and description edit fields
  static final TextEditingController titleEditingController =
      TextEditingController();
  static final TextEditingController descriptionEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    /// set values after build widgets
    WidgetsBinding.instance.addPostFrameCallback((_) {
      /// if you need update note ,then set that note title and description to editing controllers
      /// or ,if you add new note set editing controller to ""
      titleEditingController.text = noteItemModel?.noteTitle ?? "";
      descriptionEditingController.text =
          noteItemModel?.noteDescription ?? "";
    });
    return Scaffold(
      /// appBar
      appBar: addEditPageAppBar(context, noteItemModel),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                /// title editing field
                TextField(
                  controller: titleEditingController,
                  maxLines: 1,
                  decoration: const InputDecoration(
                    hintText: "title",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

                /// description editing field
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

  AppBar addEditPageAppBar(
      BuildContext context, NoteItemModel? noteItemModel) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          //  go back button
          pushReplacementToItemsListView(context);
        },
        icon: const Icon(Icons.arrow_back),
      ),
      title: Text(addOrEdit == AddOrEdit.addNote ? "Add Note" : "Edit Note"),
      actions: [
        ElevatedButton(
          onPressed: () {
            // save or update button

            saveOrUpdateButtonOnPressed(context, noteItemModel);
          },
          child: Text(
            addOrEdit == AddOrEdit.addNote ? "Save" : "Update",
          ),
        )
      ],
    );
  }

  void saveOrUpdateButtonOnPressed(
      BuildContext context, NoteItemModel? noteItemModel) {
    /// check add or edit
    addOrEdit == AddOrEdit.addNote

        /// if save item
        ? saveItem(context)
        : noteItemModel != null

            /// if update item
            ? updateItem(context, noteItemModel)
            : const ScaffoldMessenger(
                child: SnackBar(content: Text("can't update your note")));
  }

  void saveItem(BuildContext context) {
    /// if isNot empty editing controlls
    if (titleEditingController.text.isNotEmpty &&
        descriptionEditingController.text.isNotEmpty) {
      /// calls bloc for save item and assign values for save
      BlocProvider.of<SaveItemButtonBloc>(context).add(
        SaveItem(
          noteItemModel: NoteItemModel(
            noteId: setNoteId,
            noteDate: DateTime.now().toString(),
            noteTitle: titleEditingController.text,
            noteDescription: descriptionEditingController.text,
          ),
        ),
      );

      /// navigate to note items listview
      pushReplacementToItemsListView(context);
    } else {
      /// if not filled field , then shows this message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("please fill Title or Description"),
        ),
      );
    }
  }

  updateItem(BuildContext context, NoteItemModel noteItemModel) {
    /// if isNot empty editing controlls
    if (titleEditingController.text.isNotEmpty &&
        descriptionEditingController.text.isNotEmpty) {
      /// calls bloc for save item and assign values for update
      BlocProvider.of<UpdateItemButtonBloc>(context).add(UpdateItem(
          noteItemModel: NoteItemModel(
        noteId: noteItemModel.noteId,
        noteDate: noteItemModel.noteDate,
        noteTitle: AddEditItemPage.titleEditingController.text,
        noteDescription: AddEditItemPage.descriptionEditingController.text,
      )));

      /// navigate to note items listview
      pushReplacementToItemsListView(context);
    } else {
      /// if not filled field , then shows this message
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("please fill Title or Description"),
        ),
      );
    }
  }
}
