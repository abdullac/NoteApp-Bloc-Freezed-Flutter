import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app_bloc/apllication/list_page/add_item_button/add_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/delete_all_button/delete_all_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/delete_item_button/delete_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/edit_item_button/edit_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/items_listview/items_listview_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/list_item_tile/list_item_tile_bloc.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';

/// this variable declared for set note id,also use for hive key
late int setNoteId;

class NoteItemsListPage extends StatelessWidget {
  final List<NoteItemModel> noteItemModelList;
  const NoteItemsListPage({
    Key? key,
    required this.noteItemModelList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// if list is empty/first time opening,set note id to 0
    /// if list is not empty ,then set note id to last item note id +1
    if (noteItemModelList.isNotEmpty) {
      setNoteId = (noteItemModelList.last.noteId + 1);
    } else {
      setNoteId = 0;
    }

    return Scaffold(
      /// appBar
      appBar: listItemPageAppBar(context),
      body: SafeArea(
        child: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,

          /// note itams listview
          child: ListView.builder(
            /// list item Tile
            itemBuilder: (BuildContext context, int index) => ListTileWidget(
              initialListModel: noteItemModelList[index],
            ),
            /// listview item count
            itemCount: noteItemModelList.length,
          ),
        ),
      ),
    );
  }

  AppBar listItemPageAppBar(BuildContext context) {
    return AppBar(
      /// appBar title
      title: const Text("Note App NA"),
      actions: [
        ElevatedButton(
          onPressed: () {
            /// deleteAll button.
            //// calls bloc provider for deleteAll
            BlocProvider.of<DeleteAllButtonBloc>(context)
                .add(const DeleteAll());
            /// navigate to NoteItemListPage after delete
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) =>
                    /// alls bloc builder for identify deletedAll
                    BlocBuilder<DeleteAllButtonBloc, DeleteAllButtonState>(
                  builder: (context, state) {
                    /// calls bloc provider for get not items from hive data base
                    BlocProvider.of<ItemsListviewBloc>(context)
                        .add(const InitialList());
                    /// calls bloc Builder for NoteItemsListPage
                    return BlocBuilder<ItemsListviewBloc, ItemsListviewState>(
                      builder: (context, state) {
                        return NoteItemsListPage(
                            noteItemModelList: state.noteItemModelList);
                      },
                    );
                  },
                ),
              ),
            );
          },
          child: const Text(
            "Delete All",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            /// add button
            //// provider calls for goto Add item page 
            BlocProvider.of<AddItemButtonBloc>(context)
                .add(const GotoAddPage());
                /// Navigate with builder to addOrUpdate page
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) =>
                    BlocBuilder<AddItemButtonBloc, AddItemButtonState>(
                  builder: (context, state) {
                    /// addOrUpdate page from bloc-state
                    return state.addOrUpdateWidget ??
                        Container(color: Colors.orange, height: 50, width: 50);
                  },
                ),
              ),
            );
          },
          child: const Text(
            "Add",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class ListTileWidget extends StatelessWidget {
  final NoteItemModel initialListModel;
  const ListTileWidget({super.key, required this.initialListModel});

  @override
  Widget build(BuildContext context) {
    /// formate date for set note date
    var formattedNoteDate = DateFormat('kk:mm\ndd  MM\nyyyy')
        .format(DateTime.parse(initialListModel.noteDate));

    
    return Container(
      width: double.infinity,
      height: 70,
      margin: const EdgeInsets.all(5),
      decoration: shadowANdDecorationNoteItemsListTile,
      child: Center(
        child: ListTile(
          onTap: () {
            // tile ontap
            noteItemsListTileOnTap(context);
          },
          /// note Date Widget
          leading: SizedBox(
              width: 30,
              child: Text(
                formattedNoteDate,
                textAlign: TextAlign.center,
                maxLines: 3,
                style: const TextStyle(fontSize: 10),
              )),
          /// note title widget
          title: Text(
            initialListModel.noteTitle,
            overflow: TextOverflow.clip,
            maxLines: 1,
          ),
          /// note description widget
          subtitle: Text(
            initialListModel.noteDescription,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          trailing: SizedBox(
            height: 60,
            // width: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: [
                InkWell(
                  onTap: () {
                    /// edit
                    notelistItemTileEditIonOnTap(context);
                  },
                  child: const Icon(Icons.edit),
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    // delete ontap
                    notelistItemTileDeletaIonOnTap(context);
                  },
                  child: const Icon(Icons.delete),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void notelistItemTileDeletaIonOnTap(BuildContext context) {
    BlocProvider.of<DeleteItemButtonBloc>(context)
        .add(DeleteItem(deleteId: initialListModel.noteId));
    BlocProvider.of<ItemsListviewBloc>(context)
        .add(const InitialList());
  }

  void notelistItemTileEditIonOnTap(BuildContext context) {
      BlocProvider.of<EditItemButtonBloc>(context)
        .add(GotoEditPage(initialListModel: initialListModel));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => BlocBuilder<EditItemButtonBloc,
            EditItemButtonState>(
          builder: (context, state) {
            return state.editPageWidget ??
                Container(
                    color: Colors.teal, width: 40, height: 70);
          },
        ),
      ),
    );
  }

  void noteItemsListTileOnTap(BuildContext context) {
     BlocProvider.of<ListItemTileBloc>(context)
        .add(GotoNoteViewPage(initialListModel: initialListModel));
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) =>
            BlocBuilder<ListItemTileBloc, ListItemTileState>(
          builder: (context, state) {
            return state.noteViewPageWidget ??
                Container(
                    color: Colors.deepOrangeAccent,
                    height: 20,
                    width: 80);
          },
        ),
      ),
    );
  }
}

var shadowANdDecorationNoteItemsListTile = BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.blue[200],
        boxShadow: const [
          BoxShadow(
            color: Colors.black38,
            offset: Offset(0, 2),
            spreadRadius: 1,
            blurRadius: 2,
          )
        ],
      );