import 'package:flutter/material.dart';
import 'package:note_app_bloc/presentation/note_view_page/note_view_page.dart';

Widget noteViewPage(initialListModel) {
  /// calls note view page for shows selected note
  return NoteViewPage(
    /// pass a InitialListModel data to NoteViewPage
    initialListModel: initialListModel,
  );
}
