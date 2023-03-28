// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initial_list_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NoteItemModelAdapter extends TypeAdapter<NoteItemModel> {
  @override
  final int typeId = 1;

  @override
  NoteItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NoteItemModel(
      noteId: fields[0] as int,
      noteDate: fields[1] as String,
      noteTitle: fields[2] as String,
      noteDescription: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, NoteItemModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.noteId)
      ..writeByte(1)
      ..write(obj.noteDate)
      ..writeByte(2)
      ..write(obj.noteTitle)
      ..writeByte(3)
      ..write(obj.noteDescription);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoteItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
