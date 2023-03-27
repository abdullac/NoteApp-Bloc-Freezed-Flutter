part of 'list_item_tile_bloc.dart';

@freezed
class ListItemTileEvent with _$ListItemTileEvent {
  const factory ListItemTileEvent.gotoNoteViewPage({
    required InitialListModel initialListModel,
  }) = GotoNoteViewPage;
}
