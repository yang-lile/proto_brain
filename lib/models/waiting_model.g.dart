// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'waiting_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WaitingModelAdapter extends TypeAdapter<WaitingModel> {
  @override
  final int typeId = 5;

  @override
  WaitingModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WaitingModel()
      ..id = fields[0] as String
      ..title = fields[1] as String
      ..details = fields[2] as String;
  }

  @override
  void write(BinaryWriter writer, WaitingModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.details);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WaitingModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
