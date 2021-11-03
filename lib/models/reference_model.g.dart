// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reference_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ReferenceModelAdapter extends TypeAdapter<ReferenceModel> {
  @override
  final int typeId = 3;

  @override
  ReferenceModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ReferenceModel()
      ..id = fields[0] as String
      ..title = fields[1] as String
      ..address = fields[2] as String?;
  }

  @override
  void write(BinaryWriter writer, ReferenceModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.address);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ReferenceModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
