import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_bloc/apllication/add_or_update_page/save_item_button/save_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/add_or_update_page/update_item_button/update_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/initial_list/initial_list_bloc.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'package:note_app_bloc/presentation/list_items_page/list_items_page.dart';

enum AddOrEdit {
  addNote,
  editNote,
}

class AddEditItemPage extends StatelessWidget {
  final AddOrEdit addOrEdit;
  final InitialListModel? initialListModel;
  const AddEditItemPage({
    Key? key,
    required this.addOrEdit,
    this.initialListModel,
  }) : super(key: key);

  static final TextEditingController titleEditingController =
      TextEditingController();
  static final TextEditingController descriptionEditingController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      titleEditingController.text = initialListModel?.noteTitle ?? "";
      descriptionEditingController.text =
          initialListModel?.noteDescription ?? "";
    });
    return Scaffold(
      appBar: addEditPageAppBar(context, initialListModel),
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
                    hintText: "title",
                    border: OutlineInputBorder(),
                  ),
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

  AppBar addEditPageAppBar(
      BuildContext context, InitialListModel? initialListModel) {
    return AppBar(
      leading: IconButton(
        onPressed: () {
          //  go back button
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (context) =>
                  BlocBuilder<InitialListBloc, InitialListState>(
                builder: (context, state) {
                  return ListItemsPage(
                      initialListModelList: state.initialListModelList);
                },
              ),
            ),
          );
        },
        icon: const Icon(Icons.arrow_back),
      ),
      title: Text(addOrEdit == AddOrEdit.addNote ? "Add Note" : "Edit Note"),
      actions: [
        ElevatedButton(
          onPressed: () {
            // save or update button

            addOrEdit == AddOrEdit.addNote
                ? saveItem(context)
                : initialListModel != null
                    ? updateItem(context, initialListModel)
                    : const ScaffoldMessenger(
                        child:
                            SnackBar(content: Text("can't update your note")));
          },
          child: Text(
            addOrEdit == AddOrEdit.addNote ? "Save" : "Update",
          ),
        )
      ],
    );
  }

  void saveItem(BuildContext context) {
    if (titleEditingController.text.isNotEmpty &&
        descriptionEditingController.text.isNotEmpty) {
      BlocProvider.of<SaveItemButtonBloc>(context).add(
        SaveItem(
          initialListModel: InitialListModel(
            // noteId: DateTime.now().millisecond * DateTime.now().second,
            noteId: setNoteId,
            noteDate: DateTime.now().toString(),
            noteTitle: titleEditingController.text,
            noteDescription: descriptionEditingController.text,
          ),
        ),
      );

      /// reload initial list model list
      BlocProvider.of<InitialListBloc>(context).add(
        const InitialList(),
      );
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => BlocBuilder<InitialListBloc, InitialListState>(
            builder: (context, state) {
              return ListItemsPage(
                initialListModelList: state.initialListModelList,
              );
            },
          ),
        ),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("please fill Title or Description"),
        ),
      );
    }
  }

  updateItem(BuildContext context, InitialListModel initialListModel) {
    if (titleEditingController.text.isNotEmpty &&
        descriptionEditingController.text.isNotEmpty) {
      BlocProvider.of<UpdateItemButtonBloc>(context).add(UpdateItem(
          initialListModel: InitialListModel(
        noteId: initialListModel.noteId,
        noteDate: initialListModel.noteDate,
        noteTitle: AddEditItemPage.titleEditingController.text,
        noteDescription: AddEditItemPage.descriptionEditingController.text,
      )));
      BlocProvider.of<InitialListBloc>(context).add(
        const InitialList(),
      );
      Navigator.of(context).pushReplacement(MaterialPageRoute(
          builder: (context) => BlocBuilder<InitialListBloc, InitialListState>(
                builder: (context, state) {
                  return ListItemsPage(
                      initialListModelList: state.initialListModelList);
                },
              )));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text("please fill Title or Description"),
        ),
      );
    }
  }
}
