// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'initial_list_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InitialListModelAdapter extends TypeAdapter<InitialListModel> {
  @override
  final int typeId = 1;

  @override
  InitialListModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return InitialListModel(
      noteId: fields[0] as int?,
      noteDate: fields[1] as String,
      noteTitle: fields[2] as String,
      noteDescription: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, InitialListModel obj) {
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
      other is InitialListModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
