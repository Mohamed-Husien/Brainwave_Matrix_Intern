// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'to_do_item_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ToDoItemModelAdapter extends TypeAdapter<ToDoItemModel> {
  @override
  final int typeId = 0;

  @override
  ToDoItemModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ToDoItemModel(
      content: fields[0] as String,
      currentDate: fields[1] as String,
      checkBoxValue: fields[2] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, ToDoItemModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.content)
      ..writeByte(1)
      ..write(obj.currentDate)
      ..writeByte(2)
      ..write(obj.checkBoxValue);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ToDoItemModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
