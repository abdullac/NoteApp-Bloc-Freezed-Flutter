import 'package:flutter/material.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';

class ListItemsPage extends StatelessWidget {
  final List<InitialListModel> initialListModelList;
  const ListItemsPage({
    Key? key, required this.initialListModelList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: listItemPageAppBar(),
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

  AppBar listItemPageAppBar() {
    return AppBar(
      title: const Text("Note App NA"),
      actions: [
        ElevatedButton(
          onPressed: () {
            //
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
            //
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
  const ListTileWidget({super.key, 
  required this.initialListModel});

  @override
  Widget build(BuildContext context) {
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
          },
          leading: SizedBox(
              width: 30,
              child: Text(
                initialListModel.noteDate,
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
                    // edit ontap
                  },
                  child: const Icon(Icons.edit),
                ),
                const SizedBox(
                  width: 5,
                ),
                InkWell(
                  onTap: () {
                    // delete ontap
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
