import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
part 'initial_list_model.g.dart';
part 'initial_list_model.freezed.dart';

@freezed
@HiveType(typeId: 1)
class NoteItemModel with _$NoteItemModel{
  const factory NoteItemModel({
    @HiveField(0)
    required int noteId,
    @HiveField(1)
    required String noteDate,
    @HiveField(2)
    required String noteTitle,
    @HiveField(3)
    required String noteDescription,
  }) = _NoteItemModel;
} 