import 'package:flutter/material.dart';

class ListItemsPage extends StatelessWidget {
  const ListItemsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AAAAAA"),
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
      ),
      body: SafeArea(
          child: Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: ListView.separated(
          itemBuilder: (BuildContext context, int index) =>
              const ListTileWidget(),
          separatorBuilder: (BuildContext context, int index) => Container(
            color: Colors.blue.withOpacity(0.2),
            width: double.infinity,
            height: 0,
          ),
          itemCount: 10,
        ),
      )),
    );
  }
}

class ListTileWidget extends StatelessWidget {
  const ListTileWidget({super.key});

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
          onTap: (){
            // tile ontap
          },
          title: const Text(
            "DummyTitle ytyty tytyty tyty tytry",
            overflow: TextOverflow.clip,
            maxLines: 1,
          ),
          subtitle: const Text(
            "Dummy Desript ionhhf hhhh hhhhhhfhhhfhhhhhh",
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
          trailing: Container(
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
