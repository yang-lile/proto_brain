// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projuct_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProjuctModelAdapter extends TypeAdapter<ProjuctModel> {
  @override
  final int typeId = 4;

  @override
  ProjuctModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ProjuctModel()
      ..id = fields[0] as String
      ..title = fields[1] as String
      ..details = fields[2] as String
      ..subTasks = (fields[3] as List).cast<int>();
  }

  @override
  void write(BinaryWriter writer, ProjuctModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.details)
      ..writeByte(3)
      ..write(obj.subTasks);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProjuctModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
