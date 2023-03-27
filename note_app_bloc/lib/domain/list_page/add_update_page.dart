import 'package:flutter/material.dart';
import 'package:note_app_bloc/domain/Models/initial_list_model.dart';
import 'package:note_app_bloc/presentation/add_edit_item_page/add_edit_item_page.dart';

Widget addOrUpdatePage(AddOrEdit addOrEdit,[InitialListModel? initialListModel]) {
  return AddEditItemPage(addOrEdit: addOrEdit,initialListModel: initialListModel);
  // return Container(
  //   width: 100,
  //   height: 100,
  //   color: Colors.green,
  //   child: Column(
  //     children: [
  //       Text(title ?? "fhfghf"),
  //       Text(description ?? "lkkl;"),
  //     ],
  //   ),
  // );
}
