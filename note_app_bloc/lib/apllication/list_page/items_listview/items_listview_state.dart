part of 'items_listview_bloc.dart';

@freezed
class ItemsListviewState with _$ItemsListviewState {
  const factory ItemsListviewState({
    required List<NoteItemModel> noteItemModelList,
  }) = _ItemsListviewState;

  factory ItemsListviewState.initial() {
    return const ItemsListviewState(
      noteItemModelList: [],
    );
  }
}





// @freezed
// class InitialListState with _$InitialListState {
//   const factory InitialListState({
//     required int id,
//     required String date,
//     required String title,
//     required String description,
//   }) = _InitialListState;

//   factory InitialListState.initial() {
//     return const InitialListState(
//       id: -1,
//       date: "",
//       title: "",
//       description: "",
//     );
//   }
// }
