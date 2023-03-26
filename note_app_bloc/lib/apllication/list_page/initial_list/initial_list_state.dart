part of 'initial_list_bloc.dart';

@freezed
class InitialListState with _$InitialListState {
  const factory InitialListState({
    required List<InitialListModel> initialListModelList,
  }) = _InitialListState;

  factory InitialListState.initial() {
    return const InitialListState(
      initialListModelList: [],
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
