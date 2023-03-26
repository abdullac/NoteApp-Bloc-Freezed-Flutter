import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'initial_list_model.g.dart';
part 'initial_list_model.freezed.dart';

@freezed
@HiveType(typeId: 1)
class InitialListModel with _$InitialListModel{
  const factory InitialListModel({
    @HiveField(0)
    required int noteId,
    @HiveField(1)
    required String noteDate,
    @HiveField(2)
    required String noteTitle,
    @HiveField(3)
    required String noteDescription,
  }) = _InitialListModel;
} 

// @HiveType(typeId: 1)
// class InitialListModel extends HiveObject {
//   @HiveField(0)
//   final String noteDate;
//   @HiveField(1)
//   final String noteTitle;
//   @HiveField(2)
//   final String noteDescription;

//   InitialListModel({
//     required this.noteDate,
//     required this.noteTitle,
//     required this.noteDescription,
//   });
// }
