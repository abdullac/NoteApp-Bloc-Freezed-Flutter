part of 'list_item_tile_bloc.dart';

@freezed
class ListItemTileState with _$ListItemTileState {
  const factory ListItemTileState({
    required Widget? noteViewPageWidget,
  }) = _ListItemTileState;
  factory ListItemTileState.initial(){
    return const ListItemTileState(
      noteViewPageWidget: null
    );
  }
}