// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'maybe_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MaybeModelAdapter extends TypeAdapter<MaybeModel> {
  @override
  final int typeId = 2;

  @override
  MaybeModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return MaybeModel()
      ..id = fields[0] as String
      ..title = fields[1] as String;
  }

  @override
  void write(BinaryWriter writer, MaybeModel obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MaybeModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
