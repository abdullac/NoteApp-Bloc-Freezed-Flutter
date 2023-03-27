import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_app_bloc/apllication/list_page/add_item_button/add_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/delete_all_button/delete_all_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/delete_item_button/delete_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/edit_item_button/edit_item_button_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/initial_list/initial_list_bloc.dart';
import 'package:note_app_bloc/apllication/list_page/list_item_tile/list_item_tile_bloc.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'package:note_app_bloc/presentation/add_edit_item_page/add_edit_item_page.dart';

class ListItemsPage extends StatelessWidget {
  final List<InitialListModel> initialListModelList;
  const ListItemsPage({
    Key? key,
    required this.initialListModelList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: listItemPageAppBar(context),
      body: SafeArea(
          child: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) => ListTileWidget(
            initialListModel: initialListModelList[index],
          ),
          separatorBuilder: (BuildContext context, int index) => Container(
            color: Colors.blue.withOpacity(0.2),
            width: double.infinity,
            height: 0,
          ),
          itemCount: initialListModelList.length,
        ),
      )),
    );
  }

  AppBar listItemPageAppBar(BuildContext context) {
    return AppBar(
      title: const Text("Note App NA"),
      actions: [
        ElevatedButton(
          onPressed: () {
            // delete button
            BlocProvider.of<DeleteAllButtonBloc>(context)
                .add(const DeleteAll());

            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) =>
                    BlocBuilder<DeleteAllButtonBloc, DeleteAllButtonState>(
                      builder: (context, state) {
                        BlocProvider.of<InitialListBloc>(context)
                            .add(const InitialList());
                        return BlocBuilder<InitialListBloc, InitialListState>(
                          builder: (context, state) {
                            return ListItemsPage(
                                initialListModelList:
                                    state.initialListModelList);
                          },
                        );
                      },
                    )));
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
            BlocProvider.of<AddItemButtonBloc>(context)
                .add(const GotoAddPage());
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) =>
                    BlocBuilder<AddItemButtonBloc, AddItemButtonState>(
                  builder: (context, state) {
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
  final InitialListModel initialListModel;
  const ListTileWidget({super.key, required this.initialListModel});

  @override
  Widget build(BuildContext context) {
    var formattedNoteDate = DateFormat('kk:mm\ndd  MM\nyyyy')
        .format(DateTime.parse(initialListModel.noteDate));

    return Container(
      width: double.infinity,
      height: 70,
      margin: const EdgeInsets.all(5),
      decoration: BoxDecoration(
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
      ),
      child: Center(
        child: ListTile(
          onTap: () {
            // tile ontap
            BlocProvider.of<ListItemTileBloc>(context)
                .add(GotoNoteViewPage(initialListModel: initialListModel));
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    BlocBuilder<ListItemTileBloc, ListItemTileState>(
                      builder: (context, state) {
                        return state.noteViewPageWidget ??
                            Container(
                                color: Colors.deepOrangeAccent,
                                height: 20,
                                width: 80);
                      },
                    )));
          },
          leading: SizedBox(
              width: 30,
              child: Text(
                formattedNoteDate,
                textAlign: TextAlign.center,
                maxLines: 3,
                style: const TextStyle(fontSize: 10),
              )),
          title: Text(
            initialListModel.noteTitle,
            overflow: TextOverflow.clip,
            maxLines: 1,
          ),
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
                    // edit
                    BlocProvider.of<EditItemButtonBloc>(context)
                        .add(GotoEditPage(initialListModel: initialListModel));
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (context) => BlocBuilder<EditItemButtonBloc,
                                EditItemButtonState>(
                              builder: (context, state) {
                                return state.editPageWidget ??
                                    Container(
                                        color: Colors.teal,
                                        width: 40,
                                        height: 70);
                              },
                            )));
                  },
                  child: const Icon(Icons.edit),
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    // delete ontap
                    BlocProvider.of<DeleteItemButtonBloc>(context)
                        .add(DeleteItem(deleteId: initialListModel.noteId));
                    BlocProvider.of<InitialListBloc>(context)
                        .add(const InitialList());
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
}
